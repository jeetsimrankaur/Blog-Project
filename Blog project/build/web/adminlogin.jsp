<%@ include file="header.jsp" %> 


<form name="frm" method="post" action="checkadminlogin.jsp" >           
                    <table>
                        <tr>  ----------Authenticate yourself----------<br><br></tr>
                        <tr>
                            <td><br>email<br></td>
                            <td><br><input type=text name=t1 required ><br></td>
                        </tr>
                        
                         <tr>
                            <td><br>Password<br></td>
                            <td><br><input type=password name=t2 required ><br></td>
                        </tr>
                        
                         <%
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red><br> invalid email or pwd</font></td></tr>");
                        %>
                        <tr>
                            <td colspan="2" align=center ><br>
                            <input type="submit" value="ADMIN LOGIN" ><br><br>
                        </td>
                        </tr>
                         <tr>
                        
                        </tr>
                    </table>
</form>
                    
     

<%@ include file="footer.jsp" %>                    