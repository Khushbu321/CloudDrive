
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            label{
                text-height: 30px;
                color: skyblue;
                font-style: italic;
                font-size: xx-large;
            }
            .btns{
                background-color: skyblue;
                height: 40px;
                width: 100px;
            }
            h1{
                color: skyblue;
                font-style:oblique ;
                text-shadow: initial;
                font-stretch: extra-expanded;
                font-size: xx-large;
            }
            .t
            {
              width: 200px;
              height: 30px;
            }
        </style>
        <%!
            String sms;
        %>
    </head>
        <form name="forml">
        <center><h1>On Cloud File Storage And Management </h1></center>
        <div style="display: inline-block ; height: 600px; width:1000px;">
        <img src="Images/cloud.jpg" alt="Image Unavailable" height="600" width="1000"/>
        </div>
         <div style="display: inline-block ; height: 600px; width: 329px ;">
        <table cellspacing='5px' cellpadding='5px'>
            <caption><h1 style="font-size: 55px; color: skyblue;font-style: italic; text-shadow:inherit; ">LOGIN</h1></caption>
            <tr>
                        <td id="msgBox">
                                 <%
                                sms = request.getParameter("Message");
                                if(sms != null)
                                {
                                     out.println(request.getParameter("Message"));                                  
                                }
                            %>
                        </td>
                    </tr>
            <tr>
                <td>
                    <label>User Email ID :-</label>
                </td>
            </tr>
        <tr>
            <td>
                <input type="email"  id="txtun" class="t" name="txtun" placeholder="Enter User Id" required/>
            </td>
        </tr>
        <tr>
                <td>
                    <label>User Password :-</label>
                </td>
            </tr>
        <tr>
            <td>
                <input type="password" id="txtup"  class="t"  name="txtup" placeholder="Enter User Password" required/>
            </td>
        </tr>
        <tr style="text-align: center;">
            <td>
                <input type="submit" class="btns" id="btnlog" name="btnlog" value="Login" onclick="logSelect(this.value)"/>
            </td>
        </tr>
        <tr style="text-align: center;">
            <td>
                <input type="reset" class="btns" id="btnres" name="btnres" value="Reset" onclick="msgBox.innerHTML=''"/>
            </td>
        </tr>
         <tr style="text-align: center;">
            <td>
                <input type="submit" class="btns" id="btnsign" name="btnsign" value="Sign Up" onclick="logSelect(this.value)"/>
            </td>
        </tr>
        </table>
        
      
        
    <script type="text/javascript">
        function logSelect(cur)
        {
                if(cur === "Login")
                {
                 document.forms["forml"].action = "LoginProcess.jsp";
                 document.forms["forml"].submit();
                }
                else if(cur === "Sign Up")
                {
                 document.forms["forml"].action = "SignUp.jsp";
                 document.forms["forml"].submit();
                }
            
        }
    </script>
    
    .
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </form>
    </body>
</html>
