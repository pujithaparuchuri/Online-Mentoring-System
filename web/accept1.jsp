<%@page import ="database.*,java.sql.*" %>
<%
String email=request.getParameter("email");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
int i=st.executeUpdate("update mregister set  status_r='login' where email='"+email+"' ");
if(i>0)
{
response.sendRedirect("adminaccept1.jsp?update=success");
}
else
{
response.sendRedirect("adminaccept1.jsp?upd=fail");
}%>
