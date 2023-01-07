<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("utf-8");

    String memberID = request.getParameter("memberID");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String email = request.getParameter("email");

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + "useUnicode=true&characterEncoding=utf8";
        String dbUser = "jspexam";
        String dbPass = "jsppw";

        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        pstmt = conn.prepareStatement(
                "insert into MEMBER values (?,?,?,?)");
        pstmt.setString(1, memberID);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, email);

        pstmt.executeUpdate();
    }  finally {
        if (pstmt != null) try {
            pstmt.close();
        } catch (SQLException ex) {
        }
        if (conn != null) try {
            conn.close();
        } catch (SQLException ex) {
        }
    }
%>
<html>
<head>
    <title>삽입</title>
</head>
<body>
<%=memberID%>의 회원 정보를 레코드에 삽입했습니다.
</body>
</html>
