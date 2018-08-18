<%
String id=DBBlog.dbbloglayer.getScaler("select adminid from admin where adminemail='"+request.getParameter("t1")+"' and adminpassword="+request.getParameter("t2"));
if(id==null || id.equals(""))
    response.sendRedirect("adminlogin.jsp?p=2");
else
{
    session.setAttribute("aid",id);
    session.setAttribute("aemail",request.getParameter("t1"));
    String name=DBBlog.dbbloglayer.getScaler("select adminname from admin where adminid="+id);
    session.setAttribute("aname",name);
   response.sendRedirect("adminpage.jsp");

}
%>