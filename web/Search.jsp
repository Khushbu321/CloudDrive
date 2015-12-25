

<%@page import="sun.misc.Regexp"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p style="background-image: url"></p>
        <%
             String path;
             String sn;
             String str;
             try
             {
             path=request.getParameter("path");
             sn=request.getParameter("searchname");
            
             File f=new File(path);
             if(f.isDirectory())
             {
             File flist[] = f.listFiles();
             for(File temp : flist)
             {
                 str=temp.getName();
                 if(str.matches(".*"+sn+".*")==true)
                 {
                    // out.print(str);
                     String p=temp.getAbsolutePath();
                     if(temp.isFile())
                     {
                     out.print("<a href="+p+"><input type='button' value='"+str+"' class='file'/></a>");
                     }
                     else
                     {
                        out.print("<a href="+p+"><input type='button' value='"+str+"' class='dir'/></a>"); 
                     }
                     }
                     
               
               }
             }
             }
             catch(Exception ex)
             {
                 ex.toString();
             }
            
        %>
       
    </body>
</html>
