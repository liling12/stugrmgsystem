<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<title>增加课程</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							添加课程信息
						</h1>
					</div>
				</div>
		<s:form action="addCou" method="post" enctype="multipart/form-data">
			<table>
			<s:textfield name = "coursename" label = "课程名"/></table>
			班&nbsp;&nbsp;&nbsp;&nbsp;级：
			<select name="classname">
				<s:iterator var="course" value="#listCl">
					<option>
						<s:property value="#course.classname"/>
					</option>
				</s:iterator>
			</select><br>
			学&nbsp;&nbsp;&nbsp;&nbsp;期：
			<select name="gradename">
				<s:iterator var="course" value="#listcg">
					<option>
						<s:property value="#course.gradename"/>
					</option>
				</s:iterator>
			</select><br>
			教&nbsp;&nbsp;&nbsp;&nbsp;师：
			<select name="teachername">
				<s:iterator var="course" value="#listct">
					<option>
						<s:property value="#course.teachername"/>
					</option>
				</s:iterator>
			</select><br>
				<div aligns="left">
					<tr valign="bottom">
					<input type="submit" value="添加">
					<input type=button value="返回" onclick="location='ListCou.action'"/>
					</tr>	
			   </div>
		</s:form>
		</div>
	</div>
		
	</body>
</html>
