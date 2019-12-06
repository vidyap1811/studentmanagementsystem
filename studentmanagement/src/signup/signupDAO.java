package signup;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class signupDAO {
	public static int Signup(signupPOJO user) throws Exception {
		int status = 0;

		Connection con = signupDBUtil.getConnection();
		PreparedStatement ps = con.prepareStatement("INSERT into login values(?,?)");
		ps.setString(1, user.getUser_name());
		ps.setString(2, user.getPassword());

		status = ps.executeUpdate();
		return status;
	}
	

}
