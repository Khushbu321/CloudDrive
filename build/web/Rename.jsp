

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
                 out.print("Hello");
                 String curPath = request.getParameter("cp");
                 String nn = request.getParameter("in");
                 String c=request.getParameter("current");
                 String renam=curPath+"\\"+c;
                 File f1 = new File(renam);
                 String nPath = curPath + "\\" + nn;
                 File f2 = new File(nPath);
                 f1.renameTo(f2);
                 response.sendRedirect("View.jsp?cPath="+curPath);
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
    </body>
</html>
