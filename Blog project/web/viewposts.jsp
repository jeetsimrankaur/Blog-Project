<%@ include file="userheader.jsp"  %>


<font bgcolor="lightyellow"><form name="frm" method="post" action="viewposts.jsp" >

<p align="center">
       Post Writter :-<input type=text name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>' /> <input type="submit" value="Go" />
</p> 

</form></font>

<table border=0 align="center" cellspacing="50">

<%

  ResultSet rs;
  if(request.getParameter("t1")==null)
        rs=DBBlog.dbbloglayer.getResult("select * from posts order by postid desc"); 
  else    
        rs=DBBlog.dbbloglayer.getResult("select * from posts where postauthor like '%"+request.getParameter("t1")+"%'"); 
  
  while(rs.next())
      {
          out.print("<tr><td><font size=4><br><b>Title</b>:-"+rs.getString(3) +"<br><br>"+rs.getString(4)+"<br><br>Posted By:-"+rs.getString(9)+"<br>Dated:-"+rs.getString(2)+"</font><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href='viewtopic.jsp?p="+rs.getString(1)+"'>View post</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Likes("+rs.getString(6)+")&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Comments("+rs.getString(7) +")<hr></td></tr>");
 
      }
  
%>

</table>

<%@include file="userfooter.jsp" %>