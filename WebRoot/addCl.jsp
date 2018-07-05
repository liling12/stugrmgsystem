<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>增加班级</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							添加新的班级
						</h1>
					</div>
				</div>
			<form action="addClass.action" method="post">
				<table  class="form_table">
						<tr>
						<td valign="middle" align="right">班级号:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="classid" />
						</td>
						</tr>
								
						<tr>
						<td valign="middle" align="right">班级:
						</td>
						<td valign="middle" align="left">
						<input type="text" class="inputgri" name="classname" />
						</td>
						</tr>
						</table>
						<div align="left">
							<tr valign="bottom">
							<input type="submit" value="添加">
							<input type=button value="返回" onclick="location='ListClass.action'"/>
							</tr>
							</form>
						</div>

			</div>
		</div>
		
	</body>
</html>
