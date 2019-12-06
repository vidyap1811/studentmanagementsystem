package editstudent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class editstudentDAO {
	public static editstudentPOJO getStudentByID(String student_id) throws Exception
	{
		editstudentPOJO student=null;
		
		Connection con=editstudentDBUtil.getConnection();
		
		PreparedStatement ps=con.prepareStatement("SELECT * from student where student_id=?");
		ps.setString(1, student_id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			student=new editstudentPOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)) ;
			 
		
		}
		return student;
		
	}
	
	public static int updateStudent(editstudentPOJO student) throws Exception
	{
		int status=0;
		
		Connection con=editstudentDBUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("update student set student_name=?,branch=?,phone_no=? where student_id=?");
		ps.setString(4, student.getStudent_id());
		ps.setString(1, student.getStudent_name());
		ps.setString(2, student.getBranch());
		ps.setString(3, student.getPhone_no());
		status=ps.executeUpdate();
		return status;
	}
}
