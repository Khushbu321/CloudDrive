

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
                request.getSession(false).invalidate();
                response.sendRedirect("Login.jsp");
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
    </body>
</html>
