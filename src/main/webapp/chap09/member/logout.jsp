<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="util.Cookies" %>
<%
 response.addCookie(
         Cookies.createCookie("AUTH", "", "/", 0)
 );
%>
<html>
<head>
  <title>로그아웃</title>
</head>
<body>
로그아웃 하였습니다.
</body>
</html>
