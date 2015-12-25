package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                String message1;
            

        Connection con = null;
        ResultSet rs=null;
        Statement st= null;
        String query=null;
        String msg = null;
        String message = null;
                
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("            <style type=\"text/css\">\n");
      out.write("           h1\n");
      out.write("            {\n");
      out.write("                text-align: center;\n");
      out.write("                color: darkcyan; \n");
      out.write("                font-size: 60px ;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-weight: bolder ; font-family: monotype corsiva ;\n");
      out.write("           \n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            label\n");
      out.write("            {\n");
      out.write("                width: 350px;\n");
      out.write("                \n");
      out.write("                vertical-align: middle;\n");
      out.write("                text-align: center;\n");
      out.write("                color: darkcyan; font-size: 20px ;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-weight: bolder ;\n");
      out.write("                \n");
      out.write("                   \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #un , #em , #ep , #ep2 ,#rd, #dt , select\n");
      out.write("            {\n");
      out.write("                width: 400px;\n");
      out.write("                text-align: center;\n");
      out.write("                color: darkcyan; font-size: 20px ;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-weight: bolder ; font-family: monotype corsiva ;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("           #btnsub , #btnreset , #btnchk \n");
      out.write("            {\n");
      out.write("                 background-color: skyblue;\n");
      out.write("                 width: 200px;\n");
      out.write("                 text-align: center;\n");
      out.write("                 color: white; font-size: 28px ;\n");
      out.write("                 font-style: italic;\n");
      out.write("                 font-weight: bolder ; \n");
      out.write("            }\n");
      out.write("            #tdradio\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                color: darkcyan; font-size: 20px ;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-weight: bolder ; \n");
      out.write("            }\n");
      out.write("            span\n");
      out.write("            {\n");
      out.write("                color: darkcyan; font-size: 20px ;\n");
      out.write("                font-style: italic;\n");
      out.write("                font-weight: bolder ; \n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("              background-image: url('Images/log.jpg');\n");
      out.write("              background-repeat: no-repeat;\n");
      out.write("              background-position: 200px 200px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("    ");
      out.write("\n");
      out.write("        <center>\n");
      out.write("        <h1>Sign Up For On Cloud File Storage And Management</h1>\n");
      out.write("       \n");
      out.write("           <form name=\"forms\" action=\"SignUpProcess.jsp\"  >\n");
      out.write("               <table cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("                <tr>\n");
      out.write("                    <td id=\"msgBox\">\n");
      out.write("                           ");

                                message1 = request.getParameter("MessageS");
                                if(message1 != null)
                                {
                                     out.println(request.getParameter("MessageS"));                                  
                                }
                            
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>User Name</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required id=\"un\" name=\"un\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>User Email ID</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"email\" required id=\"em\" name=\"em\"/>\n");
      out.write("                        <button onclick=\"checkAvail(em.value);\" id=\"btnchk\">Available ?</button><br/>\n");
      out.write("                        <span id=\"rsemailavail\"></span>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>Password</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" required id=\"ep\" name=\"ep\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>Confirm Password</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" required id=\"ep2\" name=\"ep2\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>Date of Birth</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required id=\"dt\" name=\"dt\" placeholder=\"yyyy-MM-dd\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                <td> <label> Gender</label></td>\n");
      out.write("                <td id=\"tdradio\">\n");
      out.write("                    <input type=\"radio\" name=\"gen\" value=\"Male\" id=\"male\" />      Male      \n");
      out.write("                    <input type=\"radio\" name=\"gen\" value=\"Female\" id=\"female\"/>     Female      \n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>User Type</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"type\">\n");
      out.write("                            <option value=\"Admin\">Admin</option>\n");
      out.write("                            <option value=\"User\">User</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <label>Root Directory Name</label>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" required id=\"rd\" name=\"rd\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"text-align: center;\">\n");
      out.write("                        <input type=\"submit\" value=\"Sign Up\" class='bn' id=\"btnsub\" name=\"btnsub\"/>\n");
      out.write("                    </td>\n");
      out.write("                    <td style=\"text-align: center;\">\n");
      out.write("                        <input type=\"reset\" value=\"Reset\"  class='bn' id=\"btnreset\" name=\"btnreset\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function checkAvail(cur)\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                var xmlhttp;\n");
      out.write("                if(window.XMLHttpRequest)\n");
      out.write("                {\n");
      out.write("                    xmlhttp = new XMLHttpRequest();\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                {\n");
      out.write("                    xmlhttp = new ActiveXObject(\"Microsoft.xmlhttp\");\n");
      out.write("                }\n");
      out.write("               \n");
      out.write("                xmlhttp.open(\"POST\",\"CheckEmail.jsp?emailid=\"+cur, true);\n");
      out.write("               \n");
      out.write("                xmlhttp.send();\n");
      out.write("               \n");
      out.write("                xmlhttp.onreadystatechange = function()\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"rsemailavail\").innerHTML = xmlhttp.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            };\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        </center>\n");
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
