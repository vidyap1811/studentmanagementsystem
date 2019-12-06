package LoginPack;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



	public class LoginDAO {
		public static boolean isUserValid(LoginPOJO userdetails) throws Exception
		{
			boolean validStatus=false;
			try
			{
		Connection con=LoginDBUtil.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from login where user_name='"+userdetails.getUser_name()+"'AND password='"+userdetails.getPassword()+"'");
		while(rs.next())
		{
			validStatus=true;
		}
		LoginDBUtil.closeConnection(con);
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		 return validStatus;
	}

	}

