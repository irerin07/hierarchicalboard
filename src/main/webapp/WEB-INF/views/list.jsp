<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>list</title>
</head>
<body>
<h1>list</h1>

count : ${requestScope.count}<br>

<c:if test="${requestScope.count > 50}">
    <h1>hello!!!</h1>
</c:if>

<c:forEach items="${requestScope.list}" var="board">
    ${board.title} , ${board.name} <br>
</c:forEach>
</body>
</html>
