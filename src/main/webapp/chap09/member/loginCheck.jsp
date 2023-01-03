<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="util.Cookies" %>
<%
    Cookies ck = new Cookies(request);
%>
<html>
<head>
    <title>로그인 여부 검사</title>
</head>
<body>
<%
    if(ck.exists("AUTH")) {
%>
아이디 "<%=ck.getValue("AUTH")%>"로 로그인 되어있습니다.
<%
    } else {
%>
로그인 되어있지 않습니다
<% } %>
</body>
</html>
