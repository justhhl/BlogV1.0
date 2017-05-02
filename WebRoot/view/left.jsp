<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>
<head>
 	<link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="。./js/modernizr.js"></script>

</head>
<body>


			<div class="col-sm-3 col-md-2 sidebar">    
			
    <div class="news">
        <h3>
            <p>个人<span>形象</span></p>
        </h3>
        <c:set var="master" value="${sessionScope.callBlogMaster}"/>
        <ul class="rank">
          <!--   <li><a href="my/admin/friend?action=insert"><img src="images/myIco1.jpg">【加为好友】</a></li>
            <li> <a href="my/guest/word?action=linkTo"><img src="images/myIco2.jpg">【给我留言】</a></li>--> 
            <li><a href="my/admin/friend?action=insert">加为好友</a></li>
            <li> <a href="my/guest/word?action=linkTo">给我留言</a></li>
            	<li>博主：<c:out value="${sessionScope.callBlogMaster.userName}"/></li>
             	<li>签名：<c:out value="${sessionScope.callBlogMaster.userMotto}"/></li>	
        </ul>

        <h3 class="ph">
            <p>活动<span>地带</span></p>
        </h3>

        <ul class="paih">
            <li><a href="pages/myInfo.jsp" target="_blank">个人资料</a></li>
        
            <li><a href="my/guest/article?action=listShow">我的文章</a></li>
            <li><a href="my/guest/photo?action=listShow">我的相册</a></li>
            <li><a href="my/guest/media?action=listShow">我的影音</a></li>
            <li><a href="my/guest/word?action=linkTo">给我留言</a></li>
        </ul>
        <h3 class="news">
            <p>文章<span>推荐</span></p>
        </h3>
        <c:set var="elect" value="${sessionScope.electlist}"/>

        <ul class="rank">
            <c:if test="${empty elect}">
            <li>没有推荐文章哦！</li>
        </c:if>

        <c:if test="${!empty elect}">
            <c:forEach var="esingle" items="${elect}">
                <li><a href="${esingle.electSrc}"><c:out value="${esingle.electTitle}" escapeXml="true"/></a></li>
            </c:forEach>
        </c:if>

        </ul>
        <h3 class="ph">
            <p>好友<span>博客</span></p>
           <!--   <a href="my/guest/friend?action=listShow" target="_blank">更多</a>-->
        </h3>
        <c:set var="friend" value="${sessionScope.friendlist}"/>
        <ul class="rank">
            <c:if test="${empty friend}">
                <li>没有添加好友哦！</li>
            </c:if>
            <c:if test="${!empty friend}">
                <c:forEach var="fsingle" items="${friend}">

                       <li><a href="my/goBlog?master=${fsingle.id}" title="${fsingle.userName}"><c:out value="${fsingle.cutUserBlogName}" escapeXml="true"/></a></li>

                </c:forEach>
            </c:if>

        </ul>
        <h3 class="news">
            <p>友情<span>链接</span></p>
        </h3>

        <c:set var="link" value="${sessionScope.linklist}"/>
        <ul class="rank">
            <c:if test="${empty link}">
                <li>没有友情链接哦！</li>
            </c:if>
            <c:if test="${!empty link}">
                <c:forEach var="lsingle" items="${link}">
                    <li><a href="${lsingle.linkSrc}"><c:out value="${lsingle.cutLinkTitle}" escapeXml="true"/></a></li>
                </c:forEach>
            </c:if>
        </ul>
        <h3 class="ph">
            <p>访问<span>排行</span></p>
        </h3>

        <c:set var="top" value="${sessionScope.toplist}"/>
        <ul class="paih">
            <li><strong>前10名</strong></li>
            <c:if test="${!empty top}">
                <c:forEach var="tsingle" items="${top}">

                        <li><a href="my/goBlog?master=${tsingle.id}"><c:out value="${tsingle.userName}" escapeXml="true"/></a>
                            <c:out value="${tsingle.userHitNum}"/> 次&nbsp;</li>

                </c:forEach>
            </c:if>
        </ul>

    </div>
    <!-- Baidu Button BEGIN -->
    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare"><a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span><a class="shareCount"></a></div>
    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
    </script>
    <!-- Baidu Button END -->
    <a href="/" class="weixin"> </a>
</div>

</body>
</html>