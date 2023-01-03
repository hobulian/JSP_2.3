<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="util.Cookies" %>
<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");

  if (id.equals(pw)) {
    session.setAttribute("MEMBERID", id);
%>
<html>
<head>
  <title>로그인 성공</title>
</head>
<body>

로그인에 성공!

</body>
</html>
<%
} else { //로그인 실패
%>
<script>
  alert("로그인 실패!");
  history.go(-1);
</script>
<% } %>
