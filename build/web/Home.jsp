<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            document.forms["pass"].action="";
            document.forms["pass"].submit();
        </script>
        <style type="text/css">
            #tbl
            {
                width: 100%;
                margin: 10px;
                padding: 10px;
                height: 100%;
                text-align: center;
                vertical-align: middle;
            }
            .file
            {
                background-image: url("Images/ges.jpg");
                height: 110px;
                width: 110px;
             
            }
            .dir
            {
                 background-image: url("Images/download.jpg");
                 
                 height: 110px;
                 width: 110px;
            }
            .btn
             {
                border-bottom-left-radius: 30px;
                border-bottom-right-radius: 30px;
                border-top-left-radius: 30px;
                border-top-right-radius: 30px;
                background-color: skyblue;
                color: white;
                height: 40px;
                width: 100px;
            }
            .btn1
             {
                border-bottom-left-radius: 30px;
                border-bottom-right-radius: 30px;
                border-top-left-radius: 30px;
                border-top-right-radius: 30px; 
                background-color: skyblue;
                color: white;
                height: 60px;
                width: 150px;
            }
            body
            {
                background-image: url('Images/euedj.jpg');
                background-size: 100%;
                background-repeat: repeat;
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .txt
            {
                width: 300px;
                height: 50px;
                border-bottom-left-radius: 30px;
                border-bottom-right-radius: 30px;
                border-top-left-radius: 30px;
                border-top-right-radius: 30px;
            }
        </style>
        <script type="text/javascript">
             function sendVal(cur)
            {
                document.getElementById('filename').value = cur;
                  
           }
           
           
           function openDir(cur1,c)
           {
           if(cur1.className === "file")
               {
                     var cur=null, one=null;
                     var rPath1=document.getElementById("path").value;
                     var cPath1=document.getElementById("curPath").value;
                     if(cPath1===null)
                     {
                         cur=rPath1;
                         var index=cur.lastIndexOf("data");
                         one= cur.substring(index);
                         cur= cur.substring(0, index);
                         alert(one);
                     }
                      else
                     {
                         cur=cPath1;
                         var index=cur.lastIndexOf("data");
                         one= cur.substring(index);
                         cur= cur.substring(0, index);
                         alert(one);   
                      }
               
               var s1=document.getElementById("filename").value;
               location.href= one+"\\"+s1;
              }
               else
               {
                   document.getElementById("curPath").value=document.getElementById("curPath").value+"\\"+c;
                   var str = document.getElementById('curPath').value;
                   loadContent(str);
               }
           }
           
           function loadContent(pathTo)
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
               
                xmlhttp.open("POST","View.jsp?cPath="+pathTo, true);
               
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
            };
                
            
            
            function create(type)
            {
                
                var itemType = null;
                var itemName = null;
                var path = document.getElementById("curPath").value;
                
                if(type === "Create File")
                {
                    itemType = type;
                    itemName = prompt("Enter File Name ");
                    if(itemName === "")
                    {
                        alert("Please enter File Name");
                    }
                }
                else
                {
                    itemType = type;
                    itemName = prompt("Enter Directory Name ");
                    if(itemName === "")
                    {
                        alert("Please enter Directory Name");
                    }
                }
               
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","Create.jsp?cp="+path+"&it="+itemType+"&in="+itemName, true);
                
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                  
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
               loadContent();
            }
            
            function deleting(cur)
           {
               var str=document.getElementById("filename").value;
               var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","Delete.jsp?curPath="+cur+"&current="+str, true);
               
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
                var str = document.getElementById('curPath').value;
                loadContent(str);
            }
             
            function download(x)
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
              
                xmlhttp.open("POST","Download.jsp?name="+x, true);
                
                xmlhttp.send();
               
               
                xmlhttp.onreadystatechange = function()
                {
                   
                   if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                       
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
            }
            
            function copy(cur)
            {
               
                var str = document.getElementById("curPath").value;
                var curItem = document.getElementById("filename").value
                document.getElementById("copyPath").value = str + "\\" +curItem;
                //cur.disabled = true;
                document.getElementById("type").value = cur.value;
                document.getElementById("copyFile").value = curItem;
            }
            
             function paste()
             {
                 
                var copyP = document.getElementById("copyPath").value;
               
                var toPath = document.getElementById("curPath").value;
              
                var type = document.getElementById("type").value;
               
                var cItem = document.getElementById("copyFile").value;
               
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","Paste.jsp?curPath="+toPath+"&copy="+copyP+"&type="+type+"&curItem="+cItem, true);
               
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
              
            }
            
            
             function renameMethod()
            {
                var str=document.getElementById("filename").value;
                var itemName = null;
                var path = document.getElementById("curPath").value;
                
                itemName = prompt("Enter New Name ");
                if(itemName === null)
                    {
                        alert("Please enter new name");
                    }
               
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","Rename.jsp?cp="+path+"&in="+itemName+"&current"+str, true);
                
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                  
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                       
                    }
                };
              
            } 
               function Upload()
            {
               // var str=document.getElementById("filename").value;
                var path = document.getElementById("curPath").value;
               
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","TomcatFileUpload.jsp?cp="+path, true);
                
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                  
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
               
            } 
             function CPassword()
            {
               document.forms["CP"].action="ChangePassword.jsp";
               document.forms["CP"].submit();
               
            } 
            function Search()
            {
                var path=document.getElementById("curPath").value;
                var search=document.getElementById("s1").value;
                var xmlhttp;
                if(window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                    
                }
                else
                {
                    
                    xmlhttp = new ActiveXObject("Microsoft.xmlhttp");
                }
               
                xmlhttp.open("POST","Search.jsp?path="+path+"&searchname="+search, true);
                
                xmlhttp.send();
               
                xmlhttp.onreadystatechange = function()
                {
                  
                    
                    if(xmlhttp.readyState === 4 && xmlhttp.status === 200)
                    {
                        
                        document.getElementById("rs1").innerHTML = xmlhttp.responseText;
                    }
                };
               
            } 
            
            function up()
            {
               
                var str = document.getElementById("curPath").value;
                var str1 = document.getElementById("path").value;
               
                if(str === str1)
                {
                   
                    alert("you cannot go back from root directory.");
                }
                else
                {
                   
                    var index = str.lastIndexOf("\\");
                    str = str.substring(0, index);
                    document.getElementById("curPath").value = str;
                    loadContent(str);
                }
                
            }
            
            function logout()
            {
                 document.forms["formHead"].action = "Logout.jsp";
                 document.forms["formHead"].submit();
            }
                      
        </script>
    </head>
    <body>
    
       <%
            String path  = null, rPath = null;
            String root = null, userId = null;
          
            try
            {
                path =  getServletContext().getInitParameter("fileUpload");
                root = request.getSession(false).getAttribute("rootDirectory").toString();
                userId  =request.getSession(false).getAttribute("userId").toString();
                rPath = path + "\\" + root;
                
            }
            catch(Exception ex)
            {
                out.print(ex.toString());
            }
        %>
         <div   style="display: inline-block;">  
                
           
         
         </div>
       
  <div   style="display: inline-block;">
      <center>
        <form id="onefrm" name="onefrm">
            
             <table>
                 <tr>
                    <td>
                           <input type="button" class="btn1" value="Item Selected" name="FN"/>
                    </td>
                    <td>
                          <input type="text" placeholder="file name" id="filename" name="f"  class="txt"/>
                    </td>
                </tr>
            </table>
           
        </form>
           </center> 
   </div>    
  
          <div>
              
        <form id="fmh" name="fmh">
             <table>
                <tr>
                    <td>
                          <input type="button" class="btn1" value="Home Directory" name="HD"/>
                    </td>
                    <td>
                        <input type="text" value="<%=root%>" class="txt"/>
                    </td>
                </tr>
            </table>    
        </form>
            </div>      
        <div>
        <form id="formHead">
            <table>
                <tr>
                   
                     <td>
                          <input type="button" class="btn1" value="User ID" name="UD"/>
                     </td>
                     <td>
                        <input type="text" value="<%=userId%>" class="txt" id="id1"/>
                     </td>
                 </tr>
             
            </table>
        </form>  
                   
            </div>
                      <div>
              
        <form id="fmh3" name="fmh3" style="float: right;">
             <table>
                <tr>
                    <td>
                        <label>Search</label>
                    </td>
                    <td>
                        <input type="search"  class="txt" id="s1" onkeyup="Search();"/>
                    </td>
                </tr>
            </table>    
        </form>
            </div>      
                     <input type="hidden" name="copyFile" id="copyFile"  style="width:100%;"/>      
                     <input type="hidden" name="type" id="type"  style="width:100%;"/>
                     <input type="hidden" name="path" id="path" value="<%=rPath%>" style="width:100%;"/>
                     <input type="hidden" name="curPath" id="curPath" style="width:100%;" value="<%=rPath%>"/>
                     <input type="hidden" name="copypath" id="copyPath" style="width:100%;"/>
                
                <table id="tblBtn" style="width: 100%;">
                <tr>
                    <td>
                        <input type="button" class="btn" value="Create File" name="create1" id="create1" 
                               onclick="create(this.value);"/>
                    </td>
                    <td>
                        <input type="button" class="btn" value="Create Folder" name="create" id="create" 
                               onclick="create(this.value);"/>
                    </td>
                    <td>
                        <input type="button" class="btn" value="Delete" onclick="deleting(curPath.value);" />
                    </td>
                    <td>
                        <input type="button" class="btn" value="Rename" name="rn" id="rn" onclick="renameMethod();"/>
                    </td>
                    <td>
                        <input type="button" class="btn" value="Back" name="ups" id="ups" onclick="up();" />
                    </td>
                     <td>
                        <input type="button" id="logBtn1" class="btn" name="cut" value="Cut" onclick="copy(this);" />
                    </td>
                    <td>
                        <input type="button" id="logBtn2" class="btn" name="copy" value="Copy" onclick="copy(this);" />
                    </td>
                     <td>
                        <input type="button" id="logBtn3" class="btn" name="paste" value="Paste" onclick="paste();" />
                    </td>
                    <td>
                        <input type="button" id="logBtn9" class="btn" name="upload" value="Upload" onclick="Upload();" />
                    </td>
                     <td>
                        <input type="button" id="logBtn8" class="btn" name="ChangePassword" value="ChangePassword" onclick="CPassword();" />
                    </td>
                     <td>
                        <input type="button" id="logBtn4" class="btn" name="logBtn" value="Logout" onclick="logout();" />
                    </td>
                </tr>
            </table>
        
        <div id="rs1">
            <jsp:include page="View.jsp"/> 
        </div>
<!--        <div id="rs1">
            
        </div>-->
        
    </body>
</html>
