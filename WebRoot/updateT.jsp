<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<body>
<head>
		<title>教师信息修改</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							教师信息修改
						</h1>
					</div>
				</div>
		<s:form action="updateT.action" method="post" theme="simple">
				<table  class="form_table" >
					<tr>教师号:<s:textfield class="inputgri" name="teacherid"  value="%{#teach.teacherid}" readonly="true" /></tr>
					<tr>教师名称:<s:textfield class="inputgri" name="teachername"  value="%{#teach.teachername}" /></tr>
					<tr>教师性别:<s:textfield class="inputgri" name="teachersex"  value="%{#teach.teachersex}" /></tr>
					<tr>教师密码:<s:textfield class="inputgri" name="teacherpass"  value="%{#teach.teacherpass}" /></tr>
					<tr><input type=button value="返回" onclick="location='ListTea.action'"/>	
					<s:submit value = "修改"/></tr>				
				</table>
		</s:form>		
				</div>
			</div>
</body>
</html>
