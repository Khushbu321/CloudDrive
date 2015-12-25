package source;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UploadServlet extends HttpServlet 
{
    /**
     * Name of the directory where uploaded files will be saved, relative to
     * the web application directory.
     */
    private static final String SAVE_DIR = "data";
    private PrintWriter out = null; 
    /**
     * handles file upload
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException 
    {
        String appPath =  request.getSession(false).getAttribute("path").toString();
       //String appPath =  request.getParameter("cpath");
        response.setContentType("text/html");
        out = response.getWriter();
        // gets absolute path of the web application
        //String appPath = request.getServletContext().getRealPath("");
        //String appPath ="E:\\setup\\Torture\\web"; 
       // out.print(appPath+"<br/>");
        // constructs path of the directory to save uploaded file
        //String appPath = appPath + File.separator + SAVE_DIR;
      //  out.print(savePath+"<br/>"); 
        // creates the save directory if it does not exists
        File fileSaveDir = new File(appPath);
        if (!fileSaveDir.exists()) 
        {
            fileSaveDir.mkdir();
           // out.print("done<br/>");
        }
         
        for (Part part : request.getParts()) 
        {
            String fileName = extractFileName(part);
            part.write(appPath + File.separator + fileName);
           // out.print(appPath + File.separator + fileName);
            
        }
      //  out.print("Success");
        response.sendRedirect("Home.jsp?Message=Successfully uploaded");
        //request.setAttribute("message", "Upload has been done successfully!");
        //getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
    }
 
    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) 
    {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) 
        {
            if (s.trim().startsWith("filename")) 
            {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
}