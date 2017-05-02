<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<!-- 显示发表文章界面 -->

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        友情链接
        <span class="c-999 en">&gt;</span>
       添加友情链接
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">
    <article class="page-container">
<form class="form form-horizontal" action="my/admin/link" method="post" >

    <input type="hidden" name="action" value="insert">
    <input type="hidden" name="type" value="add">

    <c:out value="${requestScope.message}" escapeXml="false"/>
    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>链接标题：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text" value="${param.title}" placeholder="" id="" name="title">
        </div>
    </div>

    <div class="row cl">
        <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>链接地址：</label>
        <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text" value="${param.src}" name="src" placeholder="" >
        </div>
    </div>

    <div class="row cl">
        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
            <button  class="btn btn-primary radius" type="submit"> 添加</button>
            <button  class="btn btn-default radius" type="reset">&nbsp;&nbsp;重置&nbsp;&nbsp;</button>
        </div>
    </div>
</form>
        </article>
        </div>

    </section>
