<%@page import="database.*,java.sql.*,java.util.*"%>


<%
int uid=0;
String name = request.getParameter("name");
String htno = request.getParameter("htno");
String email = request.getParameter("email");
String pass = request.getParameter("password");
String contact = request.getParameter("contact");
String pic = request.getParameter("pic");

Connection con=databasecon.getconnection();
Statement st=null;
Statement stm;
Statement stmt=null;
ResultSet rs=null;
stm=con.createStatement();
ResultSet rsm=stm.executeQuery("select email from register where email='"+email+"' ");
if(rsm.next()){
	response.sendRedirect("registration.jsp?email=already");


}

else{
st=con.createStatement();
rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	uid=rs.getInt(1);
	++uid;

}
stmt=con.createStatement();
int i = stmt.executeUpdate("insert into register (id,uname,htno,email,pass,phno,pic,status_r)values('"+uid+"','"+name+"','"+htno+"','"+email+"','"+pass+"','"+contact+"','"+pic+"','register')");

if(i>0){
response.sendRedirect("registration.jsp?msg1=succ");
}else{
response.sendRedirect("registration.jsp?msg=unsucc");
}
}
%>