package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class TomcatFileUpload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>File Upload</title>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    ");

         String pss=null;
         String css=null;
         try
            {
                pss=request.getParameter("cp");
                css=request.getParameter("current"); 
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        
        
      out.write("\n");
      out.write("       function uload()\n");
      out.write("            {\n");
      out.write("               String pathj= document.getElementById(\"p1\").value;\n");
      out.write("               String cj= document.getElementById(\"p2\").value;\n");
      out.write("                var xmlhttp;\n");
      out.write("                if(window.XMLHttpRequest)\n");
      out.write("                {\n");
      out.write("                    xmlhttp = new XMLHttpRequest();\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    xmlhttp = new ActiveXObject(\"Microsoft.xmlhttp\");\n");
      out.write("                }\n");
      out.write("               \n");
      out.write("                xmlhttp.open(\"POST\",\"UploadServlet.java?cp=\"+pathj+\"&current\"+cj, true);\n");
      out.write("                \n");
      out.write("                xmlhttp.send();\n");
      out.write("               \n");
      out.write("                xmlhttp.onreadystatechange = function()\n");
      out.write("                {\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)\n");
      out.write("                    {\n");
      out.write("                        \n");
      out.write("                        document.getElementById(\"rs1\").innerHTML = xmlhttp.responseText;\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("               \n");
      out.write("            } \n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<center>\n");
      out.write("    <h1>File Upload</h1>\n");
      out.write("    <form method=\"post\" action=\"UploadServlet\"\n");
      out.write("        enctype=\"multipart/form-data\">\n");
      out.write("        <label>Select file to upload:</label> \n");
      out.write("        <input type=\"file\" name=\"file\" size=\"60\" /><br />\n");
      out.write("        <br /> <input type=\"button\" value=\"Upload\" onclick=\"uload();\"/>\n");
      out.write("        <input type=\"text\" name=\"path\" id=\"p1\" value=\"");
      out.print(pss);
      out.write("\"/>\n");
      out.write("        <input type=\"text\" name=\"name\" id=\"p2\"  value=\"");
      out.print(css);
      out.write("\"/>\n");
      out.write("    </form>\n");
      out.write("</center>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
