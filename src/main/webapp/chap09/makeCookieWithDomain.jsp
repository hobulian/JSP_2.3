<%@ page contentType="text/html;charset=UTF-8" %>
<%
  Cookie ck1 = new Cookie("id", "madVirus");
  ck1.setDomain(".somehost.com"); // www.somehost.com, mail.somehost.com, javacan.somehost.com 등등에 모두 쿠키를 전송
  response.addCookie(ck1);

  Cookie ck2 = new Cookie("only", "onlyCookie"); // 지정하지 않을 경우 해당 쿠키를 생성한 서버에만 전송됨
  response.addCookie(ck2);


  Cookie ck3 = new Cookie("invalid", "invalidCookie");
  ck1.setDomain("javacan.tistory.com"); // 특정 도메인에만 전송. 이 경우에는 다른 도메인이기 때문에 전송되지 않는다.
  response.addCookie(ck3);
%>
<html>
<head>
  <title>도메인을 지정한 쿠키 생성</title>
</head>
<body>
다음과 같이 쿠키를 생성하였습니다<br>
<%= ck1.getName() %> = "<%= ck1.getValue()%>"
[<%= ck1.getDomain()%>]<br>
<%= ck2.getName() %> = "<%= ck2.getValue()%>"
[<%= ck2.getDomain()%>]<br>
<%= ck3.getName() %> = "<%= ck3.getValue()%>"
[<%= ck3.getDomain()%>]<br>
</body>
</html>
