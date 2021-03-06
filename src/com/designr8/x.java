package com.designr8;


import net.sf.saxon.value.StringValue;
//import net.sf.saxon.lib.FeatureKeys;
//import net.sf.saxon.lib.Validation;
import net.sf.saxon.trans.XPathException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;


public class x extends HttpServlet {

    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TransformerFactory factory;

    @Override
	public void init() throws ServletException {
        super.init();
        System.setProperty("javax.xml.transform.TransformerFactory",
                           "net.sf.saxon.TransformerFactoryImpl");
        factory = TransformerFactory.newInstance();
     //   factory.setAttribute(FeatureKeys.SCHEMA_VALIDATION, new Integer(Validation.STRICT));
    }

    /**
    * service() - accept request and produce response<BR>
    * URL parameters: <UL>
    * <li>source - URL of source document</li>
    * <li>style - URL of stylesheet</li>
    * <li>clear-stylesheet-cache - if set to yes, empties the cache before running.
    * </UL>
    * @param req The HTTP request
    * @param res The HTTP response
    */

    @Override
	public void service(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
    {
        
        String title = req.getParameter("title");
        String xsl = "/" + req.getParameter("xsl") + ".xsl";    
        String xml = "/" + req.getParameter("xml") + ".xml";
        
        if (xsl.compareTo("/null.xsl") == 0 ) {
        	xsl = "/bloglist.xsl";
        	xml = "/atom.xml";
        }
        
        String clear = req.getParameter("clear-stylesheet-cache");

        if (clear!=null && clear.equals("yes")) {
            clearCache();
        }
       
        apply(title,xsl,xml,req, res);

    }

    /**
    * getServletInfo<BR>
    * Required by Servlet interface
    */

    @Override
	public String getServletInfo() {
        return "Calls Saxon to apply a schema-aware stylesheet to a source document";
    }

    /**
    * Apply stylesheet to source document
    */

    private void apply(String title, String style, String source,
                           HttpServletRequest req, HttpServletResponse res)
                           throws IOException {

        ServletOutputStream out = res.getOutputStream();

     //   if (title==null) {
      //  	out.println("No article title supplied");
    //    	return;
    //    }
        try {
            Templates pss = tryCache(style);
            Transformer transformer = pss.newTransformer();

            String mime = pss.getOutputProperties().getProperty(OutputKeys.MEDIA_TYPE);
            if (mime==null) {
               // guess
                res.setContentType("text/html");
            } else {
                res.setContentType(mime);
            }

            Enumeration p = req.getParameterNames();
            while (p.hasMoreElements()) {
                String name = (String)p.nextElement();
                if (!(name.equals("style") || name.equals("source"))) {
                    String value = req.getParameter(name);
                    transformer.setParameter(name, new StringValue(value));
                }
            }

            String path = getServletContext().getRealPath(source);
            if (path==null) {
                throw new XPathException("Source file " + source + " not found");
            }
          
            File sourceFile = new File(path);
            transformer.transform(new StreamSource(sourceFile), new StreamResult(out));
        } catch (Exception err) {
            out.println(err.getMessage());
            err.printStackTrace();
        }

    }

    /**
    * Maintain prepared stylesheets in memory for reuse
    */

    private synchronized Templates tryCache(String url) throws TransformerException {
        String path = getServletContext().getRealPath(url);
        if (path==null) {
            throw new XPathException("Stylesheet " + url + " not found");
        }

        Templates x = (Templates)cache.get(path);
        if (x==null) {
            x = factory.newTemplates(new StreamSource(new File(path)));
            cache.put(path, x);
        }
        return x;
    }

    /**
    * Clear the cache. Useful if stylesheets have been modified, or simply if space is
    * running low. We let the garbage collector do the work.
    */

    private synchronized void clearCache() {
        cache = new HashMap(20);
    }

    private HashMap cache = new HashMap(20);
}
