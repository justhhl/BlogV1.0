<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 文章管理 <span class="c-gray en">&gt;</span> 浏览文章 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
<c:set var="article" value="${requestScope.articlelist}"/>

<c:if test="${empty article}"><br>

    <center>该博主暂时没有发表文章哦！</center>

</c:if>
<c:if test="${!empty article}">

                <div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span> <span class="r"> 我的文章共：<strong> ${requestScope.createPage.allR}</strong> 篇</span> </div>
                <div class="mt-10">

         <c:out value="${requestScope.message}" escapeXml="false"/>
                    <table class="table table-border table-bordered table-hover table-bg">
                        <thead>

                        <tr class="text-c">
                            <th width="25"><input type="checkbox" value="" name=""></th>
                            <th width="40">文章标题</th>
                            <th width="300">创建时间</th>
                            <th width="70">操作</th>
                        </tr>
                        </thead>
                        <tbody>
        <c:forEach var="single" items="${article}">

            <tr class="text-c">
                <td><input type="checkbox" value="" name=""></td>

              <td><a href="my/admin/article?action=adminSingle&id=${single.id}"><c:out value="${single.artTitle}" escapeXml="false"/></a></td>


              <td><font color="gray">${single.artPubTime}</font></td>

                <td class="f-14">
                    <a title="编辑" href="my/admin/article?action=modify&id=${single.id}" onclick="admin_role_edit('角色编辑','admin-role-add.html','2')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                    <a a title="删除" href="my/admin/article?action=delete&id=${single.id}" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>
        </c:forEach>
        </tbody>
                        </table>
                   
    

    <jsp:include page="/pages/page.jsp"/>
                </div>
    
</c:if>
            </article>
        </div>
    </section>