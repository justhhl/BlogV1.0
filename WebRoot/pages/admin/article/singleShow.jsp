<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <span class="c-gray en">&gt;</span>
        文章管理
        <span class="c-999 en">&gt;</span>
        发表文章
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

    <div class="Hui-article">
        <article class="page-container">
<c:set var="single" value="${requestScope.articlesingle}"/>
<c:if test="${empty single}"><br><li>对不起，阅读文章失败！</li></c:if>
<c:if test="${!empty single}">
    <!-- 显示文章详细内容 -->
    <table bgcolor="#dcdcdc" border="0" align="center" width="88%" style="margin-top:5;margin-left:15;word-break:break-all" cellpadding="0" cellspacing="0" bordercolor="#4E6900" bordercolordark="white" bordercolorlight="#4E6900" rules="none">
        <tr height="40"><td align="right">阅读：${single.artCount} 次 | 评论：${single.revCount} 条 | 发表于：${single.artPubTime}</td></tr>
        <tr>
            <td align="right">
                <c:out value="${requestScope.message}" escapeXml="false"/>
                <a href="my/admin/article?action=modify&id=${single.id}">【修改文章】</a>
                <a href="my/admin/article?action=delete&id=${single.id}">【删除文章】</a>
                <a href="my/admin/artReview?action=adminList&id=${single.id}" target="_blank">【查看评论】</a>
            </td>
        </tr>
        <tr height="50"><td><b><font color="#4E6900" size="4"><c:out value="${single.artTitle}" escapeXml="false"/></font></b></td></tr>
        <tr height="100"><td valign="top"><font color="#595959"><c:out value="${single.artContent}" escapeXml="false"/></font></td></tr>
       
    </table>
    <!-- 显示文章最新评论 -->
    <c:set var="artReview" value="${requestScope.artrlist}"/>
   
        <table bgcolor="#dcdcdc" border="0" width="88%" align="center" style=" margin-top:5;margin-left:15;word-break:break-all" cellpadding="0" cellspacing="0" bordercolor="#4E6900" bordercolordark="white" bordercolorlight="#4E6900" rules="none">
        <tr><td><font color="red"> 最新评论 </font ><a href="my/admin/artReview?action=adminList&id=${single.id}" target="_blank">更多</a></td></tr><br><br>
    

        <c:if test="${empty artReview}"><li>该文章目前没有任何评论！</li></c:if>
        <c:if test="${!empty artReview}">
            <c:forEach var="rsingle" items="${artReview}">
               <tr><td><br>
                    &nbsp;&nbsp;<font color="blue">${rsingle.artRAuthor}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="gray">${rsingle.artRTime}</font><br><br>
                    &nbsp;&nbsp;<font size=4>${rsingle.artRContent}</font>
                   
                   <hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
               </td>
               <br>
               </tr>
            </c:forEach>
        </c:if>
   
</c:if>
</table>

            </article>
        </div>
    </section>