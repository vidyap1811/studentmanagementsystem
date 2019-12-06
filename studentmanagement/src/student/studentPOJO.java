package student;

public class studentPOJO {
	String student_id;
	String student_name;
	String branch;
	String phone_no;
	public studentPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public studentPOJO(String student_id, String student_name, String branch, String phone_no) {
		super();
		this.student_id = student_id;
		this.student_name = student_name;
		this.branch = branch;
		this.phone_no = phone_no;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	@Override
	public String toString() {
		return "studentPOJO [student_id=" + student_id + ", student_name=" + student_name + ", branch=" + branch
				+ ", phone_no=" + phone_no + "]";
	}
	
	
	

}
