<%@ page contentType="text/html;charset=UTF-8" %>
<%
  Cookie ck = new Cookie("tempCookie", "1min");
  ck.setMaxAge(60*1); // 60초 * 1분 = 1분
  response.addCookie(ck);
%>
<html>
<head>
  <title>쿠키 유효 시간 설정</title>
</head>
<body>
유효 시간이 1분인 쿠키 생성
</body>
</html>
