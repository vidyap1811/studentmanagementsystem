package student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class studentDAO {public static List<studentPOJO> getstudentPOJO() throws Exception
{
	List<studentPOJO> studentlist=new ArrayList<studentPOJO>();
	Connection con=studentDBUtil.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT * from student");
	while(rs.next())
	{
		studentPOJO student=new studentPOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
		studentlist.add(student);
	}
	studentDBUtil.closeConnection(con);
	return studentlist; 
}


}
