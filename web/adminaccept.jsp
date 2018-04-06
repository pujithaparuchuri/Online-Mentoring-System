<%@ include file="aheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<%

if(request.getParameter("update")!=null)
{
out.println("<script>alert('Request Accept To Login  As Junior')</script>");
}
if(request.getParameter("upd")!=null)
{
out.println("<script>alert('Failed to Accept Request')</script>");
}


if(request.getParameter("reject")!=null)
{
out.println("<script>alert('Reject To Login As Junior')</script>");
}
if(request.getParameter("rej")!=null)
{
out.println("<script>alert('Failed to Reject')</script>");
}


%>
<br><br>
<div align="center">
<font color="green"><h2><b><i>Junior's Action Page</i></h2></font>
<br>
<table cellspacing="20">
<tr style="color:orange"  >
<th >Profile Pic</th>
<th>Name</th>
<th>HallTicket</th>
<th>&nbsp;&nbsp;&nbsp;&nbsp;Email</th>
<th></th>
<th>&nbsp;&nbsp;Action</th>
</tr>

<%
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where status_r='register' ");
while(rs.next())
{%>

<tr>
<td><img src="images//profile//<%=rs.getString(7)%>" Style="height:100px;width:100px">&nbsp;&nbsp;</td>
<td><%=rs.getString(2)%>&nbsp;&nbsp;</td>
<td><%=rs.getString(3)%></td>
<td>&nbsp;&nbsp;<%=rs.getString(4)%></td>
<td></td>
<td>&nbsp;&nbsp;<a href ="accept.jsp?email=<%=rs.getString(4)%>"><font style= "color:blue">Accept  </a></font><b>/ </b>
<a href="reject.jsp?email=<%=rs.getString(4)%>"><font style= "color:red">Reject</a></font></td>
<%}%>


</table>
</div>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>