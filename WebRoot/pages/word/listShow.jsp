<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>查看所有留言</title>
    <base href="<%=basePath%>">
    
    <style>
        ul{
            width: 70%;
            text-align: center;
            margin-bottom: 20px;
            list-style: none;
        }
        ul li{
            width: 100%;
            height: 150px;
            float: left;
            box-sizing: border-box;
            border: #e1e1e1 solid 1px;
            border-radius: 3px;
        }
        .sec{
            width: 100%;
            height: 100px;
            padding: 0px 10px 0px 10px;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .sec_detail{
            padding: 15px 0px 0px 10px;
            float: left;
        }
        h4{
            font-size: 16px;
            font-weight: normal;
            color: #3c3c3c;
            font-family: 'Spinnaker', sans-serif;
        }
        span{
            color: #858484;
            padding: 0px 10px;
           
        }
        .first{
            padding-left: 0px;
            border-left: none;
        }

    </style>
</head>
<body bgcolor="#E0FFFF">
 <!--  background="images/allBack2.jpg"-->
<center >

   <ul>
    <c:set var="word" value="${requestScope.wordList}"/>

    <c:if test="${empty word}">
        <li>
            <div class="sec">
  目前没有任何留言哦！
                </div>
        </li>
    </c:if>

    <c:if test="${!empty word}">
        <c:set var="cpage" value="${requestScope.createPage}"/>

           <div style="height:40px;width:100%;background:images/allBack2.jpg;text-align: center">查看所有留言【共${cpage.allR}条】</div>
			
            <c:forEach varStatus="st" var="single" items="${word}">
            
                <li >
                    <div class="sec" >
                        <div class="sec_detail">
                        <h4 style="color: coral"> ${single.wordAuthor}</h4>
                        <h4><c:out value="${single.wordContent}" escapeXml="false"/></h4>
                            
                            <div><span> ${single.wordTime}</span>
                     <a href="my/guest/word?action=delete&id=${single.id}"></a>  
                     </div></div>
                          
                   </div>
                </li>
		
            </c:forEach>
           <jsp:include page="/pages/page.jsp"/>

    </c:if>
   </ul>

</center>
</body>
</html>