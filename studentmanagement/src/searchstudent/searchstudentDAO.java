package searchstudent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class searchstudentDAO {

	public static searchstudentPOJO getstudentById(String student_id) throws Exception 
	{ 
		searchstudentPOJO student = null;	 
	 			Connection conn = searchstudentDBUtil.getConnection(); 
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM student WHERE student_id = ?"); 
			ps.setString(1, student_id); 
			ResultSet rs = ps.executeQuery(); 
			while(rs.next()) 
			{ 
				student = new searchstudentPOJO(rs.getString("student_id"),rs.getString("student_name"),rs.getString("branch"),rs.getString("phone_no")); 
				} 
				 
		return student; 
 	} 


}
