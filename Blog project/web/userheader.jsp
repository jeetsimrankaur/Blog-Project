
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.util.*,java.time.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
    <body>
        
        <%
            if(session.getAttribute("semail")==null)
            {
                response.sendRedirect("index.jsp?ses=exp");
                return;
            }
        %>
        
     
        <table cellspacing="0" width="1000" height=""  alighn="center">
           
            <tr>
                <td colspan="3" align="center"><h1><font color="Blue">Blogs</font> </h1><hr></td>
            </tr>           
            <tr bgcolor="grey">
                
                <td><h2>&nbsp;&nbsp;Welcome <%=session.getAttribute("sname")%>!!</h2></td>
                <td align="right" width="100"><a href='loginpage.jsp'>Back</a></td>
                <td align="right" width="100"><a href="userlogout.jsp">Log out</a>&nbsp;&nbsp;</td>                              
            </tr>          
        </table>
        <p> <table cellspacing="0" bgcolor="blue" width="1000" height="10"  alighn="center"></table></p>
    
    
        <table cellspacing="0" width="1000" height="" bgcolor="" alighn="center">
            <tr>
                <td width="200" valign="top" halign="left">

<font size="">*<a href="addupost.jsp">Add new post</a></font><br>
<font size="">*<a href="viewbloggers.jsp">View all Bloggers</a></font><br>
<font size="">*<a href="viewmypost.jsp">View my posts</a></font><br>
<font size="">*<a href="viewposts.jsp">View all post</a></font><br>
<font size="">*<a href="postsandcomments.jsp">View post comments</a></font><br><br>

                </td>
                
                <td valign="middle" align='center'>