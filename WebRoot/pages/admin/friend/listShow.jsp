<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 好友管理 <span class="c-gray en">&gt;</span> 浏览好友 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
<c:set var="friend" value="${requestScope.friendList}"/>
<c:if test="${empty friend}"><br><center>该博主目前没有添加任何好友哦！</center></c:if>

<c:if test="${!empty friend}">
    <div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span>  </div>
    <div class="mt-10">

           
           <c:out value="${requestScope.message}" escapeXml="false"/>

        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
            <tr><th scope="col" colspan="5">我的所有好友</th></tr>
            <tr class="text-c">
                <th width="25"><input type="checkbox" value="" name=""></th>
                <th width="40">好友姓名</th>
                <th width="100">好友博客</th>
                <th width="300">访问次数</th>
                <th width="70">操作</th>
            </tr>
            </thead>
            <tbody>
  
        <c:forEach var="single" items="${friend}">

            <tr class="text-c">
                <td><input type="checkbox" value="" name=""></td>
                <td><a href="my/admin/friend?action=adminSingle&id=${single.id}" target="_blank"><c:out value="${single.userName}"/></a></td>
                <td><a href="my/goBlog?master=${single.id}" target="_blank"><c:out value="${single.userBlogName}"/></a></td>
                <td ><c:out value="${single.userHitNum}"/>　次</td>
                <td align="center"><a title="删除" href="my/admin/friend?action=delete&id=${single.id}"onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
            </tr>
           
        </c:forEach>
            </tbody>
    </table>
        </div>
</c:if>
            </article>
        </div>
    </section>