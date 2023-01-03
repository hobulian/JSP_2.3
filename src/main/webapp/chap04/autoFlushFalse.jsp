<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="1kb" autoFlush="false" %>
<%-- <%@ page buffer = "1kb" autoFlush = "true" %> --%>
<html>
<head>
    <title>autoFlush 속성값 false 예제</title>
</head>
<body>
<%
    // java.io.IOException: 오류: JSP 버퍼 오버플로우
    for (int i = 0; i < 1000; i++) {
%>
1234
<%
    }
%>
</body>
</html>
