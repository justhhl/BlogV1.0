<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<script type="text/javascript" src="js/inputCheck.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>   
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        文章管理
        <span class="c-999 en">&gt;</span>
        修改文章
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">


<c:set var="single" value="${requestScope.articlesingle}"/>
<c:if test="${empty single}"><center>对不起，阅读文章失败！</center></c:if>
<c:if test="${!empty single}">
    <!-- 显示文章详细内容 -->
    <article class="page-container">

    <form class="form form-horizontal" action="my/admin/article" method="post">
        <input type="hidden" name="id" value="${single.id}">
        <input type="hidden" name="action" value="modify">
        <input type="hidden" name="type" value="update">

       <c:out value="${requestScope.message}" escapeXml="false"/>
          阅读：${single.artCount} 次 | 评论：${single.revCount} 条 | 发表于：${single.artPubTime}&nbsp;</td></tr>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
           <input type="text" class="input-text" name="title" size="102" value="${single.artTitle}">
         </div>
            </div>

            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章内容：</label>
                     <div class="formControls col-xs-8 col-sm-9">
                     <textarea name="content"   class="textarea"  placeholder="说点什么..." >${single.initArtContent}</textarea>
					</div>
                </div>

            <div class="row cl">
                <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                    <button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                    <button  class="btn btn-default radius" type="reset">&nbsp;&nbsp;重新填写&nbsp;&nbsp;</button>
                </div>
            </div>

    </form>
        </article>
</c:if>
        </div>
    </section>