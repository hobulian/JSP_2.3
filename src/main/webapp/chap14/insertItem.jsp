<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    String idValue = request.getParameter("id");

    Connection conn = null;
    PreparedStatement PSItem = null;
    PreparedStatement PSDetail = null;

    String jdbcDriver = "jdbc:mysql://localhost:3306/chap14?" + "useUnicode=true&characterEncoding=utf8";
    String dbUser = "jspexam";
    String dbPass = "jsppw";

    Throwable occuredException = null;

    try {
        int id = Integer.parseInt(idValue);

        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        conn.setAutoCommit(false); // 트랜잭션 시작

        PSItem = conn.prepareStatement(
                "insert into ITEM values (?,?)");
        PSItem.setInt(1, id);
        PSItem.setString(2, "상품 이름" + id);
        PSItem.executeUpdate();

        if (request.getParameter("error") != null) {
            throw new Exception("의도적 익셉션 발생");
        }

        PSDetail = conn.prepareStatement(
                "insert into ITEM_DETAIL values (?,?)");
        PSDetail.setInt(1, id);
        PSDetail.setString(2, "상품 이름" + id);
        PSDetail.executeUpdate();

        conn.commit();

    } catch (Throwable e) {
        if (conn != null) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
            }
        }
        occuredException = e;
    } finally {
        if (PSItem != null) try {
            PSItem.close();
        } catch (SQLException ex) {
        }
        if (PSDetail != null) try {
            PSDetail.close();
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
    <title>ITEM 값 입력</title>
</head>
<body>
<% if (occuredException != null) { %>
에러가 발생하였습니다: <%= occuredException.getMessage()%>
<% } else { %>
데이터가 성공적으로 들어감
<% } %>
</body>
</html>
