<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>增加学期</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							添加新的学期
						</h1>
					</div>
				</div>
			<form action="addGrade.action" method="post">
				<table  class="form_table">
						<tr>
						<td valign="middle" align="right">学期号:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="gradeid" />
						</td>
						</tr>
								
						<tr>
						<td valign="middle" align="right">学期:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="gradename" />
						</td>
						</tr>
						</table>
						<div align="left">
							<tr valign="bottom">
							<input type="submit" value="添加">
							<input type=button value="返回" onclick="location='ListGrade.action'"/>
							</tr>
							</form>
						</div>

			</div>
		</div>
		
	</body>
</html>