
<%@ include file="userheader.jsp" %>

<table border=0 align="center" cellspacing="0">
<%

  ResultSet rs;
 // if(request.getParameter("t1")==null)
        //rs=DBBlog.dbbloglayer.getResult("select * from posts order by postid desc"); 
       rs=DBBlog.dbbloglayer.getResult("select * from posts where postauthorid="+session.getAttribute("sid")); 
       
//  else    
 //       rs=DBBlog.dbbloglayer.getResult("select * from item where "+request.getParameter("r1")+" like '%"+request.getParameter("t1")+"%'"); 
  
  while(rs.next())
      {
        //String posttitle=DBBlog.dbbloglayer.getScaler("select posttitle from posts where postauthorid="+session.getAttribute("sid")); 
        out.print("<tr><td><font size=4><br><b>Title</b>:-"+rs.getString(3) +"<br><br>"+rs.getString(4)+"<br>Dated:-"+rs.getString(2)+"</font><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Likes("+rs.getString(6)+")&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Comments("+rs.getString(7) +")<hr></td></tr>");
      }
 
%>
</table>

<%@ include file="userfooter.jsp" %>
