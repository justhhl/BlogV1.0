<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
 	<link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="。./js/modernizr.js"></script>

</head>
<body>

<header>
    <div id="logo" style=""><a href=""></a></div>
    <nav class="topnav" id="topnav">
        <!-- data-target触发模态弹出窗元素 -->

        <c:set var="visitor" value="${sessionScope.logoner}"/>
        <c:if test="${empty visitor}">
            <button class="btn btn-primary" data-toggle="modal" data-target="#mymodal-data" type="button">登录</button>
            <div class="modal fade" id="mymodal-data" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            
                        </div>
                        <div class="modal-body">
                           <form action="my/logon" method="post">
    <h2 class="text-center">博客登录</h2>
    <input type="hidden" name="goWhere" value="${param['goWhere']}">

    <c:out value="${requestScope.message}" escapeXml="false"/>
    <div class="form-group login-text" style="text-align: left;">
        <label> 用户名：</label>
                       <input class="form-control" type="text" name="userName" size="30" placeholder="请输入您的用户名" required autofocus>
        </div>
    <div class="form-group login-text" style="text-align: left;">
        <label> 密&nbsp;&nbsp;码：</label>
                       <input class="form-control" type="password" name="userPswd" size="30"  placeholder="请输入您的密码" required>

        </div>
                            <button type="submit"  class="btn btn-lg btn-primary btn-block login-text">登录</button>
                            <button type="reset" class="btn btn-lg btn-primary btn-block login-text">重置</button>


</form>
                        </div>
                        <div class="modal-footer">
                            <button type="button"   class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button"  class="btn btn-primary">保存</button>
                        </div>
                    </div>
                </div>
            </div>

          <a href="pages/regBlog.jsp">     <button class="btn btn-primary" data-toggle="modal" data-target="#mymodal-data1" type="button">注册</button>
            </a><!-- 模态弹出窗内容 -->
            <div class="modal fade" id="mymodal-data1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" style=""></h4>
                        </div>
                        <div class="modal-body">
                            <center>
    <c:out value="${requestScope.message}" escapeXml="false"/>

                <form action="userReg?action=upIco" method="post" enctype="multipart/form-data">
                   头像：
                           <input type="file" name="userIco" size="50" value="${param.userIco}">【建议尺寸：237*140】
                       <input type="submit" value="上传头像">
                       <hr size="3">

                </form>

                <form action="../151/welcome.jsp" method="post">
                    <div class="form-group login-text" style="text-align: left;">
                    <input  type="hidden" name="action" value="userReg">
                        <label> 姓名：</label>
                           <input class="form-control" type="text" name="userName" size="40" value="${param.userName}">
                       </div>

                    <div class="form-group login-text" style="text-align: left;">
                        <label>密码： </label>
                           <input class="form-control" type="password" name="userPswd" size="30">
                    </div>

                        <div class="form-group login-text" style="text-align: left;">
                            <label>确认密码： </label>
                           <input class="form-control" type="password" name="aginPswd" size="30">
                        </div>
                            
                            <div class="form-group login-text" style="text-align: left;">
                                <label>性别： </label>
                     <input  type="radio" name="userSex" value="男" checked>男
                                <input type="radio" name="userSex" value="女">女

                                </div>
                    
                                <div class="form-group login-text" style="text-align: left;">
                                    <label>电话： </label>
                                    <input class="form-control" type="text" name="userOicq" size="20" value="${param.userOicq}">
            
                                    </div>
                    
                                    <div class="form-group login-text" style="text-align: left;">
                                        <label>E-mail： </label>
                    <input class="form-control" type="text" name="userEmail" size="35" value="${param.userEmail}">

                                        </div>
                    
                                        <div class="form-group login-text" style="text-align: left;">
                                            <label> 博客名称： </label>
                    <input class="form-control" type="text" name="userBlogName" size="35" value="${param.userBlogName}">

                                            </div>
                    
                                            <div class="form-group login-text" style="text-align: left;">
                                                <label>个性签名： </label>
                           <input class="form-control" type="text" name="userMotto" size="35" value="${param.userMotto}">

                                                </div>
                    
                                                <div class="form-group login-text" style="text-align: left;">
                                                    <label>来自： </label>
                    <input class="form-control" type="text" name="userFrom" size="50" value="${param.userFrom}">

                                                    </div>
                    
                                <button class="btn btn-lg btn-primary btn-block login-text" type="submit" >注册博客</button>
                                <button class="btn btn-lg btn-primary btn-block login-text" type="reset" >重新填写</button>

                </form>

</center>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary">保存</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <c:if test="${!empty visitor}">
			<strong><c:out value="博客名：${visitor.userName}"/></strong>
        </c:if>



        <!-- data-target触发模态弹出窗元素 -->

       
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
          <!--  <li> <a href="my/logon?goWhere=adminTemp">管理博客</a></li> --> 
          <li> <a href="my/admin/article?action=adminList">管理博客</a></li>
             
            
        </ul>

    </div>
</div>

</body>
</html>