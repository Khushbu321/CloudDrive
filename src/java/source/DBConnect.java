package source;


public class DBConnect
{
     public static String constring="jdbc:mysql://localhost:3306/file";
    public static String dbuser="root";
    public static String dbpassword="khushbuj";
    public static String msg=null;
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        }
        catch(Exception ex)
        {
            msg=ex.toString();
        }
    }
}