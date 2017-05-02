<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        影音管理
        <span class="c-999 en">&gt;</span>
        浏览影音
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">
        <div class="panel" >
            <div class="panel-heading"><h2 class="panel-title">我的影音 共  ${requestScope.createPage.allR} 个</h2></div>
            <div class="panel-body" style="text-align: center">
                
<c:set var="media" value="${requestScope.medialist}"/>
<c:if test="${empty media}"><br><center>☆★☆ 博主暂时没有上传任何视频！☆★☆</center></c:if>
<c:if test="${!empty media}">
    <div class="row placeholders" id="dishesbord">
   
    <c:out value="${requestScope.message}" escapeXml="false"/>
       
        <c:forEach var="sonlist" items="${media}">
            <div class="col-xs-6 col-sm-4 placeholder">
            
                <c:forEach var="single" items="${sonlist}">
                   
                        <c:if test="${empty single}">
                            
                            <img src="images/media/null.jpg" class="img-thumbnail"  style='border-radius:20px;width:95%;height:200px'>
                            <span class="text-muted">没有视频预览</span>
                        </c:if>
                        <c:if test="${!empty single}">
                            
                            <a href="my/admin/media?action=adminSingle&id=${single.id}" title="点击播放《${single.mediaTitle}》视频"><img src="images/media/${single.mediaPic}" class="img-thumbnail"
                                                                                                                                  style='border-radius:20px;width:95%;height:200px'></a>
                           <span class="text-muted"> 观：${single.lookCount}</span><br>
                            <span class="text-muted">评：${single.reviCount}</span><br>
                            <span class="text-muted">题：${single.subMediaTitle}</span><br>
                            <a href="my/admin/media?action=delete&id=${single.id}"><i class="Hui-iconfont">&#xe6e2;</i></a>
                        </c:if>
                 
                </c:forEach>
            </div>
        </c:forEach>
    </div>
    <jsp:include page="/pages/page.jsp"/>
</c:if>
                </div>
            </div>
        </div>
    </section>