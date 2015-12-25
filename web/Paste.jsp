

<%@page import="java.nio.file.Files"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
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
                String copyFrom = request.getParameter("copy");
              
                String copyTo = request.getParameter("curPath");
              
                String type = request.getParameter("type");
              
                String cItem = request.getParameter("curItem");
               
                String copyDes = copyTo+"\\"+cItem;
                
                File f1 = new File(copyFrom);
                File f2 = new File(copyDes);
                OutputStream outof=new FileOutputStream(f2);
                if(type=="Cut")
                {
                    f1.renameTo(f2);
                }
                else if(type=="Copy")
                {
                    Files.copy(f1.toPath(), outof);
                }
                response.sendRedirect("View.jsp?cPath="+copyTo);
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
    </body>
</html>
