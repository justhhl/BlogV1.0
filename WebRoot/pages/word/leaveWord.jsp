<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


<div class="panel panel-danger" style="width:70%;margin: auto;margin-top: 10px;margin-bottom: 10px;">
    <div class="panel-heading">
        <h3 align="center">留言版</h3><br>

    </div>
    <div class="panel-body">

       <c:out value="${requestScope.message}" escapeXml="false"/>


<!-- 实现留言界面 -->
<form action="my/admin/word" method="post" class="form-group" >
    <div class="form-group">
        <div class="col-sm-3">
    <input type="hidden" name="action" value="review">

    匿名留言：<input type="checkbox" name="noname" value="true">
</div>
        <div class="col-sm-9" style="text-align: right;">
                <font color="#7F7F7F">
                    写入：<span><input type="text" name="use" value="0" size="4" disabled style="text-align:center;border:0;"> </span>个&nbsp;&nbsp;
                    剩余：<span><input type="text" name="rem" value="1000" size="4" disabled style="text-align:center;border:0;"></span> 个
                </font>
            </div>
        </div>
    <div class="form-group" >
       <textarea class="form-control" name="wordContent" rows="10" cols="85" onkeydown="check(wordContent,use,rem,1000)" onkeyup="check(wordContent,use,rem,1000)"></textarea>
</div>
    <div class="form-group" >
                <input class="btn btn-default" type="submit" value="提交留言">
                <input class="btn btn-default" type="reset" value="重新填写">
        </div>

</form>
        </div>
<!-- 显示最新留言 -->
<c:set var="word" value="${requestScope.wordList}"/>

    <div class="panel-footer">
     <div class="form-group">
     <div class="col-sm-3">
     <font  color="red">最新留言</font>
     </div>
     <div class="col-sm-8" style="text-align: right;">
        <a href="my/guest/word?action=listShow&id=${single.id}" target="_blank">更多</a>
        </div>
        </div>
        
        <div class="form-group" >
            
    <c:if test="${empty word}"><ul type="square"><li>目前没有任何留言哦！</li></ul></c:if>
    <c:if test="${!empty word}">
    <ul type="square">
        <li>
        
        <c:forEach var="single" items="${word}"><br/>
           ${single.wordAuthor}: <c:out value="${single.wordContent}" escapeXml="true"/><br/>
           <font color="gray">${single.wordTime}</font><br>
          

        </c:forEach>
        </li>
        </ul>
    </c:if>
               
            </div>
        </div>
    </div>
       
