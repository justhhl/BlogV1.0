<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<div class="container" style="width:60%;">
    <div class="row">

<c:set var="single" value="${requestScope.photosingle}"/>
<c:if test="${empty single}"><br><center>☆★☆ 对不起，查看图片详细信息失败！☆★☆</center></c:if>
<c:if test="${!empty single}">
    <!-- 显示图片详细信息 -->

<div class="col-xs-offset-2 col-xs-6 ">

                <a class="thumbnail" href="pages/photo/bigShow.jsp?src=${single.photoSrc}" title="点击放大图片" target="_blank"><img src="images/photo/${single.photoSrc}" width="100%" height="200px" style="border:1 solid;border-color:lightgrey"></a>
    <div class="caption">
        <h3>图片介绍：</h3>
        <p> <c:out value="${single.photoInfo}" escapeXml="false"/></p>
        <span>上传时间：<c:out value="${single.photoUptime}"/></span><br>
        <a href="javascript:window.history.go(-1)" class="btn btn-primary btn-sm">【返回】</a>


</div>

     </div>
     <div class=" col-xs-4 ">


</c:if>
        </div>
    </div>