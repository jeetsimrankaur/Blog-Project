<%@ include file="userheader.jsp"  %>


<table border=0 align="center" cellspacing="">

<%

  ResultSet rs,rs1;
  rs=DBBlog.dbbloglayer.getResult("select * from posts where postauthorid="+session.getAttribute("sid"));
 
 while(rs.next())
    { 
        out.print("<tr><td colspan=2><font size=4><br><b>Title</b>:-"+rs.getString(3) +"<br><br>"+rs.getString(4)+"<br><br>Posted By:-"+rs.getString(9)+"<br>Dated:-"+rs.getString(2)+"</font><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Likes("+rs.getString(6)+")&nbsp; &nbsp; &nbsp; &nbsp;Dislikes("+rs.getString(10)+") &nbsp; &nbsp; &nbsp; &nbsp;Comments("+rs.getString(7) +")<hr></td></tr>");
 out.print("<tr><td width=100></td><td><font color='blue'><h3>Comments---<h3></font></td></tr>");
  rs1=DBBlog.dbbloglayer.getResult("select * from comments where commentpostid="+rs.getString(1)+"");
 
 while(rs1.next())
  {
      out.print("<tr><td width=100></td><td>"+rs1.getString(5)+"<br>Dated:-"+rs1.getString(4)+"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;Commented By:-"+rs1.getString(3)+"</td></tr>");
  }
    }  
       
    
%>
</table>   

<%@ include file="userfooter.jsp"  %>
