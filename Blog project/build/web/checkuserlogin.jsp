<%
String id=DBBlog.dbbloglayer.getScaler("select userid from user where useremail='"+request.getParameter("t1")+"' and password="+request.getParameter("t2")+" and status=1");
if(id==null || id.equals(""))
    response.sendRedirect("userlogin.jsp?p=2");
else
{
    session.setAttribute("sid",id);
    session.setAttribute("semail",request.getParameter("t1"));
    String name=DBBlog.dbbloglayer.getScaler("select username from user where userid="+id);
    session.setAttribute("sname",name);
    String post=DBBlog.dbbloglayer.getScaler("select nofposts from user where userid="+id);  
    session.setAttribute("spost",post);
    
   
    response.sendRedirect("loginpage.jsp");

}
%>