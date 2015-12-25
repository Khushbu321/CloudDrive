

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
            String p = request.getParameter("curPath");
            String c=request.getParameter("current");
            String path=p+"\\"+c;
            File f = new File(path);
            f.delete();
      
            response.sendRedirect("View.jsp?cPath="+p);   
        %>
    </body>
</html>
