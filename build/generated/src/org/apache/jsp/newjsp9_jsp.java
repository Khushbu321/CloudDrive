package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp9_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\n");
      out.write("body\n");
      out.write("{\n");
      out.write("background-repeat: no-repeat;\n");
      out.write("background-position: 200 100;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("        \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("var speed = 5000;\n");
      out.write("\n");
      out.write("\n");
      out.write("var Pic = new Array(); \n");
      out.write("\n");
      out.write("\n");
      out.write("Pic[0] = 'cloud.jpg';\n");
      out.write("Pic[1] = 'download.jpg';\n");
      out.write("Pic[2] = 'hmm.jpg';\n");
      out.write("Pic[3] = 'hm.jpg';\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("var t;\n");
      out.write("var j = 0;\n");
      out.write("var p = Pic.length;\n");
      out.write("\n");
      out.write("var preLoad = new Array();\n");
      out.write("for (i = 0; i < p; i++)\n");
      out.write("{\n");
      out.write("   preLoad[i] = new Image();\n");
      out.write("   preLoad[i].src = Pic[i];\n");
      out.write("}\n");
      out.write("\n");
      out.write("function runBGSlideShow()\n");
      out.write("{\n");
      out.write("   if (document.body)\n");
      out.write("   {\n");
      out.write("   document.body.background = Pic[j];\n");
      out.write("   j = j + 1;\n");
      out.write("   if (j > (p-1)) j=0;\n");
      out.write("   t = setTimeout('runBGSlideShow()', speed);\n");
      out.write("   }\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body onload=\"runBGSlideShow();\">\n");
      out.write("<p><center>\n");
      out.write("<font face=\"arial, helvetica\" size=\"2\">Free JavaScripts provided<br>\n");
      out.write("by <a href=\"http://javascriptsource.com\">The JavaScript Source</a></font>\n");
      out.write("</center><p>\n");
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
