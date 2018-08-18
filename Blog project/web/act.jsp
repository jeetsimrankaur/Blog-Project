<%
    DBBlog.dbbloglayer.executeq("update user set status='1' where userid="+request.getParameter("id"));
    
    response.sendRedirect("inactiveusers.jsp?q=2&userid="+request.getParameter("id"));
         

%>