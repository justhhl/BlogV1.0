<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
 	<link href="css/base.css" rel="stylesheet">
    <link href="css/mood.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="。./js/modernizr.js"></script>
    <script src="../js/silder.js"></script>

</head>
<body>

<c:set var="article" value="${requestScope.articlelist}"/>
<c:if test="${empty article}"><br><center>该博主暂时没有发表文章哦！</center></c:if>
<c:if test="${!empty article}">
    <div class="moodlist">
        
        <div class="bloglist1">
        <c:forEach var="single" items="${article}">
            <ul class="arrow_box">
                <div class="sy">

           <a href="my/guest/article?action=singleShow&id=${single.id}">
           <font color="#4E6900"><c:out value="${single.artTitle}" escapeXml="false"/></font></a>

                    <p> <c:out value="${single.artCutContent}" escapeXml="false"/></p>
                     <a href="my/guest/article?action=singleShow&id=${single.id}">阅读全文</a>

                    <font color="gray">阅读：${single.artCount} 次 | 评论：${single.revCount}</font>
                    </div>
                <span class="dateview1">${single.artPubTime}</span>

           
</ul>
        </c:forEach>
    </div>
    
        </div>
    
    
    <jsp:include page="/pages/page.jsp"/>

</c:if>

</body>
</html>