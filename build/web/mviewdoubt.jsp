<%@ include file="mheader.jsp"%>
<%@page import ="database.*,java.sql.*" %>
<br><br>


<section id="contact-page" class="container">
        <div class="row">
            <div class="col-sm-8">
                <font style="color:blue"><h2>View Junior's Doubt</h2>
             <br><br>
                
                    <div class="row">
                       <div class="col-sm-5">
<table>



<%
String post=request.getParameter("post");
if(post!=null){
out.println("<script>alert('Reply the Answer Succesfully')</script>");
}

String post1=request.getParameter("failed");
if(post1!=null){
out.println("<script>alert('Failed...........to Reply..')</script>");
}





String status=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from doubt");
while(rs.next())
{
	

%>






                           <!--  <div class="form-group">
                                <input type="text" class="form-control" name="clgname" required="required" placeholder="College Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="clgcode" required="required" placeholder="College Code">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="clguni" required="required" placeholder="University Name">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clglocation" required="required" placeholder="Country,State">
                            </div>
							  <div class="form-group">
                                <input type="text" class="form-control" name="clgbranch" required="required" placeholder="Branches">
                            </div>-->
						
                     
                       
						 
						 <tr><th><u><%=rs.getString(2)%>:<u>&nbsp;&nbsp;&nbsp;</th>&nbsp;&nbsp;&nbsp;<th>.</th></tr><tr><th><font Style="color:#ff3333">
                            <%=rs.getString(4)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th><th>&nbsp;&nbsp;</th>
							  <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary btn-lg">&nbsp;&nbsp;<a href="mpostreply.jsp?jid=<%=rs.getString(1)%>&&jemail=<%=rs.getString(3)%>">Reply</button></th></tr>
							  
			<%}%>               
                   				  
							  </table>
                        <br><br>
                 
        
                  
                    </div>
                
            </div>
 </div> </div>
 </section>







<br><br>
	<%@ include file="footer.jsp"%>