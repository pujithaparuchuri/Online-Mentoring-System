<%@ include file="mheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>

<br><br>
<%
String email=(String)session.getAttribute("email");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mregister where email='"+email+"' ");
if(rs.next())
{
	
	%>
<div align="center">
<h3> Welcome <%=rs.getString(2)%></h3>
<table>
<tr><td></td></tr>
<tr><img src="images//profile//<%=rs.getString(7)%>" Style="height:500px;width:400px" ></tr>

</div>
<br><br><br>
<%}%>
	<%@ include file="footer.jsp"%>