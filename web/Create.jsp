

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
                String curPath = request.getParameter("cp");
                String itemType = request.getParameter("it");
                String itemName = request.getParameter("in");
                File f = new  File(curPath , itemName);
               
                if(itemType.equals("Create File"))
                {
                    if( f.createNewFile() )
                    {
                        out.print("File created");
                    }
                    else
                    {
                        out.print("File exists or did not created");
                    }
                }
                else if(itemType.equals("Create Folder"))
                {
                   if(f.mkdir())
                   {
                       out.print("Dir created");
                   }
                   else
                   {
                       out.print("Dir did not created");
                   }
                }
                response.sendRedirect("View.jsp?cPath="+curPath);
             }
             catch(Exception ex)
             {
                 out.print(ex.toString());
             }
        %>
            
    </body>
</html>
