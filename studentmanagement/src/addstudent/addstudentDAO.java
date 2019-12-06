package addstudent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class addstudentDAO {
	public static List<addstudentPOJO> getallstudent() throws Exception
	{
		List<addstudentPOJO> studentlist=new ArrayList<addstudentPOJO>();
		Connection con=addstudentDBUtil.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from student");
		while(rs.next())
		{
			addstudentPOJO student=new addstudentPOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
			studentlist.add(student);
		}
		addstudentDBUtil.closeConnection(con);
		return studentlist; 
	}
	
	public static int addStudent(addstudentPOJO student) throws Exception
	{
		int status=0;
		
		Connection con=addstudentDBUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("INSERT into student values(?,?,?,?)");
		ps.setString(1, student.getStudent_id());
		ps.setString(2, student.getStudent_name());
		ps.setString(3, student.getBranch());
		ps.setString(4, student.getPhone_no());
		status=ps.executeUpdate();
		return status;
	}
}
