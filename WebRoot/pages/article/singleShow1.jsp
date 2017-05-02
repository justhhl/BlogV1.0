<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<script type="text/javascript" src="js/inputCheck.js"></script>

<c:set var="single" value="${requestScope.articlesingle}"/>
<c:if test="${empty single}"><br><center>对不起，阅读文章失败哦！</center></c:if>
<c:if test="${!empty single}">
    <!-- 显示文章详细内容 -->
    <table bgcolor="#dcdcdc" border="0" align="center" width="88%" style="margin-top:5;margin-left:15;word-break:break-all" cellpadding="0" cellspacing="0" bordercolor="#4E6900" bordercolordark="white" bordercolorlight="#4E6900" rules="none">
        <tr height="40"><td align="right"><font color="gray">阅读：${single.artCount} 次 | 评论：${single.revCount} 条 | 发表于：${single.artPubTime}</font></td></tr>
        <tr height="50">
            <td >
                <b><font color="#4E6900" size="4"><c:out value="${single.artTitle}" escapeXml="false"/></font></b></td></tr>
        <tr height="100"><td valign="top"><font color="#595959"><c:out value="${single.artContent}" escapeXml="false"/></font></td></tr>

    </table>

    <form action="my/admin/artReview" method="post">
        <input type="hidden" name="action" value="review">
        <input type="hidden" name="rootId" value="${single.id}">
        <table border="0" width="50%" style="margin-top:5;margin-left:25;word-break:break-all" cellpadding="0" cellspacing="0"  >
            <tr height="34">

                <td  width="18%" align="left">匿名发表：<input type="checkbox" name="noname" value="true"></td>
                <td align="right"> 写入：<input type="text" name="use" value="0" size="4" disabled style="text-align:center;border:0;"> 个&nbsp;&nbsp;
                    剩余：<input type="text" name="rem" value="1000" size="4" disabled style="text-align:center;border:0;"> 个</td>
            </tr>
            <tr height="40" >
                <td colspan="2">
                    <textarea name="artRContent" rows="10" cols="85" onkeydown="check(artRContent,use,rem,1000)" onkeyup="check(artRContent,use,rem,1000)"></textarea>
                    
                </td>
            </tr>
            <tr><td colspan="2" align="right"> <input type="submit" value="发表评论"></tr>
           
        </table>
    </form>

    <!-- 显示文章评论 -->
    <c:set var="artReview" value="${requestScope.artrlist}"/>
    <table bgcolor="#dcdcdc" border="0" width="88%" align="center" style=" margin-top:5;margin-left:15;word-break:break-all" cellpadding="0" cellspacing="0" bordercolor="#4E6900" bordercolordark="white" bordercolorlight="#4E6900" rules="none">
        <tr >
            <td ><font color="red">最新评论</font ><a href="my/guest/artReview?action=listShow&id=${single.id}" target="_blank">更多</a></td>
        </tr><br><br>
        <c:if test="${empty artReview}"><tr height="100"><td align="center" colspan="2"><li>该文章目前没有任何评论！</li></td></tr></c:if>
        <c:if test="${!empty artReview}">
            <c:forEach var="rsingle" items="${artReview}">
                <tr><td><br>
                    <font color="blue"> ${rsingle.artRAuthor}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <font color="gray">${rsingle.artRTime}</font><br><br>
                    &nbsp;&nbsp;<font size=4>${rsingle.artRContent}</font>

                <hr style="height:1px;border:none;border-top:1px dashed #0066CC;width: 80%;" />
</td>
                <br>
                </tr>
            </c:forEach>
        </c:if>
    </table>

</c:if>