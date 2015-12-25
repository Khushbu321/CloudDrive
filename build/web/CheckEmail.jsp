

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
        
             String id = request.getParameter("emailid");
            
             String idd = null;
                        try
                        {
                             
                            con = DriverManager.getConnection(source.DBConnect.constring , source.DBConnect.dbuser , source.DBConnect.dbpassword);
                            st = con.createStatement();
                            
                            query ="select * from userinfo;" ;
                            
                             rs = st.executeQuery(query);
                            
                             
                                   
                                    while(rs.next())
                                    {
                                      idd = rs.getString(1);
                                      if(id.equals(idd))
                                      {
                                         
                                          out.print("already existing id");
                                      }
                                    
                                    }  
                                      
                                
                              
                        }
                        catch(Exception ex)
                        {
                             msg = ex.toString();
                                    out.println(msg);
                        }
                        con.close();

        %>
    </body>
</html>