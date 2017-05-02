<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 推荐文章 <span class="c-gray en">&gt;</span> 浏览推荐文章 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
<c:set var="elect" value="${requestScope.electlist}"/>
<c:if test="${empty elect}">
    <center><br>☆★☆ 博主暂时没有推荐任何文章！☆★☆</center>
</c:if>
<c:if test="${!empty elect}">

    <div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> </span>  </div>
    <div class="mt-10">


          <c:out value="${requestScope.message}" escapeXml="false"/>
        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
<tr><th scope="col" colspan="5">推荐文章</th></tr>
            <tr class="text-c">
                <th width="25"><input type="checkbox" value="" name=""></th>
                <th width="40">文章标题</th>
                <th width="200">文章地址</th>
                <th width="100">创建时间</th>
                <th width="70">操作</th>
            </tr>
            </thead>
            <tbody>
        <c:forEach var="single" items="${elect}">
            <tr class="text-c">
                <td><input type="checkbox" value="" name=""></td>
                <td>
           <c:out value="${single.electTitle}" escapeXml="false"/></td>
                <td><a href="${single.electSrc}" target="_blank">${single.electSrc}</a></td>

                <td>

                    ${single.electTime}</td>
                <td>

                    <a title="删除" href="my/admin/elect?action=delete&id=${single.id}" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>

                </td>


            </tr>
            </c:forEach>
            </tbody>
            </table>
        </div>



</c:if>
            </article>
        </div>
    </section>