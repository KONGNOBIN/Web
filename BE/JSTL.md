# JSTL
```

JSP Standard Tag Library
1. HTML tag 형태로 작성할 수 있다.
2. HTML 언어 통일로 유지보수 수월


사용하기 위해 아래 코드 선언
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- JSTL 사용하기 위해 선언 -->
```

## 태그의 종류
```
c : 코어 
기능 : 변수지원, 흐름제어, URL 처리

x : XML  
기능 : XML코어, XML변환, 흐름제어

fmt : 국제화
기능 : 지역, 메시지 형식, 숫자 및 날짜 형식

sql : 데이터베이스
기능 : SQL

fn : 함수
기능 : 콜렉션, String 처리
```

## 코어 태그
```

1. 변수설정

[선언] 
    <c:set var = "value1" scope="request" value="kong"></c:set>
[사용] 
    ${value1 }

2. 흐름제어 IF, choose

[선언]
    <c:set var = "n" scope="request" value="10"/>
[사용 1] 
    <c:if test = "${n == 10 }">
        n과 10은 같습니다.
    </c:if>
[사용 2]
    <c:choose>
    	<c:when test="${score >= 20 }">
		    A학점입니다.
	    </c:when>
	    <c:when test="${score >= 10 }">
    		B학점입니다.
    	</c:when>
    	<c:when test="${score >= 5 }">
		    C학점입니다.
	    </c:when>
    	<c:otherwise>
		    F학점
	    </c:otherwise>
    </c:choose>

3. 흐름제어 forEach
[선언]
    <%
	    List<String> list = new ArrayList<>();
	    list.add("0. 공노빈");
	    list.add("1. 노빈");
	    list.add("2. test");
    
    	request.setAttribute("list", list);
    %>
[사용 1] 
    <c:forEach items="${list }" var="item" begin="1">
	${item }
    </c:forEach>

4. 흐름제어 import
[선언]
    <c:import url="http://localhost:8080/firstweb/jstlvalue.jsp" var="urlValue" scope="request"/>
[사용 1] 
    ${urlValue }

5. 흐름제어 redirect
[선언]
    <c:redirect url="http://localhost:8080/firstweb/jstl05.jsp">

5. 기타태그 out
[사용 1] 
<c:set var="t" value="<script type='text/javascript'>alert(1);</script>" />
${t}

<c:out value="${t}" escapeXml="true" />   <!-- true일 경우 문자로 인식 -->
<c:out value="${t}" escapeXml="false" />

```