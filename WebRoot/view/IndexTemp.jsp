<%@ page contentType="text/html; charset=gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String mainPage=(String)request.getAttribute("mainPage");
	if(mainPage==null||mainPage.equals(""))
		mainPage="default.jsp";
%>
<html>
	<head>
		<title>ΆΰΓ½Με²©ΏΝ</title>
		<base href="<%=basePath%>">
		<link type="text/css" rel="stylesheet" href="css/style.css">
		 <link href="css/base.css" rel="stylesheet">
    	<link href="css/index.css" rel="stylesheet">
    	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    	<!--[if lt IE 9]>
    	<script src="../js/modernizr.js"></script>
    <![endif]-->
	</head>
	<body>
    	
	    
	         <%@ include file="top.jsp" %>
			
			<jsp:include page="<%=mainPage%>"/>
			<%@ include file="end.jsp" %>     
	   
	    <script src="../js/silder.js"></script>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</body>
</html>