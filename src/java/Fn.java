
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Fn 
{
    public static void main(String args[])
    {
        Connection conn=null;
        try
        {
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/idsaas", "root", "khushbuj");  
          String query = "select * from login";
          Statement st=conn.createStatement();
          ResultSet rs=st.executeQuery(query);
          while(rs.next())
          {
              System.out.println("Values: "+rs.getString(2));
          }
        }
        catch(Exception ex)
        {
            System.out.println(ex.toString());
        }
                
    }
}
