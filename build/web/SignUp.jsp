


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style type="text/css">
           h1
            {
                text-align: center;
                color: darkcyan; 
                font-size: 60px ;
                font-style: italic;
                font-weight: bolder ; font-family: monotype corsiva ;
           
            }
           
            label
            {
                width: 350px;
                
                vertical-align: middle;
                text-align: center;
                color: darkcyan; font-size: 20px ;
                font-style: italic;
                font-weight: bolder ;
                
                   
            }
            
            #un , #em , #ep , #ep2 ,#rd, #dt , select
            {
                width: 400px;
                text-align: center;
                color: darkcyan; font-size: 20px ;
                font-style: italic;
                font-weight: bolder ; font-family: monotype corsiva ;
                
            }
           #btnsub , #btnreset , #btnchk 
            {
                 background-color: skyblue;
                 width: 200px;
                 text-align: center;
                 color: white; font-size: 28px ;
                 font-style: italic;
                 font-weight: bolder ; 
            }
            #tdradio
            {
                
                color: darkcyan; font-size: 20px ;
                font-style: italic;
                font-weight: bolder ; 
            }
            span
            {
                color: darkcyan; font-size: 20px ;
                font-style: italic;
                font-weight: bolder ; 
            }
            body
            {
              background-image: url('Images/log.jpg');
              background-repeat: no-repeat;
              background-position: 200px 200px;
            }
            
            <%!
                String message1;
            %>
            
            
        </style> 
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
        <center>
        <h1>Sign Up For On Cloud File Storage And Management</h1>
       
           <form name="forms" action="SignUpProcess.jsp"  >
               <table cellspacing="5px" cellpadding="5px">
                <tr>
                    <td id="msgBox">
                           <%
                                message1 = request.getParameter("MessageS");
                                if(message1 != null)
                                {
                                     out.println(request.getParameter("MessageS"));                                  
                                }
                            %>
                        </td>
                </tr>
                 <tr>
                    <td>
                        <label>User Name</label>
                    </td>
                    <td>
                        <input type="text" required id="un" name="un"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>User Email ID</label>
                    </td>
                    <td>
                        <input type="email" required id="em" name="em"/>
                        <button onclick="checkAvail(em.value);" id="btnchk">Available ?</button><br/>
                        <span id="rsemailavail"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <input type="password" required id="ep" name="ep"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Confirm Password</label>
                    </td>
                    <td>
                        <input type="password" required id="ep2" name="ep2"/>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <label>Date of Birth</label>
                    </td>
                    <td>
                        <input type="text" required id="dt" name="dt" placeholder="yyyy-MM-dd"/>
                    </td>
                </tr>
                <tr>
                <td> <label> Gender</label></td>
                <td id="tdradio">
                    <input type="radio" name="gen" value="Male" id="male" />      Male      
                    <input type="radio" name="gen" value="Female" id="female"/>     Female      
                </td>
                
            </tr>
                 <tr>
                    <td>
                        <label>User Type</label>
                    </td>
                    <td>
                        <select name="type">
                            <option value="Admin">Admin</option>
                            <option value="User">User</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Root Directory Name</label>
                    </td>
                    <td>
                        <input type="text" required id="rd" name="rd"/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;">
                        <input type="submit" value="Sign Up" class='bn' id="btnsub" name="btnsub"/>
                    </td>
                    <td style="text-align: center;">
                        <input type="reset" value="Reset"  class='bn' id="btnreset" name="btnreset"/>
                    </td>
                </tr>
                
            </table>
        </form>
            
        <script type="text/javascript">
            function checkAvail(cur)
            {
                
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","CheckEmail.jsp?emailid="+cur, true);
               
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        document.getElementById("rsemailavail").innerHTML = xmlhttp.responseText;
                    }
                }
            };
        </script>

        </center>
    </body>
</html>
