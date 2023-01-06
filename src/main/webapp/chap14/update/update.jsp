<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

    <%
        request.setCharacterEncoding("utf-8");

        String memberID = request.getParameter("memberID");
        String name = request.getParameter("name");

        int updateCount = 0;

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = null;
        Statement stmt = null;

        try {
            String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + "useUnicode=true&characterEncoding=utf8";
            String dbUser = "jspexam";
            String dbPass = "jsppw";

            String query = "UPDATE MEMBER SET NAME='"+name+"'"+"WHERE MEMBERID='"+memberID+"'";

            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            updateCount = stmt.executeUpdate(query); // executeQuery랑 헷갈리지 말 것!!
        } catch(SQLException ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        } finally {
            if(stmt != null) try {stmt.close();} catch(SQLException ex) {}
            if(conn != null) try {conn.close();} catch(SQLException ex) {}
        }
    %>
<html>
<head>
    <title>이름 변경</title>
</head>
<body>
<% if(updateCount>0) { %>
<%=memberID%>의 이름을 <%=name%>으로 변경
<% } else { %>
<%=memberID%>는 존재하지 않는 아이디입니다.
<% } %>

</body>
</html>
