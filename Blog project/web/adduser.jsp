<%
// insert the record in database
 String useremail=request.getParameter("t1");
 String username=request.getParameter("t2");
 String gender=request.getParameter("rb");
 String password=request.getParameter("t3");
  
if(DBBlog.dbbloglayer.executeq("insert into user(useremail,username,gender,password) values ('"+useremail+"','"+username+"','"+gender+"',"+password+")")==true)
    response.sendRedirect("useradded.jsp");
else
    response.sendRedirect("adduser.jsp");
 

%>