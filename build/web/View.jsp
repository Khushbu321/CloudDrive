
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
            
            String path  = null, rPath = null, cur=null, one=null;
            try
            {
                path =  getServletContext().getInitParameter("fileUpload");
                String root = request.getSession(false).getAttribute("rootDirectory").toString();
                rPath = path + "\\" + root;
                
                
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
        
       
        
        <table id="tbl">
            
           <%
            
               try
               {
                   File f1 = null;
                   String pFile = null;
                   
                   if(request.getParameter("cPath") == null)
                   {
                       f1 = new File(rPath);
                   }
                   else
                   {
                       pFile = request.getParameter("cPath");
                       f1 = new File(pFile);
                       
                   }
                   File flist[] = f1.listFiles();
                   if(flist.length==0)
                   {
                       out.print("No files in this directory");
                   }
                   int c=1;
                   out.print("<tr>");
                   for(File temp : flist)
                   {
                       if(temp.isDirectory())
                       {
                           out.print("<td>");
                           out.print("<input type='button' class='dir' value='"+temp.getName()+"' onclick='sendVal(this.value);' ondblclick='openDir(this,this.value);' /></br>");
                           out.print("</td>");
                       }
                       else
                       {
                            out.print("<td>");
                            out.print("<a><input type='button' class='file' value='"+temp.getName()+"' onclick='sendVal(this.value);' ondblclick='openDir(this,this.value);' /></br></a>");
                            out.print("</td>");
                       }
                       c++;
                       if(c%3==0)
                       {
                           out.print("</tr><tr>");
                           c++;
                       }
                   }
                    out.print("</tr>");
               
               }
               catch(Exception ex)
               {
                   out.print(ex.toString());
               }
           %>    
        </table>
               
    </body>
</html>
