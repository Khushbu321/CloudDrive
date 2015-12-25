
<%@page import="sun.font.Script"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            String id=request.getParameter("id");
        %>
        <script type="text/javascript">
             function validateForm()
            {
            
            var cur = document.getElementById('cur').value;
            var newP = document.getElementById('new').value;
            var conP = document.getElementById('confirm').value;
          
            if(cur === "" || newP ==="" || conP==="")
            {
                
                alert("Please enter complete details ");
                return;
            }
            else if(newP !== conP)
            {
               alert("2");
                alert("Password confirmation incorrect..");
                return;
            }
            else
            {
               
                document.ChangePasswordForm.action = "ChangePassword1.jsp";
                document.ChangePasswordForm.submit();
            }
        }   
        </script>
    </head>
    <body>
        <form name="CP" method="POST">
            <center>
            <table>
                <tr>
                     <td>
                         <label>Current Password</label>
                     </td>
                    <td>
                        <input type="password" name="ppas" placeholder="Current Password" id="cur"/>
                    </td>
                </tr>
                 <tr>
                      <td>
                         <label>New Password</label>
                     </td>
                    <td>
                        <input type="password" name="npas"  placeholder="New Password" id="new"/>
                    </td>
                </tr>
                 <tr>
                      <td>
                         <label>Confirm Password</label>
                     </td>
                    <td>
                        <input type="password" name="cpas"  placeholder="Confirm Password" id="confirm"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="ok" value="ok" onclick="validateForm();"/>
                        <input type="reset" name="Reset" value="Reset"/>
                    </td>
                </tr>
            </table>
       </center>
        </form>
    </body>
</html>
