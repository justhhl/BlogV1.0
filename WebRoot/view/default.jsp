<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
 	<link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="../js/modernizr.js"></script>

</head>
<body>
<div class="container-fluid">
		<div class="row">
		<jsp:include page="left.jsp"/>
			<div class="col-sm-8  col-md-9  main">

       <c:set var="media" value="${requestScope.medialist}"/>

<div class="panel panel-danger">
<c:if test="${empty media}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
        我的影音
    </h2>
    </div>

    <div class="panel-body ">
        暂时没有上传任何视频！
    </div>
</c:if>


<c:if test="${!empty media}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
       我的影音
    </h2>
     <a href="my/guest/media?action=listShow"><img src="images/moreB.jpg"></a>
</div>
   <div class="panel-body">

    <div class="row placeholders" id="dishesbord">



        <c:forEach var="mediaBean" items="${media}">

            <div class="col-xs-6 col-sm-3 placeholder">
                <c:if test="${empty mediaBean}">
                   
                    <img class="thumbnail" src="images/media/null.jpg" width="100px" height="120px" style="height: 180px; width: 100%; display: block;" alt="">
                 
                    <div class="caption">
                   <p><font color="lightgrey"><b>没有视频预览</b></font></p>
                        </div>
                </c:if>

                <c:if test="${!empty mediaBean}">
                    <a class="thumbnail" href="my/guest/media?action=singleShow&id=${mediaBean.id}" title="点击播放《${mediaBean.mediaTitle}》视频"><img src="images/media/${mediaBean.mediaPic}" style="height: 180px; width: 100%; display: block;" alt=""></a>
                    <div class="caption">
                        <p><font color="lightgrey"><b>${mediaBean.subMediaTitle}</b></font> </p>
                        </div>
                </c:if>
            </div>
        </c:forEach>
    </div>
</div>
</c:if>
</div>

   <c:set var="article" value="${requestScope.articlelist}"/>
<div class="panel panel-danger">
    
<c:if test="${empty article}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
       我的文章
    </h2>
        </div>
    <div class="panel-body">
        暂时没有上传任何文章！
    </div>

</c:if>

<c:if test="${!empty article}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
        我的文章
    </h2>
     <a href="my/guest/article?action=listShow"><img src="images/moreB.jpg"></a>
        </div>
    <div class="panel-body">
        <div class="row placeholders" id="dishesbord1">
      

        <c:forEach var="articleBean" items="${article}">
            <ul>
                <p><a href="my/guest/article?action=singleShow&id=${articleBean.id}"><font color="#4E6900"><c:out value="${articleBean.artTitle}" escapeXml="false"/></font></a></p>
                <font color="#595959"><c:out value="${articleBean.artCutContent}" escapeXml="false"/></font>

                <a href="my/guest/article?action=singleShow&id=${articleBean.id}" class="readmore" target="_blank">阅读全文</a>
            </ul>
            <p class="dateview"><span> 阅读：${articleBean.artCount} 次 </span><span> 评论：${articleBean.revCount} </span><span> 发表于：${articleBean.artPubTime}
           </span></p>

        </c:forEach>
    </div>
        </div>
</c:if>
    </div>


   <c:set var="photo" value="${requestScope.photolist}"/>
<div class="panel panel-danger">
<c:if test="${empty photo}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
        我的相册
    </h2>
        </div>
    <div class="panel-body">
        暂时没有上传图片！
    </div>

</c:if>

<c:if test="${!empty photo}">
    <div class="panel-heading" style="text-align: center">
    <h2 class="panel-title">
        我的相册
    </h2>
    <a href="my/guest/photo?action=listShow"><img src="images/moreB.jpg"></a>
        </div>
   <div class="panel-body">
    <div class="row placeholders" id="dishesbord2">


        <c:forEach var="photoBean" items="${photo}">
            <div class="col-xs-6 col-sm-3 placeholder">
                <c:if test="${empty photoBean}">
                   
                    <img class="thumbnail" style="height: 180px; width: 100%; display: block;" alt="" src="images/photo/null.jpg" width="100px" height="120px" 
					style="border:1 solid;border-color:white">
                    
                    <div class="caption">
                        <p><font color="lightgrey"><b>没有图片预览</b></font></p>
                    </div>
                </c:if>

                <c:if test="${!empty photoBean}">
                    <a class="thumbnail" href="my/guest/photo?action=singleShow&id=${photoBean.id}" ><img src="images/photo/${photoBean.photoSrc}" width="100px"
					style="height: 180px; width: 100%; display: block;" alt=""></a>
                    <div class="caption">
                        <p><font color="lightgrey"><b>${photoBean.subPhotoInfo}</b></font></p>
                    </div>
                </c:if>
            </div>
        </c:forEach>
    </div>
</div>

</c:if>
</div>

</div>

</div>


</div>

      


</body>
</html>