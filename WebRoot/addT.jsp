<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	
<html>
	<head>
		<title>增加教师</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							添加教师信息
						</h1>
					</div>
				</div>
			<form action="addTea.action" method="post">
				<table  class="form_table">
					<tr>
						<td valign="middle" align="right">教师号:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="teacherid" />
						</td>
						</tr>
						
						<tr>
						<td valign="middle" align="right">教师名称:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="teachername" />
						</td>
						</tr>
						
						<tr>
						<td valign="middle" align="right">教师性别:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="teachersex" />
						</td>
						</tr>
						
						<tr>
						<td valign="middle" align="right">登录密码:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="teacherpass" />
						</td>	
						</table>
						<div aligns="left">
							<tr valign="bottom">
							<input type="submit" value="添加">
							<input type=button value="返回" onclick="location='ListTea.action'"/>
							</tr>
							</form>
						</div>

			</div>
		</div>
		
	</body>
</html>
