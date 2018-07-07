<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>学生信息</title>
</head>
<body>
	<div id="wrap">
		<div id="top_content">
			<div id="header">
				<div id="rightheader"></div>
				<div id="topheader">
					<h1 id="title"> 我的成绩 </h1>
				</div>
			</div>
			<table class="table" border="2" bgcolor="lightblue">
				<tr class="table_header">
					<td> 课程 </td>
					<td> 任课老师 </td>
					<td> 成绩 </td>
					<td> 操作 </td>
				</tr>

				<s:iterator value="#listss" id="stu">
					<tr>
						<td><s:property value="#stu.coursename" /></td>
						<td><s:property value="#stu.teachername" /></td>
						<td><s:property value="#stu.score" /></td>
						<td><a href="Login.jsp">返回</a></td>
					</tr>
				</s:iterator>
			</table>

			

		</div>
	</div>
</body>
</html>
