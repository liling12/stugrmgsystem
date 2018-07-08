<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>学期管理</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							学期信息浏览
						</h1>
					</div>
				</div>
					<table class="table" border="2" bgcolor="lightblue">
						<tr class="table_header">
							<td>
								学期号
							</td>
							<td>
								学期
							</td>
							<td>
								操作
							</td>
						</tr>	
  
	  <s:iterator  value="#listg" id="grade"> 
       <tr> 
          <td><s:property value="#grade.gradeid"/></td> 
          <td><s:property value="#grade.gradename"/></td>
          <td><a href = "Listgc.action?gradename=${grade.gradename}" >查看课程</a>  
       </tr>  
      </s:iterator>
         </table>
         <a href = "addG.jsp" >添加新的学期</a>
         <a href = "admin.jsp" >返回</a> 
				</div>
			</div>
	</body>
</html>