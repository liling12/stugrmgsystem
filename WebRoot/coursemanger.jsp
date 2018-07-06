<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>课程管理</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							课程信息浏览
						</h1>
					</div>
				</div>
					<table class="table" border="2">
						<tr class="table_header">
							<td>
								课程名：
							</td>
							<td>
								班级：
							</td>
							<td>
								学期：
							</td>
							<td>
								教师：
							</td>
						</tr>	
  
<s:iterator  value="#listcou" id="course"> 
       <tr> 
          <td><s:property value="#course.coursename"/></td> 
          <td><s:property value="#course.classname"/></td>
          <td><s:property value="#course.gradename"/></td>
          <td><s:property value="#course.teachername"/></td>  
       </tr>  
      </s:iterator>
         </table>
         <a href = "ListC.action" >添加新的课程</a>
         <a href = "admin.jsp" >返回</a> 
				</div>
			</div>
	</body>
</html>

