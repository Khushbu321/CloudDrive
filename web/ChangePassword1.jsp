
<%@page import="java.sql.DriverManager"%>
<%@page import="java. sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con = null;
            ResultSet rs=null;
            Statement st= null;
            String query=null;
            String msg = null;
            String message = null;
        %>
        
        
    <%
         try
            {
                String un = request.getParameter("cur");
                String ps = request.getParameter("new");
                con = DriverManager.getConnection( source.DBConnect.constring, 
                       source.DBConnect.dbuser, source.DBConnect.dbpassword );
               
                st = con.createStatement();
                String query = "update userinfo set password = '"+ps+"' where password = '"+un+"';";
                int rows = st.executeUpdate(query);
                con.close();
               // response.sendRedirect("Home.jsp");
                
                
              }
            catch(Exception ex)
            {
                out.println( ex.toString() );
            }                 
    %>
    </body>
</html>
