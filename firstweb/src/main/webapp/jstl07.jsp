<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용하기 위해 tag library 선언 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<c:set var="t" value="<script type='text/javascript'>alert(1);</script>" />
${t}

<c:out value="${t}" escapeXml="true" />   <!-- true일 경우 문자로 인식 -->
<c:out value="${t}" escapeXml="false" />
</body>
</html>