<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<body>
<head>
		<title>学生成绩修改</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							学生成绩修改
						</h1>
					</div>
				</div>
		<s:form action="updateSc.action" method="post">
				<table  class="form_table" >
					<tr><s:textfield class="inputgri" name="gradename" label="学期" value="%{#ListSc.gradename}" readonly="true" /></tr>
					<tr><s:textfield class="inputgri" name="classname" label="班级" value="%{#ListSc.classname}" readonly="true"/></tr>
					<tr><s:textfield class="inputgri" name="stuname" label="学生姓名" value="%{#ListSc.stuname}" readonly="true"/></tr>
					<tr><s:textfield class="inputgri" name="score" label="成绩" value="%{#ListSc.score}" /></tr>
					<tr><s:hidden name="stuid" value ="%{#ListSc.stuid}"/></tr>
					<tr><s:hidden name="coursename" value ="%{#ListSc.coursename}"/></tr>
					<tr><s:submit value = "修改"/></tr>
				</table>
		</s:form>
         <a href = "Scourse.action?coursename=${ListSc.coursename}" >返回</a> 	
				</div>
			</div>
</body>
</html>