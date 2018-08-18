<%@ include file="userheader.jsp"  %>

<table border=0 align="center" cellspacing="">

<%
    
 if(request.getParameter("q")!=null)
        {
             String content=request.getParameter("t1");
              String postid=request.getParameter("pid");
          
            ResultSet rs;
  
            rs=DBBlog.dbbloglayer.getResult("select * from posts where postid="+request.getParameter("pid"));
            while(rs.next())
            {
             if(DBBlog.dbbloglayer.executeq("insert into comments(commentpostid,commentauthor,commentdate,commentcontent,commentauthorid) values ("+rs.getString(1)+",'"+session.getAttribute("sname") +"','"+java.time.LocalDate.now()+"','"+content+"',"+session.getAttribute("sid")+")")==true)
            { 
                DBBlog.dbbloglayer.executeq("update posts set postcommentcount=postcommentcount+1 where postid="+postid);
                response.sendRedirect("commentadded.jsp?t=2&y="+postid);
            }
        }
                
        }
  if(request.getParameter("t")!=null)
         {
                  out.print("<tr><td colspan=><BR><br><h3><font color=green>comment posted</font><h3><br></td></tr>");            
   
                  out.print("<tr><td><a href='viewtopic.jsp?p="+request.getParameter("y")+"'>Back</a></td></tr>");
         
         }


%>
</table>

<%@ include file="userfooter.jsp"  %>