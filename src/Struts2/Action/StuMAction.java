package Struts2.Action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Struts2.Dao.ClassDao;
import Struts2.Dao.StuDao;
import Struts2.user.Stu;

import com.opensymphony.xwork2.ActionContext;

public class StuMAction {
	private String stuname;  
    private String stupass;
    private int stuid;
    private String stusex;
    private String classname;

    public String getStuname() {
		return stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	public String getStupass() {
		return stupass;
	}

	public void setStupass(String stupass) {
		this.stupass = stupass;
	}

	public int getStuid() {
		return stuid;
	}

	public void setStuid(int stuid) {
		this.stuid = stuid;
	}

	public String getStusex() {
		return stusex;
	}

	public void setStusex(String stusex) {
		this.stusex = stusex;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	Stu stu=new Stu();
    StuDao stuDao=new StuDao();
    List list = new ArrayList();


	public String ListStu() throws Exception {             //查看学生表List
		   list=stuDao.ListStu();
		   ActionContext.getContext().put("lists", list);
		   return "stu";
		}
	
	public String addStu() throws Exception {               //添加学生add
		stu.setStuid(stuid);
		stu.setStuname(stuname);
		stu.setStusex(stusex);
		stu.setStupass(stupass);
		stu.setClassname(classname);
		boolean flag=stuDao.addStu(stu);
		if(flag=true)
	   return "student";
		else
	   return "fail";
	}
	  List listCl = new ArrayList();
	public String SStu() throws Exception {			//单个学生信息展示
		Map attibutes = ActionContext.getContext().getSession(); 
		   listCl = ClassDao.ListCl();	
		   ActionContext.getContext().put("listCl", listCl);
		   stu = stuDao.SStu(stuid);
		   ActionContext.getContext().put("stu", stu);
		   return "student";
	}
	
	public String updateS()throws Exception {                //修改学生信息
		stu.setStuid(stuid);
		stu.setStuname(stuname);
		stu.setStusex(stusex);
		stu.setStupass(stupass);
		stu.setClassname(classname);
		boolean flag=stuDao.updateS(stu);
		if(flag=true)
	   return "student";
		else
	   return "fail";
	}
	

}
