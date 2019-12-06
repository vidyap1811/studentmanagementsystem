package viewstd;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class viewstdDAO {
	public static List<viewstdPOJO> getallstudent() throws Exception
	{
		List<viewstdPOJO> studentlist=new ArrayList<viewstdPOJO>();
		Connection con=viewstdDBUtil.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from student");
		while(rs.next())
		{
			viewstdPOJO student=new viewstdPOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
			studentlist.add(student);
		}
		viewstdDBUtil.closeConnection(con);
		return studentlist; 
	}
	

}
