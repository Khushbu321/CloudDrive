

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.DataInputStream"%>
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
            String fileName = request.getParameter("name");
             out.print(fileName);
            File f= new File(fileName);
            
           
            InputStream in = new FileInputStream(f);
            
            BufferedInputStream bin = new BufferedInputStream(in);
            
            DataInputStream din = new DataInputStream(bin);
           

            while(din.available() > 0)
            {
                out.print(din.readLine());
                
                out.print("\n");
                
            }

            response.setContentType("application/force-download");
            response.setContentLength((int)f.length());
            response.setHeader("Content-Transfer-Encoding", "binary");
            response.setHeader("Content-Disposition","attachment; filename=\"" + "xxx\"");//fileName);
            }
            catch(Exception ex)
            {
                ex.toString();
            }
        %>
    </body>
</html>
