<%@ include file="userheader.jsp" %>

<table border=0 valign='top' align="center" cellspacing="0" >
    
    
<%

  ResultSet rs1,rs2;
 rs1=DBBlog.dbbloglayer.getResult("select * from posts where postauthorid="+session.getAttribute("sid")); 
 rs2=DBBlog.dbbloglayer.getResult("select * from user");
int i=1;
out.print("<tr><th align='left'>S.no</th><th>Name</th><th>Number of posts</th></tr>");
  while(rs2.next())
      {
       out.print("<tr><td width=80><font size=4><br>("+i+")</td><td width=250><br><b>"+rs2.getString(2) +"</b></td><td width=250><br>"+rs2.getString(6)+" posts</font></td></tr>");
      i++;
      }
  out.print("<tr><td height='30' colspan=3></td></tr>");
 
%>

</table>

<%@ include file="userfooter.jsp" %>
