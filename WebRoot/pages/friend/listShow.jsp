<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>查看我的所有好友</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
</head>
<body>
<center>
    <table border="0" width="1003" height="89" cellpadding="0" cellspacing="0"><tr><td background="images/allBack.jpg"></td></tr></table>
    <c:set var="friend" value="${requestScope.friendList}"/>

    <c:if test="${empty friend}">
        <table border="0" width="1003" height="167" background="images/allBack.jpg" bordercolor="#4E6900" style="margin-top:1;margin-bottom:1">
        <tr><td align="center">该 博主目前没有任何好友哦！</td></tr></table>
    </c:if>

    <c:if test="${!empty friend}">
    <div style="width:80%">
        <table  class="table table-striped  table-hover"  >
            <tr ><td colspan="3" style="padding-left:5" align="center">我的所有好友</td></tr>
            
            <tr>
                <td >姓名</td>
                <td >博客</td>
                <td >访问</td>
            </tr>
           
            <c:forEach varStatus="st" var="single" items="${friend}">
                <tr >
                    <td><c:out value="${single.userName}"/></td>
                    <td><a href="my/goBlog?master=${single.id}" target="_blank"><c:out value="${single.userBlogName}"/></a></td>
                    <td style="padding-left:5"><c:out value="${single.userHitNum}"/> 次</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    </c:if>
    <table border="0" width="1003" height="128" cellpadding="0" cellspacing="0"><tr><td></td></tr></table>
</center>
</body>
</html>