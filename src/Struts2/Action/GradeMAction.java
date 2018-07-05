package Struts2.Action;

import Struts2.Dao.GradeDao;
import Struts2.user.Grade;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class GradeMAction {
	private int gradeid;
	private int gradename;

	Grade grade = new Grade();
	GradeDao gradedao = new GradeDao();
    List list = new ArrayList();
    
    
	public int getGradeid() {
		return gradeid;
	}
	public void setGradeid(int gradeid) {
		this.gradeid = gradeid;
	}
	public int getGradename() {
		return gradename;
	}
	public void setGradename(int gradename) {
		this.gradename = gradename;
	}
    
	public String ListGrade() throws Exception {				//查看学期List
		   Map attibutes = ActionContext.getContext().getSession(); 
		   list=gradedao.ListGrade();
		   ActionContext.getContext().put("listg", list);
		   return "grade";
		}
	
	public String addGrade() throws Exception { 			//学期add
		grade.setGradeid(gradeid);
		grade.setGradename(gradename);
		boolean flag=gradedao.addGrade(grade);
		if(flag=true)
	   return "Agrade";
		else
	   return "fail";
	}
	
 
}
