<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.Statement"%>
<%@page import="connect.ConnectionManager"%>
<%@page import="java.sql.*"%>
<%
	String sem = request.getParameter("email");
	String spass = request.getParameter("pw");

	Statement stmt = null;
	ResultSet rs = null;
	ConnectionManager connMgr = new ConnectionManager();
	stmt = connMgr.getStatement();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
var success = "";

</script>
	<%
		String sql = "select * from ptech.p_user where u_email = '" + sem + "' and u_pw = '" + spass + "'";
		rs = stmt.executeQuery(sql);

		if (rs.next()) {
			session.setAttribute("name", rs.getString(3));
			out.println(rs.getString(3));
			session.setAttribute("id", sem);
			out.println(sem);
	%>
	<script>
		alert("<%=sem%>님 반갑습니다.");
		success = "Y";
	</script>
	<%
		} else {
	%>
	<script>
		alert("아이디를 확인해주세요.");
		history.back();
	</script>
	<%
		}
		connMgr.freeStatement();
	%>
	<script>
		if (success == "Y") {
			opener.document.location.href = "Main.jsp";
			self.close();
		}
	</script>
</body>
</html>
