<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	response.addHeader("Pragma","No-cache");
	response.addHeader("Cache-Control","no-cache");
	response.addDateHeader("Expires",1);

	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>查看博主资料</title>
		<base href="<%=basePath%>">
		<link type="text/css" rel="stylesheet" href="css/style.css">
	</head>
	<body bgcolor="#E0FFFF">
		<center>
    		<c:set var="master" value="${sessionScope.callBlogMaster}"/>

     		<c:if test="${empty master}">
   			<table border="10" width="1003" height="167" background="" bordercolor="#4E6900" style="margin-top:1;margin-bottom:1"><tr><td align="center">查看博主资料失败哦！</td></tr></table>
     		</c:if>

     		<c:if test="${!empty master}">
    		<table border="1" rules="none" width="1003" height="167" background="#E0FFFF" bordercolor="#4E6900" bordercolordark="white" bordercolorlight="#4E6900" cellspacing="0" cellpadding="0" style="margin-top:80">
	      		<tr height="70"><td bgcolor="#d3d3d3" colspan="2" align="center"><h3 style="font-size: 20px;font-family: "Helvetica Neue", Arial, Helvetica, sans-serif" >博主资料</h3></td></tr>
	       		
	       		<tr><td colspan="2" align="center"><img src="images/ico/${master.userIco}" width="237" height="140" style="border:1 solid"></td></tr>
	       		<tr height="40">
	       			<td width="50%" align="right" style="padding-right:20">姓名：</td>
	       			<td><c:out value="${master.userName}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">性别：</td>
	       			<td><c:out value="${master.userSex}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">电话：</td>
	       			<td><c:out value="${master.userOicq}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">E-mail：</td>
	       			<td><c:out value="${master.userEmail}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">来自：</td>
	       			<td><c:out value="${master.userFrom}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">博客：</td>
	       			<td><c:out value="${master.userBlogName}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">签名：</td>
	       			<td><c:out value="${master.userMotto}"/></td>
	       		</tr>
	       		<tr height="30" >
	       			<td align="right" style="padding-right:20">创建时间：</td>
	       			<td><c:out value="${master.userCTTime}"/></td>
	       		</tr>
	       		<tr height="30">
	       			<td align="right" style="padding-right:20">访问次数：</td>
	       			<td><c:out value="${master.userHitNum}"/> 次</td>
	       		</tr>
		   	</table>
       		</c:if>
			<table border="0" width="1003" height="128" cellpadding="0" cellspacing="0"><tr><td background=""></td></tr></table>
    	</center>
	</body>
</html>