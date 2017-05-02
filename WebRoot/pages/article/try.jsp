<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'try.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/base.css" rel="stylesheet">
    <link href="css/mood.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
 
   
    <script src="。./js/modernizr.js"></script>
    <script src="../js/silder.js"></script>

  </head>
  
  <body>
    <header>
  <div id="logo"><a href="/"></a></div>
  <nav class="topnav" id="topnav"><a href="index.html"><span>首页</span><span class="en">Protal</span></a><a href="about.html"><span>关于我</span><span class="en">About</span></a><a href="newlist.html"><span>慢生活</span><span class="en">Life</span></a><a href="moodlist.html"><span>碎言碎语</span><span class="en">Doing</span></a><a href="share.html"><span>模板分享</span><span class="en">Share</span></a><a href="knowledge.html"><span>学无止境</span><span class="en">Learn</span></a><a href="book.html"><span>留言版</span><span class="en">Gustbook</span></a></nav>
  </nav>
</header>
<div class="banner">
    <section class="box">


    </section>
</div>

<div class="template" >
    <div class="box" >
        <h3>

        </h3>
        <ul >
            <li><a href="goIndex">Blog首页</a></li>
            <li> <a href="my/goBlog?master=${sessionScope.callBlogMaster.id}">个人首页</a></li>
            <li><a href="my/guest/article?action=listShow">我的文章</a></li>
            <li><a href="my/guest/photo?action=listShow">我的相册</a></li>
            <li> <a href="my/guest/media?action=listShow">我的影音</a></li>
            <li><a href="my/guest/word?action=linkTo">给我留言</a></li>
            <li> <a href="my/logon?goWhere=adminTemp">管理博客</a></li>
             
            
        </ul>

    </div>
</div>
<div class="moodlist">
  <h1 class="t_nav"><span>删删写写，回回忆忆，虽无法行云流水，却也可碎言碎语。</span><a href="/" class="n1">网站首页</a><a href="/" class="n2">碎言碎语</a></h1>
  <div class="bloglist">
    <ul class="arrow_box">
     <div class="sy">
     <img src="images/001.png">
      <p> 我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。</p>
      </div>
      <span class="dateview">2014-1-1</span>
    </ul>
    <ul class="arrow_box">
         <div class="sy">
      <p> 我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。</p>
        </div>
      <span class="dateview">2014-1-1</span>
    </ul>
    <ul class="arrow_box">
         <div class="sy">
      <img src="images/001.png">
      <p> 我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。</p>
      <span class="dateview">2014-1-1</span>
        </div>
    </ul>
  </div>
  <div class="page"><a title="Total record"><b>41</b></a><b>1</b><a href="/news/s/index_2.html">2</a><a href="/news/s/index_2.html">&gt;</a><a href="/news/s/index_2.html">&gt;&gt;</a></div>
</div>
<footer>
  <p>Design by DanceSmile <a href="http://www.miitbeian.gov.cn/" target="_blank">蜀ICP备11002373号-1</a> <a href="/">网站统计</a></p>
</footer>
  </body>
</html>
