package Struts2.Action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import Struts2.Dao.AdminDao;
import Struts2.Dao.CourseDao;
import Struts2.user.Admin;
import Struts2.Dao.TeacherDao;
import Struts2.user.Teacher;
import Struts2.Dao.StuDao;
import Struts2.user.Stu;

import com.opensymphony.xwork2.*;

public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	private String type;
	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	Admin admin=new Admin();
	AdminDao adminDao =new AdminDao();
	
	Teacher teacher=new Teacher();
	TeacherDao teacherDao =new TeacherDao();
	
	Stu stu=new Stu();
	StuDao stuDao =new StuDao();
	
	public String execute() throws Exception {
		//��һ���ж��û��ǲ���admin�û�
		  if("3".equals(type)){
			  admin.setPassword(password);
			  admin.setUsername(username);
			  //�����if����ʹ��admin�û���ѯ����
			  if(adminDao.isLogin(admin)){ 	
				return "success3";
			  }
		  }
		  //�����һ���ж�ʧ�ܣ���һ���ж��û��ǲ���teacher�û�
	      else if("2".equals(type)) {
	    	  teacher.setTeacherpass(password);
	    	  teacher.setTeachername(username);
	    	  //ͬ�ϣ��²�����
		      if(teacherDao.isLogin(teacher)){
		    	  return "success2";
		    	  }
	      }
		  //�����һ���ж�ʧ�ܣ���һ���ж��û��ǲ���stu�û�
	       else if("1".equals(type)){
		       stu.setStupass(password);
		       stu.setStuname(username);
		       if(stuDao.isLogin(stu)){
		    	   return "success1";
		    	   }

	      }
		  return "input";
	}
	
	  List listss = new ArrayList();
	public String Listss() throws Exception {			//����ѧ���ɼ�չʾ
		   Map attibutes = ActionContext.getContext().getSession(); 
		   String SS = username;
		   int stuid = Integer.parseInt(SS);
		   listss = stuDao.Listss(stuid);	
		   ActionContext.getContext().put("listss", listss);
		   return "listss";
	}
	
		List listtc = new ArrayList();
		CourseDao couDao = new CourseDao();
	public String Listtc() throws Exception {			//��ʦ���ڵĿγ�
		   Map attibutes = ActionContext.getContext().getSession(); 
		   String TC = username;
		   int teacherid = Integer.parseInt(TC);
		   listtc = couDao.Listtc(teacherid);
		   ActionContext.getContext().put("listtc", listtc);
		   return "listtc";
	}
}

