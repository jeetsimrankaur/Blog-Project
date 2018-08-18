<%
session.removeAttribute("aid");
session.removeAttribute("aname");
session.removeAttribute("aemail");
response.sendRedirect("index.jsp");
%>
