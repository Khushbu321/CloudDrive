

<%@page import="java.io.File"%>
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
            String path  = null;
            
            try
            {
                path =  getServletContext().getInitParameter("fileUpload");
               
             }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
        
       
        <%
                   
                    String id = request.getParameter("em");
                    String password = request.getParameter("ep") ;
                    String password2 = request.getParameter("ep2") ;
                    String uname = request.getParameter("un");
                    String ud = request.getParameter("dt");
                    String gender =  request.getParameter("gen");
                    String utype = request.getParameter("type") ;
                    String rootDir =  request.getParameter("rd");
                    if(password.equals(password2))
                    {
                      try
                      {  
                        con = DriverManager.getConnection( source.DBConnect.constring, 
                        source.DBConnect.dbuser, source.DBConnect.dbpassword );
                        st = con.createStatement();
                        String query = "Select root from userinfo ;";
                        rs = st.executeQuery(query);
                        while(rs.next())
                        {
                            if(rootDir.equals(rs.getString(1)))
                            {
                                con.close();
                                response.sendRedirect("SignUp.jsp?MessageS=This root directory already exists. Please insert another name for this field.");
                            }
                                     query ="insert into userinfo values('"+id+"','"+password+"','"+ud+"','"+uname+"','"+rootDir+"','"+utype+"','"+gender+"');"; 
                                     int rows = st.executeUpdate(query);
                                     if(rows>0)
                                     {
                                         con.close();
                                     }
                                     else
                                     {
                                         response.sendRedirect("SignUp.jsp");
                                     }
                                  
                                     File f = new  File(path , rootDir);
                                     if( f.mkdir() )
                                     {
                                         request.getSession(true).setAttribute("userId", id);
                                         request.getSession(true).setAttribute("rootDirectory", rootDir);
                                         response.sendRedirect("Home.jsp");
                                     }
                                     else
                                     { 
                                         out.println("");

                                     }
                                   con.close();
                                 }
                      }
                                 catch(Exception ex)
                                 {
                                     msg = ex.toString();
                                     out.println(msg);
                                 }
                    }
                    else
                    {
                       response.sendRedirect("SignUp.jsp?MessageS=Password confirmation results incorrect.");
                    }
                   
                        
                   
             %>
    </body>
</html>
