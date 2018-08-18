<%@ include file="userheader.jsp" %> 

<h3>Number of Post's -
    <%
        String np=DBBlog.dbbloglayer.getScaler("select nofposts from user where userid="+session.getAttribute("sid")); 
        out.print(np +"<hr>");
    %> 
</h3>          
    <%
         if(request.getParameter("p")!=null)
          out.print("<BR><br><h3><font color=green>post added</font><h3><br>");            
    %>
               
<%@ include file="userfooter.jsp" %> 
