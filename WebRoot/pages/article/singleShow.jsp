<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<script type="text/javascript" src="js/inputCheck.js"></script>
<div class="panel panel-default" style="width:70%;margin: auto;margin-top: 10px;margin-bottom: 10px;">

<c:set var="single" value="${requestScope.articlesingle}"/>
<c:if test="${empty single}"><div class="panel-body">☆★☆ 对不起，阅读文章失败！☆★☆</div></c:if>
<c:if test="${!empty single}">
    <!-- 显示文章详细内容 -->
    <div class="panel-heading">
        <font color="gray">阅读：${single.artCount} 次 | 评论：${single.revCount} 条 | 发表于：${single.artPubTime}</font>

    </div>
    <div class="panel-body">

   <div style="width:100%;height:auto;text-align: center"><font color="#4E6900" size="4"><c:out value="${single.artTitle}" escapeXml="false"/></font></div>
        <div style="width: 100%;height:200px ">
          <p>
       <font color="#595959"><c:out value="${single.artContent}" escapeXml="false"/></font>
        </p></div>
   </div>

    <div class="panel-footer">

    <form action="my/admin/artReview" method="post" class="form-group">
        <div class="form-group">
            <div class="col-sm-3">
        <input type="hidden" name="action" value="review">
        <input type="hidden" name="rootId" value="${single.id}">
       匿名发表：<input type="checkbox" name="noname" value="true">
                </div>
            <div class="col-sm-9" style="text-align: right;">
                <font color="#7F7F7F">
              写入：<input type="text" name="use" value="0" size="4" disabled style="text-align:center;border:0;"> 个&nbsp;&nbsp;
                    剩余：<input type="text" name="rem" value="1000" size="4" disabled style="text-align:center;border:0;"> 个</td>
          </font>
                </div>
            </div>

        <div class="form-group" >
                    <textarea class="form-control" name="artRContent" rows="6" cols="85" onkeydown="check(artRContent,use,rem,1000)" onkeyup="check(artRContent,use,rem,1000)"></textarea>
               </div>

        <div class="form-group" >
        <input class="btn btn-default" type="submit" value="发表评论">

       </div>
    </form>
        
        <hr style="height:1px;border:none;border-top:1px dashed #0066CC;width:100%;" />

    <!-- 显示文章评论 -->
    <c:set var="artReview" value="${requestScope.artrlist}"/>

       
            <div class="form-group">
                <div class="col-sm-3">
                    <font  color="red">最新留言</font>
                </div>
                <div class="col-sm-8" style="text-align: right;">
                    <a href="my/guest/artReview?action=listShow&id=${single.id}" target="_blank">更多</a>
                </div>
                </div>
            <div class="form-group" >
        <c:if test="${empty artReview}"><tr height="100"><br><center>该文章目前没有任何评论！</center></c:if>
        <c:if test="${!empty artReview}">
        <br>
            <ul type="square">
                <li>
            <c:forEach var="rsingle" items="${artReview}"><br>
               
                     ${rsingle.artRAuthor}:${rsingle.artRContent}<br>
                    &nbsp;&nbsp;&nbsp;<font color="gray">${rsingle.artRTime}</font><br>
                   

                    
               
            </c:forEach>
                </li>
                </ul>
        </c:if>
    </div>
            </div>
    <!-- 实现发表评论界面 -->

</c:if>
</div>