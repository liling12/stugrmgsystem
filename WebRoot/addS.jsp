<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>增加学生</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							添加学生信息
						</h1>
					</div>
				</div>
		<s:form action="addStu" method="post" theme="simple">
			<table  class="form_table">
			<tr>学生号:<s:textfield name = "stuid" /></tr>
			<tr>学生姓名:<s:textfield name = "stuname" /></tr>	
			<tr>学生性别:<s:textfield name = "stusex" /></tr>
			<tr>登录密码:<s:textfield name = "stupass" /></tr>
			</table>
			<tr>
			班&nbsp;&nbsp;&nbsp;&nbsp;级：
			<select name="classname">
				<s:iterator var="stu" value="#listCl">
					<option>
						<s:property value="#stu.classname"/>
					</option>
				</s:iterator>
			</select></tr>
			<tr valign="bottom">
			<input type="submit" value="添加">
			<input type=button value="返回" onclick="location='ListStu.action'"/>
			</tr>	
		</s:form>
		</div>
	</div>
		
	</body>
</html>
