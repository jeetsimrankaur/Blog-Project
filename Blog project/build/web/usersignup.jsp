<%@ include file="header.jsp"  %>          
 
<form name=frm method=post action="adduser.jsp" >
<table border=0 width=300 height=300 >
    <tr>
        <td colspan=2 >Enter Your Details</td>  
    </tr>
     <tr>
        <td>email</td>
        <td><input type=text name=t1 required ></td>
    </tr>
    
     <tr>
        <td>Name</td>
        <td><input type=text name=t2 required ></td>
    </tr>
    
    <tr>
         <td>Gender</td>
         <td>
             <input type=radio name=rb value="Male"  >Male
             <input type=radio name=rb value="Female"  >Female
         </td>
   </tr>
   
   <tr>
       <td>password</td>
       <td><input type="password" name="t3"</td>
   </tr>
   
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=userlogin.jsp> Back</a>
       </td>   
   </tr>
</table>
</form>


<%@ include file="footer.jsp"  %>           