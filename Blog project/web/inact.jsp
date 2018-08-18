<%
    DBBlog.dbbloglayer.executeq("update user set status='0' where userid="+request.getParameter("id"));
    
    response.sendRedirect("activeusers.jsp?p=2&userid="+request.getParameter("id"));
         

%>