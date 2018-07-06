<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>班级管理</title>
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						
					</div>
					<div id="topheader">
						<h1 id="title">
							班级信息浏览
						</h1>
					</div>
				</div>
					<table class="table" border="2">
						<tr class="table_header">
							<td>
								班级号
							</td>
							<td>
								班级
							</td>
						</tr>	
  
<s:iterator  value="#listcl" id="class"> 
       <tr> 
          <td><s:property value="#class.classid"/></td> 
          <td><s:property value="#class.classname"/></td>  
       </tr>  
      </s:iterator>
         </table>
         <a href = "addCl.jsp" >添加新的班级</a>
         <a href = "admin.jsp" >返回</a>
				</div>
			</div>
	</body>
</html>