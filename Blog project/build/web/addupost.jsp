
<%@ include file="userheader.jsp" %> 

<form name=frm1 method=post action='upostadded.jsp' >
<table border=0 width='800' valign='middle'>
    <tr>
        <td colspan=2 ><h2>Add Post</h2></td>  
    </tr>
    <tr>
        <td colspan="2" height="18"></td>
    </tr>
    <tr>
         <td width='200'><br>Post title<br></td>
         <td><br><input type=text name=t1 required style='width:500px'><br></td>
    </tr>     
    <tr>
         <td width='200'><br>Contents<br></td>
         <td><br><textarea name=t2 required style='width:500px'></textarea><br></td>
    </tr>
   
    <%--<tr>
       <td width='200'><br>Status<br></td>
       <td><br><input type=checkbox name=t3  ><br></td>
    </tr>
    --%>
    <tr>
        <td colspan="2" align="Center">
           <br><input type="submit" value="Add Post">
               <br><br>
              
        </td>   
    </tr>
</table>
</form>

<%@ include file="userfooter.jsp" %> 