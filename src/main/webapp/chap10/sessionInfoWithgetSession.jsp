<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collections" %>
<%
    HttpSession httpSession = request.getSession(); // session이 존재하면 해당 세션을 리턴, 없으면 새 세션을 생성
    //HttpSession httpSession = request.getSession(false); // session이 있을 때만 session 객체를 구하고 싶다면 매개변수를 false로
    List list = null;
    if(httpSession != null) {
        list = (List)httpSession.getAttribute("list");
    } else {
        list = Collections.emptyList();
    }
    Date time = new Date();
    SimpleDateFormat formatter =
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
    <title>세션 정보</title>
</head>
<body>
세션 ID: <%= httpSession.getId() %> <br>
<%
    time.setTime(httpSession.getCreationTime());
%>
세션 생성 시간: <%=formatter.format(time)%> <br>
<%
    time.setTime(httpSession.getLastAccessedTime());
%>
최종 접근 시간: <%= formatter.format(time)%>
</body>
</html>
