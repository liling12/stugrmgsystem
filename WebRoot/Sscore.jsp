<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>教师管理成绩管理</title>
</head>
<body>
	<div id="wrap">
		<div id="top_content">
			<div id="header">
				<div id="rightheader"></div>
				<div id="topheader">
					<h1 id="title">课程成绩浏览</h1>
				</div>
			</div>
			<table class="table" border="2" bgcolor="lightblue">
				<tr class="table_header">
					<td>学期</td>
					<td>班级</td>
					<td>学生姓名</td>
					<td>成绩</td>
					<td>操作</td>
				</tr>

				<s:iterator value="listct" id="score">
					<tr>
						<td><s:property value="#score.gradename" /></td>
						<td><s:property value="#score.classname" /></td>
						<td><s:property value="#score.stuname" /></td>
						<td><s:property value="#score.score" /></td>
						<%-- <td><s:hidden value="#score.stuid" /></td> --%>
						<%-- <td><s:hidden value="#score.coursename" /></td> --%>
						<td><a href="ListSc.action?stuname=<s:property value="#score.stuname"/>">修改信息</a></td>
					</tr>
				</s:iterator>
			</table>
			<a href="Login.jsp">返回</a>
		</div>
	</div>
	<s:debug />
</body>
</html>