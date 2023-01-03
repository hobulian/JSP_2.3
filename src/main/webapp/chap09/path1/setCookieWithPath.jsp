<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
  Cookie ck1 = new Cookie("path1", URLEncoder.encode("경로:/chap09/path1", "utf-8"));
  ck1.setPath("/chap09/path1");
  response.addCookie(ck1);

  Cookie ck2 = new Cookie("path2", URLEncoder.encode("경로:", "utf-8"));
  response.addCookie(ck2);

  Cookie ck3 = new Cookie("path3", URLEncoder.encode("경로:/", "utf-8"));
  ck3.setPath("/");
  response.addCookie(ck3);

  Cookie ck4 = new Cookie("path4", URLEncoder.encode("경로:/chap09/path2", "utf-8"));
  ck4.setPath("/chap09/path2");
  response.addCookie(ck4);

%>
<html>
<head>
  <title>쿠키 경로 지정</title>
</head>
<body>
다음과 같이 쿠키를 생성하였습니다<br>
<%= ck1.getName() %> = "<%= ck1.getValue()%>"
[<%= ck1.getPath()%>]<br>
<%= ck2.getName() %> = "<%= ck2.getValue()%>"
[<%= ck2.getPath()%>]<br>
<%= ck3.getName() %> = "<%= ck3.getValue()%>"
[<%= ck3.getPath()%>]<br>
<%= ck4.getName() %> = "<%= ck4.getValue()%>"
[<%= ck4.getPath()%>]<br>
</body>
</html>
