<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>学生管理</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							学生信息浏览
						</h1>
					</div>
				</div>
					<table class="table" border="2" bgcolor="lightblue">
						<tr class="table_header">
							<td>
								学生号
							</td>
							<td>
								学生姓名
							</td>
							<td>
								学生性别
							</td>
							<td>
								学生密码
							</td>
							<td>
								所在班级
							</td>
							<td>
							 	操作
							</td>
						</tr>	
  
<s:iterator  value="#lists" id="stu"> 
       <tr>  
          <td><s:property value="#stu.stuid"/></td>  
          <td><s:property value="#stu.stuname"/></td>  
          <td><s:property value="#stu.stusex"/></td>   
          <td><s:property value="#stu.stupass"/></td>
          <td><s:property value="#stu.classname"/></td>
          <td><a href = "SStu.action?stuid=${stu.stuid}" >修改信息</a>  
       </tr>  
      </s:iterator>
         </table>
		<input type=button value="添加学生" onclick="location='ListCl.action'"/>
		<input type=button value="返回" onclick="location='admin.jsp'"/></p>
				</div>
			</div>
	</body>
</html>