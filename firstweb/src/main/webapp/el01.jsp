<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("p1", "page scope value");
	request.setAttribute("r1", "request scope value");
	session.setAttribute("s1", "session scope value");
	application.setAttribute("a1", "application scope value");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 표현식 -->
pageContext.getAttribute("p1") : <%=pageContext.getAttribute("p1") %><br>

<!-- EL -->
pageContext.getAttribute("p1") : ${pageScope.p1}<br>
request.getAttribute("r1") : ${requestScope.r1}<br>
session.getAttribute("s1") : ${sessionScope.s1}<br>
application.getAttribute("a1") : ${applicationScope.a1}<br>

<!-- 변수가 중복이 되지 않을경우 변수만 적어도 되나 추천하지는 않는다. -->
application.getAttribute("a1") : ${a1}<br>




</body>
</html>