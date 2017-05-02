<%@ page language="java" contentType="text/html; charset=GBK"%>
<%
	response.addHeader("Pragma","No-cache");
	response.addHeader("Cache-Control","no-cache");
	response.addDateHeader("Expires",1);
	request.setCharacterEncoding("gb2312"); 
%>
<style type="text/css">
body { background-image: url("1.jpg");background-size: 100% 775px; background-repeat:no-repeat;}
</style>
<body>
<jsp:useBean id="regUser" class="com.valueBean.UserSingle" scope="request">
	<jsp:setProperty name="regUser" property="*"/>
</jsp:useBean>
<jsp:forward page="/goIndex"/>
</body>