# scope
```
Page ⊂ Request ⊂ Session ⊂ Application

Application : 웹 어플리케이션이 시작되고 종료될 때까지 변수가 유지되는 경우 사용
Session : 웹 브라우저 별로 변수가 관리되는 경우 사용
Request : http요청을 WAS가 받아서 웹 브라우저에게 응답할 때까지 변수가 유지되는 경우 사용
Page : 페이지 내에서 지역변수처럼 사용

```

## page scope
``` 

PageContext 추상 클래스를 사용

JSP page : pageContext 내장객체로 사용 가능

ex) jsp에서 pageScope에 값 저장 / 해당 값을 EL표기법 등에서 사용할 때 사용.
    jsp or servlet이 실행되는 동안 사용 가능.

```

## request scope
``` 

http 요청을 WAS가 받아 웹 브라우저에게 응답할 때까지 변수값을 유지하고자 할 경우 사용.

JSP page : request 내장 변수를 사용
Servlet : HttpServletRequest 객체를 사용

값 저장 : request 객체의 setAttribute() 사용
값 조회 : request 객체의 getAttribute() 사용

ex) forward 하기 전 request 객체의 setAttribute() 메소드로 값을 설정한 후,
    서블릿 / jsp에 결과를 전달하여 값을 출력했을때 
    이렇게 포워드 되는 동안 값이 유지되는 것이 Request scope이다. 

```
## session scope
``` 

HttpSession 인터페이스를 구현한 객체를 사용.
웹 브라우저별, 브라우저 탭별로 변수를 관리를 위해 사용.

JSP page : session 내장 변수를 사용
Servlet : HttpServletRequest의 getSession() 이용하여 session 객체 사용.

값 저장 : session 객체의 setAttribute() 사용
값 조회 : session 객체의 getAttribute() 사용

ex) 장바구니처럼 사용자별로 유지가 되어야 할 정보가 있을 때 사용.
    
```

## application scope
``` 

ServletContext 인터페이스를 구현한 객체를 사용.
웹 어플리케이션이 시작되고 종료될 때까지 변수를 사용.

JSP page : application 내장 변수를 사용
Servlet : getServletContext() 이용하여 application객체를 객체 사용.

값 저장 : application객체의 객체의 setAttribute() 사용
값 조회 : application객체의 객체의 getAttribute() 사용

ex) 모든 클라이언트가 공통으로 사용해야 할 값들이 있을 때 사용.
    
```