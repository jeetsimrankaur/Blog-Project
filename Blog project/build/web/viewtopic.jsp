<%@ include file="userheader.jsp"  %>

<script language="javascript">
    function abc()
    {
        document.forms[0].submit();
    }
</script>
<form name=frm3 method=post action='likepage.jsp?c=2&p=<%=request.getParameter("p")%>'>
    Like<input type=radio name=r value="like" onclick="abc()">
&nbsp; &nbsp; &nbsp; &nbsp;<a href="loginpage.jsp">Back</a>
</form>

<%

   if(request.getParameter("t")!=null)
    
        if(request.getParameter("s").equals("dislike"))
         
        {  
                DBBlog.dbbloglayer.executeq("update posts set postlikecount=postlikecount-1 where postid="+request.getParameter("p"));
             
        }  
        
    
 %>

<table border=0 align="center" cellspacing="">

<%

  ResultSet rs,rs1;
  
 rs=DBBlog.dbbloglayer.getResult("select * from posts where postid="+request.getParameter("p"));
 String postid=request.getParameter("p");
 while(rs.next())
    { 
        out.print("<tr><td colspan='3'><font size=4><br><b>Title</b>:-"+rs.getString(3) +"<br><br>"+rs.getString(4)+"<br><br>Posted By:-"+rs.getString(9)+"<br>Dated:-"+rs.getString(2)+"</font><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;Likes("+rs.getString(6)+")&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Comments("+rs.getString(7) +")<hr></td></tr>");
 
    }  
        out.print("<form name=frm2 method=post action='commentadded.jsp?q=2&pid="+postid+"'><tr><td>Write Comment </td><td><input type=text name=t1 required style='width:400px'></td><td><input type='submit' value='Add Comment'></td></tr>");            

  rs1=DBBlog.dbbloglayer.getResult("select * from comments where commentpostid="+request.getParameter("p")+"");
 out.print("<tr><td colspan='3'><font color='blue'><h3>Comments---<h3></font></td></tr>");
  while(rs1.next())
  {
      out.print("<tr><td colspan='3'>"+rs1.getString(5)+"<br>Dated:-"+rs1.getString(4)+"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Commented By:-"+rs1.getString(3)+"</td></tr>");
      out.print("<tr><td colspan='3'><hr></td></tr>");
  }
        
%>

</table>   






<%@ include file="userfooter.jsp"  %>
