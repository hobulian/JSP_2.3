<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    session.setMaxInactiveInterval(60*60); // 세션 시간을 60분으로 설정
    Date time = new Date();
    SimpleDateFormat formatter =
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
    <title>세션 정보</title>
</head>
<body>
세션 ID: <%= session.getId() %> <br>
<%
    time.setTime(session.getCreationTime());
%>
세션 생성 시간: <%=formatter.format(time)%> <br>
<%
    time.setTime(session.getLastAccessedTime());
%>
최종 접근 시간: <%= formatter.format(time)%>
</body>
</html>
