<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        相册管理
        <span class="c-999 en">&gt;</span>
        浏览相册
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <div class="panel" >
        <div class="panel-heading"><h2 class="panel-title">我的相册 共 ${requestScope.createPage.allR} 张</h2></div>
            <div class="panel-body" style="text-align: center">


        <c:set var="photo" value="${requestScope.photolist}"/>
<c:if test="${empty photo}"><br><center>☆★☆ 博主暂时没有上传任何图片！☆★☆</center></c:if>
<c:if test="${!empty photo}">
    <div class="row placeholders" id="dishesbord">


           
           <c:out value="${requestScope.message}" escapeXml="false"/>

        <c:forEach var="sonlist" items="${photo}">
            <div class="col-xs-6 col-sm-4 placeholder">

                <c:forEach var="single" items="${sonlist}">

                        <c:if test="${empty single}">
                            <img src="images/photo/null.jpg" class="img-thumbnail"  style='border-radius:20px;width:100%;height:200px'>
                           <span class="text-muted">默认图片</span>
                        </c:if>
                        <c:if test="${!empty single}">
                            <a href="my/admin/photo?action=adminSingle&id=${single.id}"><img src="images/photo/${single.photoSrc}" class="img-thumbnail"
                                                                                             style='border-radius:20px;width:100%;height:200px'></a>
                            <span class="text-muted"> ${single.subPhotoInfo}</span>
                            <a  href="my/admin/photo?action=delete&id=${single.id}" ><i class="Hui-iconfont">&#xe6e2;</i></a>
                        </c:if>
                    
                </c:forEach>

            </div>

        </c:forEach>
        </div>

    <jsp:include page="/pages/page.jsp"/>
</c:if>
        </div>
    </section>
