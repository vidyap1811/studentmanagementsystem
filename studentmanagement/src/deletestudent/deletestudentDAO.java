package deletestudent;

import java.sql.Connection;
import java.sql.PreparedStatement;




public class deletestudentDAO
{
	
	public static int deleteStudent(String student_id) throws Exception
	{
		int status=0;
		
		Connection con=deletestudentDBUtil.getConnection();
		PreparedStatement ps=con.prepareStatement("delete from student where student_id=?");
		ps.setString(1,student_id);
		status=ps.executeUpdate();
		return status;
	}
}
