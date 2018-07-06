package Struts2.Action;

import Struts2.Dao.CourseDao;
import Struts2.Dao.TeacherDao;
import Struts2.user.Score;
import Struts2.user.Teacher;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class TeacherMAction {
	private String teachername;
	private String teacherpass;
	private int teacherid;
	private String teachersex;
	private String coursename;
	private String stuname;
	private int score;
	private int gradename;
	private String classname;
	private int stuid;
	List listct;

	Teacher teach = new Teacher();
	TeacherDao teacherDao = new TeacherDao();
	List list = new ArrayList();
	

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
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getGradename() {
		return gradename;
	}
	public void setGradename(int gradename) {
		this.gradename = gradename;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	
	public List getListct() {
		return listct;
	}
	public void setListct(List listct) {
		this.listct = listct;
	}
	

	public String ListTea() throws Exception { // 查看教师表List
		list = teacherDao.ListTeacher();
		ActionContext.getContext().put("listt", list);
		return "teach";
	}

	public String addTea() throws Exception { // 添加教师add
		teach.setTeacherid(teacherid);
		teach.setTeachername(teachername);
		teach.setTeachersex(teachersex);
		teach.setTeacherpass(teacherpass);
		boolean flag = teacherDao.addTeacher(teach);
		if (flag = true)
			return "teacher";
		else
			return "fail";
	}

	public String STeacher() throws Exception { // 单个教师信息展示
		Map attibutes = ActionContext.getContext().getSession();
		teach = teacherDao.STeacher(teacherid);
		ActionContext.getContext().put("teach", teach);
		return "steacher";
	}

	public String updateT() throws Exception { // 修改教师信息
		teach.setTeacherid(teacherid);
		teach.setTeachername(teachername);
		teach.setTeachersex(teachersex);
		teach.setTeacherpass(teacherpass);
		boolean flag = teacherDao.updateT(teach);
		if (flag = true)
			return "teacher";
		else
			return "fail";
	}

	
	public String Scourse() throws Exception { // 查看成绩单个课程
		String Sc = coursename;
		String courname = new String(Sc.getBytes("ISO-8859-1"), "UTF-8");
		listct = teacherDao.Listct(courname);
		return "scourse";
	}

	Score sc = new Score();

	public String ListSc() throws Exception { // 单个课程单人成绩信息展示
		Map attibutes = ActionContext.getContext().getSession();
		String SS = stuname;
		String studentname = new String(SS.getBytes("ISO-8859-1"), "UTF-8");
		sc = teacherDao.ListSc(studentname);
		ActionContext.getContext().put("ListSc", sc);
		return "ListSc";
	}

	public String updateSc() throws Exception { // 修改成绩信息
		String SS = coursename;
		String coursename = new String(SS.getBytes("UTF-8"), "ISO-8859-1");
		sc.setScore(score);
		sc.setGradename(gradename);
		sc.setCoursename(coursename);
		sc.setStuid(stuid);
		boolean flag = teacherDao.updateSc(sc);
		if (flag = true)
			return "updateSc";
		else
			return "fail";
	}
}
