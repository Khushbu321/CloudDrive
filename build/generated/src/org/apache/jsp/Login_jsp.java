package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String sms;
        
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            label{\n");
      out.write("                text-height: 30px;\n");
      out.write("                color: skyblue;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-size: xx-large;\n");
      out.write("            }\n");
      out.write("            .btns{\n");
      out.write("                background-color: skyblue;\n");
      out.write("                height: 40px;\n");
      out.write("                width: 100px;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                color: skyblue;\n");
      out.write("                font-style:oblique ;\n");
      out.write("                text-shadow: initial;\n");
      out.write("                font-stretch: extra-expanded;\n");
      out.write("                font-size: xx-large;\n");
      out.write("            }\n");
      out.write("            .t\n");
      out.write("            {\n");
      out.write("              width: 200px;\n");
      out.write("              height: 30px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("        <form name=\"forml\">\n");
      out.write("        <center><h1>On Cloud File Storage And Management </h1></center>\n");
      out.write("        <div style=\"display: inline-block ; height: 600px; width:1000px;\">\n");
      out.write("        <img src=\"Images/cloud.jpg\" alt=\"Image Unavailable\" height=\"600\" width=\"1000\"/>\n");
      out.write("        </div>\n");
      out.write("         <div style=\"display: inline-block ; height: 600px; width: 329px ;\">\n");
      out.write("        <table cellspacing='5px' cellpadding='5px'>\n");
      out.write("            <caption><h1 style=\"font-size: 55px; color: skyblue;font-style: italic; text-shadow:inherit; \">LOGIN</h1></caption>\n");
      out.write("            <tr>\n");
      out.write("                        <td id=\"msgBox\">\n");
      out.write("                                 ");

                                sms = request.getParameter("Message");
                                if(sms != null)
                                {
                                     out.println(request.getParameter("Message"));                                  
                                }
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <label>User Email ID :-</label>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"email\"  id=\"txtun\" class=\"t\" name=\"txtun\" placeholder=\"Enter User Id\" required/>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("                <td>\n");
      out.write("                    <label>User Password :-</label>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"password\" id=\"txtup\"  class=\"t\"  name=\"txtup\" placeholder=\"Enter User Password\" required/>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr style=\"text-align: center;\">\n");
      out.write("            <td>\n");
      out.write("                <input type=\"submit\" class=\"btns\" id=\"btnlog\" name=\"btnlog\" value=\"Login\" onclick=\"logSelect(this.value)\"/>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr style=\"text-align: center;\">\n");
      out.write("            <td>\n");
      out.write("                <input type=\"reset\" class=\"btns\" id=\"btnres\" name=\"btnres\" value=\"Reset\" onclick=\"msgBox.innerHTML=''\"/>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("         <tr style=\"text-align: center;\">\n");
      out.write("            <td>\n");
      out.write("                <input type=\"submit\" class=\"btns\" id=\"btnsign\" name=\"btnsign\" value=\"Sign Up\" onclick=\"logSelect(this.value)\"/>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        function logSelect(cur)\n");
      out.write("        {\n");
      out.write("                if(cur === \"Login\")\n");
      out.write("                {\n");
      out.write("                 document.forms[\"forml\"].action = \"LoginProcess.jsp\";\n");
      out.write("                 document.forms[\"forml\"].submit();\n");
      out.write("                }\n");
      out.write("                else if(cur === \"Sign Up\")\n");
      out.write("                {\n");
      out.write("                 document.forms[\"forml\"].action = \"SignUp.jsp\";\n");
      out.write("                 document.forms[\"forml\"].submit();\n");
      out.write("                }\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    .\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </form>\n");
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
