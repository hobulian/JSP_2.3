<%@ page contentType="text/html; charset=utf-8" %>
<%!
    public int add(int a, int b) {
        int c = a + b;
        return c;
    }

    public int subtract(int a, int b) {
        int c = a - b;
        return c;
    }
%>
<html>
<head>
    <title>스크립트릿에서 선언부 사용하기</title>
</head>
<body>
<%
    int num1 = 3;
    int num2 = 9;

    int addResult = add(num1, num2);
    int subResult = subtract(num1, num2);
%>
<%= num1 %> + <%= num2 %> = <%= addResult %>
<br>
<%= num1 %> - <%= num2 %> = <%= subResult %>
</body>
</html>
