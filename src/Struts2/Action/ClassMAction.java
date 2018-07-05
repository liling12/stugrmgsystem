package Struts2.Action;

import Struts2.Dao.ClassDao;
import Struts2.user.Class;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
public class ClassMAction {
	private int classid;
	private String classname;

	Class cl = new Class();
	ClassDao cldao = new ClassDao();
    List list = new ArrayList();
    List listCl = new ArrayList();
    
    
	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String ListClass() throws Exception {				//查看班级List
		   Map attibutes = ActionContext.getContext().getSession(); 
		   list=ClassDao.ListClass();
		   ActionContext.getContext().put("listcl", list);
		   return "class";
		}
	
	public String addClass() throws Exception { 			//班级add
		cl.setClassid(classid);
		cl.setClassname(classname);
		boolean flag=ClassDao.addClass(cl);
		if(flag=true)
			return "Aclass";
		else
			return "fail";
	}
	
	public String ListCl() throws Exception {		
		   listCl = ClassDao.ListCl();	
		   ActionContext.getContext().put("listCl", listCl);
	    return "success" ;	   
	}  
}
