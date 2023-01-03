<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
    // 스크립트릿 주석 처리
    String value = "자바";
    String encodedValue = URLEncoder.encode(value, "utf-8");
    response.sendRedirect("/chap03/basic.jsp?name=" + encodedValue);
%>
