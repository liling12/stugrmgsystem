package Struts2.user;

public class Teacher {

	private int teacherid;//��ʦid
	private String teachername;//��ʦ�˺�
	private String teachersex;//��ʦ�Ա�
	private String teacherpass;//��ʦ����
	public Teacher() {
		super();
	}

	public Teacher(int teacherid,String username,String teachersex, String password) {
		super();
		this.teachername = username;
		this.teacherpass = password;
		this.teacherid = teacherid;
		this.teachersex = teachersex;
	}

	public Teacher(String teachername){
		super();
		this.teachername = teachername;
	}
	
	public String getTeachername() {
		return teachername;
	}

	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}

	public String getTeacherpass() {
		return teacherpass;
	}

	public void setTeacherpass(String teacherpass) {
		this.teacherpass = teacherpass;
	}

	public int getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(int teacherid) {
		this.teacherid = teacherid;
	}

	public String getTeachersex() {
		return teachersex;
	}

	public void setTeachersex(String teachersex) {
		this.teachersex = teachersex;
	}

}