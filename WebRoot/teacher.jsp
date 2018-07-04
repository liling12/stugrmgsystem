<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>教师查看成绩信息</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							教师的课程查看
						</h1>
					</div>
				</div>
					<table class="table" border="2">
						<tr class="table_header">
							<td>
								课程：
							</td>
						</tr>	
  
<s:iterator  value="#listtc" id="tea"> 
       <tr> 
          <td><s:property value="#tea.coursename"/></td> 
          <td><a href = "Scourse.action?coursename=${tea.coursename}" >查看成绩信息</a>           
       </tr> 
      </s:iterator>
      </table>
      <tr>
         <a href = "Login.jsp" >返回</a> 
         </tr>
				</div>
			</div>
	</body>
</html>
  

