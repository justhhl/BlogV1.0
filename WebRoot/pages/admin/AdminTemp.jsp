<%@ page contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String mainPage=(String)request.getAttribute("mainPage");
	if(mainPage==null||mainPage.equals(""))
		mainPage="default.jsp";
%>
<html>
	<head>
		<title>多媒体博客-后台</title>
		<base href="<%=basePath%>">
		
		 <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    
     <script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js" ></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js" ></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js" ></script>
	</head>
	<body>
    	
	       <%@ include file="top.jsp" %>
        	  <jsp:include page="left.jsp"/>
                	<jsp:include page="<%=mainPage%>"/>
	            
    	       <%@ include file="end.jsp" %>
        	     
	   
	  
	</body>
</html>