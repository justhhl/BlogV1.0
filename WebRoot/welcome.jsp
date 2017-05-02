<%@ page contentType="text/html;charset=gb2312"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
body { background-image: url("images/1.jpg");background-size: 100% 775px; background-repeat:no-repeat;}
</style>
<html>
<head>
    <title>浏览所有博客</title>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
    <script src="../js/modernizr.js"></script>
</head>
<body>
<table>
<!--  style="background: #FFF url(images/xinzhi3.jpg) ;width:1000px;height:100%"-->
<center>
    <c:set var="user" value="${requestScope.masterlist}"/>
<div style="height: 200px;margin: auto;"></div>
    <c:if test="${empty user}">
        <table border="10" width="1003" height="167"  style="margin-top:1;margin-bottom:1"><tr><td align="center">该服务器中不存在任何博客哦！</td></tr></table>
    </c:if>

    <c:if test="${!empty user}">
        <div style="text-align: center;width: 80%;" >

            
            <div style="text-align: center">
            <table border="0" align="right">
            	<tr>
            		<td colspan="1" align="center" height=50px width=300px>   推荐博客</td>
           		</tr>
          		<c:forEach var="single" items="${user}">
 				<tr>
 					<td align="center"><a href="my/goBlog?master=${single.id}"><p style="font:20px bold  italic"> ${single.userBlogName}</p></a>
 					</td>
 				 <td text-align="right"><p style="font:20px bold  italic">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
          			</td>	<!--${single.userName}  -->
               </tr>
            	</c:forEach>
             </table>
            </div>
                        <div style="height: auto;text-align: right">
                        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!--btn btn-primary  -->
               <button class="btn btn-lg btn-link" data-toggle="modal" data-target="#mymodal-data" type="button" color="black">登录</button>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
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
<br/>
   <a href="pages/regBlog.jsp">   <button class="btn btn-lg btn-link" data-toggle="modal" data-target="#mymodal-data1" type="button">注册</button>
     </a>           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
            <!-- 模态弹出窗内容 -->
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

                <form action="pages/getRegForm.jsp" method="post">
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
                                    <label>OICQ： </label>
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
            </div>
        </div>
    </c:if>
    
</center>
</table>
<table border="1" width="100%">

</table>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<script>
    $(function(){
  $(".btn").click(function(){
    $("#themodal").modal();
  });
});
</script>
</body>
</html>