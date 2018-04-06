
<%@page import="database.*,java.sql.*,java.util.*"%>

<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
if((username.equals("admin"))&& (password.equals("admin")))
	 {
response.sendRedirect("adminhome.jsp");
}

else{
response.sendRedirect("Admin.jsp?al=fail");
}
%>

