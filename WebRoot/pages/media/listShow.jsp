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

                            <li>我的影音</li>
                        </ul>
                    </div>
                </div>
            </div>
<c:set var="media" value="${requestScope.medialist}"/>
<c:if test="${empty media}"><ul class="gallery-grid ourHolder">☆★☆ 博主暂时没有上传任何视频！☆★☆</ul></c:if>
<c:if test="${!empty media}">

    <ul class="gallery-grid ourHolder">
        <c:forEach var="sonlist" items="${media}">

                <c:forEach var="single" items="${sonlist}">
                    
                        <c:if test="${empty single}">
                            <li class="item"  value="images">
                            <a class="thumb"><img src="images/media/null.jpg" style="height:100%;width:100%;" ></a>
                            
                            <br><center><font color="lightgrey"><b>没有视频预览</b></font></center><br>
                            </li>
                        </c:if>
                        <c:if test="${!empty single}">
                            <li class="item" value="images">
                            <a class="thumb" href="my/guest/media?action=singleShow&id=${single.id}" title="点击播放《${single.mediaTitle}》视频"><img src="images/media/${single.mediaPic}"  style="height:100%;width:100%;" ></a>
                            <font color="lightgrey">
                                观：${single.lookCount}<br>
                                评：${single.reviCount}<br>
                                题：${single.subMediaTitle}
                            </font>
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