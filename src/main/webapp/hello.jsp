<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2019-01-09
  Time: 오전 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
페이지 지시문
서블릿으로 변경 될 때 해당 콘텍스트 타입으로 변경하라고 지시

-->

<html>
<head>
    <title>hello.jsp</title>
</head>
<body>
    <h1>hello irene7</h1>
    <%!
        int k = 5;
        private int plus(int i, int k){
            return i+k;
        }
    %>
    <% //스크립틀릿
        out.write(plus(10, 50));
        for(int i = 0; i < 100; i++){
    %>
    i=<%=i;%><br>
    <%
        }
    %>
</body>
</html>

<!--
http:/localhost8080/hello.jsp
-->
