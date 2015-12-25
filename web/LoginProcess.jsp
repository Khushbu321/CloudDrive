
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
                String un = request.getParameter("txtun");
                String ps = request.getParameter("txtup");
                
                 HttpSession s1;
               
                con = DriverManager.getConnection( source.DBConnect.constring, 
                       source.DBConnect.dbuser, source.DBConnect.dbpassword );
               
                st = con.createStatement();
                String query = "Select * from usermaster where userid = '"+un+"' and password = '"+ps+"' ;";
                rs = st.executeQuery(query);
                String root= null;
                if(rs.next())
                {
                    
                        if(  un.equals(rs.getString(1)) && ps.equals(rs.getString(2)))
                        {
                        s1 = request.getSession(true);
                        root = rs.getString(5);
                        s1.setAttribute("userId", un);
                        s1.setAttribute("rootDirectory",root);
                        con.close();
                        response.sendRedirect("Home.jsp");
                        }
                    }
                
                else
                {
                    con.close();
                    response.sendRedirect("Login.jsp?Message=Invalid User ID or Password");
                }
                
            }
            catch(Exception ex)
           {
                out.println( ex.toString() );
            }                 
    %>
    </body>
</html>
