<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>教师管理</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							教师信息浏览
						</h1>
					</div>
				</div>
					<table class="table" border="2" bgcolor="lightblue">
						<tr class="table_header">
							<td>
								教师号
							</td>
							<td>
								教师姓名
							</td>
							<td>
								教师性别
							</td>
							<td>
								教师密码
							</td>
							<td>
							        操作
							</td>
						</tr>	
  
<s:iterator  value="#listt" id="teach"> 
       <tr>  
          <td><s:property value="#teach.teacherid"/></td>  
          <td><s:property value="#teach.teachername"/></td>  
          <td><s:property value="#teach.teachersex"/></td>   
          <td><s:property value="#teach.teacherpass"/></td>
          <td><a href = "STeacher.action?teacherid=${teach.teacherid}" >修改信息</a>  
       </tr>  
      </s:iterator>
         </table>
		<input type=button value="添加教师" onclick="location='addT.jsp'"/>
		<input type=button value="返回" onclick="location='admin.jsp'"/></p>
				</div>
			</div>
	</body>
</html>
