package signup;

public class signupPOJO {
	String user_name;
	String password;
	public signupPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public signupPOJO(String user_name, String password) {
		super();
		this.user_name = user_name;
		this.password = password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "signupPOJO [user_name=" + user_name + ", password=" + password + "]";
	}

}
