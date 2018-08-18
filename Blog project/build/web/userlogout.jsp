<%
session.removeAttribute("sid");
session.removeAttribute("sname");
session.removeAttribute("semail");
response.sendRedirect("index.jsp");
%>
