<%@ page contentType="text/html; charset=utf-8" %>
<%
    String id = request.getParameter("ID");
    if (id != null && id.equals("mad")) {
        response.sendRedirect("http://www.google.com");
    } else {
%>
<html>
<head>
    <title>로그인 실패</title>
</head>
<body>
잘못된 아이디입니다.
</form>
</body>
</html>
<%
    }
%>
