<%@page import="java.io.FileDescriptor"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
<script type="text/javascript">
    <%
         String pss=null;
         try
            {
                pss=request.getParameter("cp");
                request.getSession(false).setAttribute("path",pss);
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        
        %>
</script>
</head>
<body>
<center>
    <h1>File Upload</h1>
    <form method="post" action="UploadServlet" enctype="multipart/form-data">
        <label>Select file to upload:</label> 
        <input type="file" name="file" size="60" /><br/>
        <b/> <input type="submit" value="Upload" />
        <!--<input type="text" name="path" value="<%=pss%>"/>-->
    </form>
</center>
</body>
</html>