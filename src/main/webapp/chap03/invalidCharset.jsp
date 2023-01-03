<%@ page contentType="text/html; charset=iso-8859-1" %>
<%--
    <%@ page contentType = "text/html; charset=utf-8" %>
--%>
<%@ page import="java.util.Date" %>
<%
    Date now = new Date();
%>
<html>
<head><title>HTML 문서의 제목</title></head>
<body>
현재 시각:
<%= now%>
</body>
</html>
