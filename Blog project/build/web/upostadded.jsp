
<%
// insert the record in database
 String posttitle=request.getParameter("t1");
 String content=request.getParameter("t2");
 //String status=request.getParameter("t3")==null?"0":"1"
 
            
 if(DBBlog.dbbloglayer.executeq("insert into posts(posttitle,postcontent,postdate,postauthorid,postauthor) values ('"+posttitle+"','"+content+"','"+java.time.LocalDate.now()+"',"+session.getAttribute("sid")+",'"+session.getAttribute("sname")+"')")==true)
 {
     DBBlog.dbbloglayer.executeq("update user set nofposts=nofposts+1 where userid="+session.getAttribute("sid")+"");
     response.sendRedirect("loginpage.jsp?p=2");
 }
 else
       response.sendRedirect("addupost.jsp");
 
//'DateTimeFormatter.ofPattern("yyyy/MM/dd").format(LocalDate.now())'
%>

