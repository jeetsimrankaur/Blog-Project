<%@include file="adminheader.jsp" %>
    
      <table border=0 valign='top' align="center" cellspacing="0" >
    
    
<%

  ResultSet rs;
  rs=DBBlog.dbbloglayer.getResult("select * from user where status=0");
int i=1;
     
        if(request.getParameter("q")!=null)
                out.print("<BR><font color=green>User id= "+request.getParameter("userid")+" is activated</font><br>");
    
  out.print("<tr><td colspan=3><font color='blue'><h2>Inactivated Users...........</h2></font><br></td></tr><tr><th align='left'>S.no</th><th>User id</th><th>Name</th><th>Number of posts</th><th>Inactivate</tr>");
     
  while(rs.next())
      {
          out.print("<tr><td width=50><br>("+i+")</td><td width=100><br>"+rs.getString(1)+"</td><td width=200><br><b>"+rs.getString(2) +"</b></td><td width=200><br>"+rs.getString(6)+" posts</td><td width=100><br><a href='act.jsp?id="+rs.getString(1)+"'>Active</a></td></tr>");
      i++;
      }
 
%>

</table>
    
    
    
    
    
<%@include file="adminfooter.jsp" %>