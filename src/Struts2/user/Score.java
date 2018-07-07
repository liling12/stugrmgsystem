package Struts2.user;

public class Score {
	private int score;//分数
	private int stuid;//学生号
	private String coursename;
	private int gradename;
	private String teachername;
	private String classname;
	private String stuname;
	
	public Score(){
		super();
	}
	public Score(String coursename,int score, String teachername){
		super();
		this.coursename=coursename;
		this.score=score;
		this.teachername=teachername;
	}
	
	public Score(int gradename,String classname,String stuname,int score,int stuid,String coursename){
		super();
		this.gradename = gradename;
		this.classname = classname;
		this.stuname = stuname;
		this.score = score;
		this.stuid = stuid;
		this.coursename = coursename;	
	}
	
	
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public int getGradename() {
		return gradename;
	}
	public void setGradename(int gradename) {
		this.gradename = gradename;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	
	
}
