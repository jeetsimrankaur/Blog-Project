package DBBlog;
import java.sql.*;
import javax.swing.*;


public class dbbloglayer
{
	static Connection con;
	static Statement s;
	static ResultSet rs;
	static String drive="com.mysql.jdbc.Driver";
	static String servername="jdbc:mysql://localhost/blog";
	static String usrnm="root";
	static String paswd="";
	
	public static boolean executeq(String sql)
	{
		try
		{
			Class.forName(drive);
			con=DriverManager.getConnection(servername,usrnm,paswd);
			s=con.createStatement();
			s.execute(sql);
			con.close();
			return true;
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,"error while executing query:\n"+sql+"\n"+ex);
			return false;
		}
	}
	
	public static ResultSet getResult(String sql)
	{
		try
		{
			Class.forName(drive);
			con=DriverManager.getConnection(servername,usrnm,paswd);
			s=con.createStatement();
			rs=s.executeQuery(sql);
			return rs;
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,"error while executing query:\n"+sql+"\n"+ex);
			return null;
		}
	}
	
	public static String getScaler(String sql)
	{
		try
		{
			rs=getResult(sql);
			if(rs==null)
				return null;
			else if(rs.next()==false)
				return "";
			String p=rs.getString(1);
			con.close();
			return p;
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null,"error while executing query:\n"+sql+"\n"+ex);
			return null;
		}
	}
}