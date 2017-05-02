<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        相册管理
        <span class="c-999 en">&gt;</span>
        相册大图
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">
        <article class="page-container">

<c:set var="single" value="${requestScope.photosingle}"/>
<c:if test="${empty single}"><br><center>☆★☆ 对不起，查看图片详细信息失败！☆★☆</center></c:if>
<c:if test="${!empty single}">
    <!-- 显示图片详细信息 -->

    <div class="col-xs-offset-2 col-xs-6 ">

                <a class="thumbnail" href="pages/photo/bigShow.jsp?src=${single.photoSrc}" title="点击放大图片" target="_blank"><img src="images/photo/${single.photoSrc}" width="100%" height="350" style="border:1 solid;border-color:lightgrey"></a>


        <div class="caption">
            <h3>图片介绍：</h3>
            <p> <c:out value="${single.photoInfo}" escapeXml="false"/></p>
              <span>上传时间：<c:out value="${single.photoUptime}"/></span><br>
            <p>
            <a class="btn btn-danger" href="my/admin/photo?action=delete&id=${single.id}">删除图片</a>
            <a class="btn btn-primary" href="javascript:window.history.go(-1)">返回</a></p>
           </div>
        </div>



</c:if>
            </article>
        </div>
    </section>