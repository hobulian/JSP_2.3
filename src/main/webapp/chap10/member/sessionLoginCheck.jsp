<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="util.Cookies" %>
<%
   String id = (String)session.getAttribute("MEMBERID");
   boolean login = id == null ? false : true;
%>
<html>
<head>
    <title>로그인 여부 검사</title>
</head>
<body>
<%
    if(login) {
%>
아이디 "<%=id%>"로 로그인 한 상태.
<%
    } else {
%>
로그인 되어있지 않습니다
<% } %>
</body>
</html>
