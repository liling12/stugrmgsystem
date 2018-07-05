package Struts2.Action;

import java.util.ArrayList;
import java.util.List;

import Struts2.Dao.ClassDao;
import Struts2.Dao.CourseDao;
import Struts2.Dao.GradeDao;
import Struts2.Dao.TeacherDao;
import Struts2.user.Course;

import com.opensymphony.xwork2.ActionContext;

public class CourseMAction {
	private String coursename;  
    private String classname;
    private int gradename;
    private String teachername;
    
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
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
	
	Course cou=new Course();
    CourseDao couDao=new CourseDao();
    List list = new ArrayList();


	public String ListCou() throws Exception {             //�鿴�γ̱�List
		   list=couDao.ListCou();
		   ActionContext.getContext().put("listcou", list);
		   return "cou";
		}
    
	//�������������ʾ
	   List listCl = new ArrayList();
	   List listct = new ArrayList();
	   List listcg = new ArrayList();
	public String ListC() throws Exception {		
		   listCl = ClassDao.ListCl();	
		   ActionContext.getContext().put("listCl", listCl);//�༶������
		   listcg = GradeDao.Listcg();	
		   ActionContext.getContext().put("listcg", listcg);//ѧ��������
		   listct = TeacherDao.Listct();	
		   ActionContext.getContext().put("listct", listct);//��ʦ������		   
	    return "success" ;	   
	}
	
	public String addCou() throws Exception {               //��ӿγ�add
		cou.setCoursename(coursename);
		cou.setClassname(classname);
		cou.setGradename(gradename);
		cou.setTeachername(teachername);
		boolean flag=couDao.addCourse(cou);
		if(flag=true)
	   return "course";
		else
	   return "fail";
	}
	
	public String Listgc() throws Exception {             //�鿴ĳѧ�ڵĿγ�
		   list=couDao.Listgc(gradename);
		   ActionContext.getContext().put("listgc", list);
		   return "course";
		}
}
