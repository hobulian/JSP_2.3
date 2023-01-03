<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="util.Cookies" %>
<%
    session.invalidate();
    //session.removeAttribute("MEMBERID");
    //이 또한 같은 효과지만 기본 객체에 추가하는 속성이 늘어나면 로그아웃 코드도 변경해야 하는 번거로운 문제점이 있다.
%>
<html>
<head>
  <title>로그아웃</title>
</head>
<body>
로그아웃 하였습니다.
</body>
</html>
