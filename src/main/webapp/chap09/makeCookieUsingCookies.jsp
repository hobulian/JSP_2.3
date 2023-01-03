<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import ="util.Cookies"%>
<%
    response.addCookie(Cookies.createCookie("name", "Anthony"));
    response.addCookie(
            Cookies.createCookie("id", "madVirus", "/", -1)
    );
%>
<html>
<head>
    <title>사용 예</title>
</head>
<body>

Cookies를 사용하여 쿠키 생성

</body>
</html>
