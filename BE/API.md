# REST API
```
REpresentational State Transfer Application Programming Interface 약자

핵심 컨텐츠 및 기능을 외부 사이트에서 활용할 수 있도록 제공되는 인터페이스
EX) 1. 네이버에서 블로그에 글 저장 또는 글 목록을 읽을 수 있도록 외부에 기능을 제공
    2. 우체국에서 우편번호를 조회
    3. 구글에서 구글 지도를 사용할 수 있도록 제공


REST는 다음과 같은 스타일(제약조건의 집합) 을 반드시 지켜야 함.

client-server
stateless
cache
uniform interface
layered system
code-on-demand (optional)

* HTTP프로토콜을 사용한다면
  client-server
  stateless
  cache
  lared system
  code-on-demand 구현 가능
  (uniform interface 불가능)
  
  uniform interface
   리소스가 URI로 식별되야 합니다.
   리소스를 생성,수정,추가하고자 할 때 HTTP메시지에 표현을 해서 전송해야 합니다.
   메시지는 스스로 설명할 수 있어야 합니다. (Self-descriptive message)
   애플리케이션의 상태는 Hyperlink를 이용해 전이되야 합니다.(HATEOAS)


따라서, REST API 보다는 Web API(혹은 HTTP API)를 사용한다.
[참고]
REST의 모든 것을 제공하지 않으면서 REST API라고 말하는 경우도 있습니다.
REST의 모든 것을 제공하지 않고 Web API 혹은 HTTP API라고 부르는 경우가 있습니다.
```

# WEB API
```
URI는 정보의 자원을 표현해야 함.
자원에 대한 행위는 HTTP Method(GET, POST, PUT, DELETE)로 표현합니다.

POST : URI를 요청하면 리소스 생성
GET : 리소스를 조회, 해당 도큐먼트에 대해 정보를 가져온다
PUT : 리소스 수정
DELETE : 리소스 삭제


* 자원에 대한 행위는 HTTP Method로 표현
GET /members/1         (o)
GET /members/get/1     (x)
GET /members/add       (x)
POST /members          (o)
GET /members/update/1  (x)
PUT /members/1         (o)
GET /members/del/1     (x)
DELETE /members/1      (o)

* 상태코드
200 : 요청 정상적으로 수행
201 : 리소스 생성 요청, 해당 리소스가 성공적으로 생성

[Client 오류]
400 : Client 요청이 부적절 할 경우
401 : Client가 인증되지 않은 상태에서 보호된 리소스를 요청했을때 사용하는 응답 코드
403 : 유저 인증상태와 관계없이 응답하고 싶지 않은 리소스를 클라이언트가 요청했을때
      [403 보다는 400, 404사용할 것을 권고]
405 : Client가 요청한 리소스에서는 사용 불가능한 Method를 이용했을 경우

[서버 오류]
301 : Client가 요청한 리소스에 대한 URI가 변경 되었을 때 사용
500 : 서버에 문제가 있을 경우 사용



* 규칙
슬래시 구분자(/)는 계층을 나타낼 때 사용

http://domain/houses/apartments
http://domain/departments/1/employees

URI 마지막 문자로 슬래시 구분자(/)를 포함하지 않음.
하이픈(-)은 URI가독성을 높일 때 사용.
언더바(_)는 사용 X.
URI경로는 소문자만 사용.
RFC 3986(URI 문법 형식)은 URI스키마와 호스트를 제외하고는 대소문자를 구별.
파일 확장자는 URI에 미포함.
Accept Header를 사용.
```
