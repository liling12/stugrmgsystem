<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>单学期课程查询</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							课程目录
						</h1>
					</div>
				</div>
					<table class="table" border="2" bgcolor="lightblue">
						<tr class="table_header">
							<td>
								课程名
							</td>
						</tr>	
  
<s:iterator  value="#listgc" id="course"> 
       <tr> 
          <td><s:property value="#course.coursename"/></td>  
       </tr>  
      </s:iterator>
         </table>
         <a href = "ListGrade.action" >返回</a>
				</div>
			</div>
	</body>
</html>
