<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<body>
<head>
		<title>学生信息修改</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							学生信息修改
						</h1>
					</div>
				</div>
		<s:form action="updateS.action" method="post" theme="simple">
					<table>
					<tr>学生号:<s:textfield class="inputgri" name="stuid"  value="%{#stu.stuid}" readonly="true" /></tr>
					<tr>学生姓名:<s:textfield class="inputgri" name="stuname"  value="%{#stu.stuname}" /></tr>
					<tr>学生性别:<s:textfield class="inputgri" name="stusex"  value="%{#stu.stusex}" /></tr>
					<tr>登陆密码:<s:textfield class="inputgri" name="stupass"  value="%{#stu.stupass}" /></tr>
					</table>
					<tr>班&nbsp;&nbsp;&nbsp;&nbsp;级：
					<select name="classname">
					<s:iterator var="stu" value="#listCl">
					<option>
					<s:property value="#stu.classname"/>
					</option>
					</s:iterator>
					</select></tr>
					<s:submit value = "修改"/>				
					<input type=button value="返回" onclick="location='ListStu.action'"/>				
		</s:form>	
				</div>
			</div>
</body>
</html>

