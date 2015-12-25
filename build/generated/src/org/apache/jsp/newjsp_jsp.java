package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("var i = 0;\n");
      out.write("var timer;\n");
      out.write("var path = new Array();\n");
      out.write("\n");
      out.write("// LIST OF SLIDES\n");
      out.write("path[0] = \"Images/download.jpg\";\n");
      out.write("path[1] = \"Images/gfg.jpg\";\n");
      out.write("path[2] = \"Images/hmm.jpg\";\n");
      out.write("path[3] = \"Images/kay.jpg\";\n");
      out.write("\n");
      out.write("function swapImage()\n");
      out.write("{\n");
      out.write("   document.getElementById(\"slide\").src=path[i];\n");
      out.write("   if(i < path.length - 1) i++; else i = 0;\n");
      out.write("   timer = setTimeout(\"swapImage()\",10000);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function stopShow()\n");
      out.write("{\n");
      out.write("  clearTimeout(timer);\n");
      out.write("}\n");
      out.write("\n");
      out.write("function runShow()\n");
      out.write("{\n");
      out.write("  swapImage();  \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"runShow();\">\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <img id=\"slide\" onMouseover=\"stopShow()\" onMouseout=\"runShow()\" alt=\"image not found\" src=\"Images/cloud.jpg\" />\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
