<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용하기 위해 tag library 선언 -->
<c:import url="http://localhost:8080/firstweb/jstlvalue.jsp" var="urlValue" scope="request"/>
<c:import url="https://www.naver.com" var="naver" scope="request"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- ${urlValue } --%>
${naver }

</body>
</html>