<%@include file="adminheader.jsp" %>


    
    <a href='activeusers.jsp'>Active users</a><br><br>
    <a href='inactiveusers.jsp'>Inactive users</a><br><br>
    
    <table border=0 valign='top' align="center" >
    
    
<%

  ResultSet rs;
  rs=DBBlog.dbbloglayer.getResult("select * from user");
int i=1;
  out.print("<tr><td colspan=3><font color='blue'><h2>Users...........</h2></font><br></td></tr><tr><th align='left'>S.no</th><th>Name</th><th>Number of posts</th></tr>");
     
  while(rs.next())
      {
          out.print("<tr><td width=80><br>("+i+")</td><td width=200><br><b>"+rs.getString(2) +"</b></td><td width=200><br>"+rs.getString(6)+" posts</td></tr>");
      i++;
      }
 
%>

</table>
    
    
  <%@include file="adminfooter.jsp" %>
 
    
   