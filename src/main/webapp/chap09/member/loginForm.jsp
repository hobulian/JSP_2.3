<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 폼</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/chap09/member/login.jsp" method="post">
  아이디 <input type="text" name="id" size="10">
  암호 <input type="text" name="pw" size="10">
  <input type="submit" value="로그인">
</form>
</body>
</html>
