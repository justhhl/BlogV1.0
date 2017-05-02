<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
<link href="css/style1.css" rel="stylesheet" type="text/css" />

<link href="css/fancybox.css" rel="stylesheet" type="text/css" />
</head>
<body>



 <div id="smoothmenu1" class="ddsmoothmenu">
        <ul>

        </ul>

    </div>



<div id="contentsec">
    <div class="inner">
        <div class="fullwidth overflow">
            <!-- Gallery Filter Buttons Start -->
            <div class="gallery-filter">
                <p class="total-pics"></p>
                <div class="right">
                    <div class="filter">
                        <ul id="filterOptions">

                            <li>我的图片</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Gallery Filter Buttons End -->


<c:set var="photo" value="${requestScope.photolist}"/>
<c:if test="${empty photo}"><br>
    <ul class="gallery-grid ourHolder">
    ☆★☆ 博主暂时没有上传任何图片！☆★☆
        </ul>


</c:if>

<c:if test="${!empty photo}">
    <ul class="gallery-grid ourHolder">

   
        <c:forEach var="sonlist" items="${photo}">

                <c:forEach var="single" items="${sonlist}">

                        <c:if test="${empty single}">
                            <li class="item"  value="images">
                                <a href="#" class="thumb"><img src="images/photo/null.jpg"  style="height:100%;width:100%;"/></a>
                            </li>
                        </c:if>
                        <c:if test="${!empty single}">
                            <li class="item" value="images">
                            <a href="my/guest/photo?action=singleShow&id=${single.id}" class="thumb"><img src="images/photo/${single.photoSrc}"  style="height:100%;width:100%;"></a>
                            <b><font color="lightgrey">${single.subPhotoInfo}</font></b>
                            </li>
                        </c:if>

                </c:forEach>

        </c:forEach>


        </ul>
</c:if>

</div>
        </div>
    </div>
    </body>

</html>