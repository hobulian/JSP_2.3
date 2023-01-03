<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
    Cookie ck1 = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
    Cookie ck2 = new Cookie("sex", URLEncoder.encode("남자", "utf-8"));
    Cookie ck3 = new Cookie("age", URLEncoder.encode("25", "utf-8"));
    response.addCookie(ck1);
    response.addCookie(ck2);
    response.addCookie(ck3);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>

<%= ck1.getName() %> 쿠키 1의 값 = "<%= ck1.getValue()%>"<br>
<%= ck2.getName() %> 쿠키 2의 값 = "<%= ck2.getValue()%>"<br>
<%= ck3.getName() %> 쿠키 3의 값 = "<%= ck3.getValue()%>"
</body>
</html>
