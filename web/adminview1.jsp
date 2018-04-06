<%@ include file="aheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>

<br>
<div align="center">
<font color="green"><h2><b><i>Mentor’s (Senior’s)  Details</i></h2></font>
<br>
<table cellspacing="20">
<tr style="color:orange"  >
<th >Profile Pic</th>
<th>Name</th>
<th>HallTicket</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;Email</th>
<th></th>
<th>&nbsp;&nbsp;Status</th>
</tr>

<%
String status=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mregister");
while(rs.next())
{
	status=rs.getString(8);
	%>
<tr>
<td><a href="images//profile//<%=rs.getString(7)%>"  target="_blank" ><img src="images//profile//<%=rs.getString(7)%>" Style="height:100px;width:100px" >&nbsp;&nbsp;</a></td>
<td><%=rs.getString(2)%>&nbsp;&nbsp;</td>
<td><%=rs.getString(3)%></td>
<td>&nbsp;&nbsp;<%=rs.getString(4)%></td>
<td></td>
<%if(status.equals("login")){%>
<td>&nbsp;&nbsp;<font style="color:green"><b><%=status%></b></font></td><%}
else if(status.equals("reject")){
%>
<td>&nbsp;&nbsp;<font style="color:red"><b><%=status%></b></font></td><%}
else {%>
<td>&nbsp;&nbsp;<b><%=status%></b></td><%}%>
<%}%>
</table>
</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>