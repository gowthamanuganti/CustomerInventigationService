<title>Customer Profile Modification</title>
<script>
function Check(obj)
{
len=obj.value;
var colors=new Array("`","~","!","@","#","$","%","^","&","*","(",")","_","+","<",">","/","?","}","{","[","]","'",";","=","-","|",",","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");
for(j=0;j<=len.length-1;j++)
{
var char=len.substring(j,j+1);
for(i=0;i<=colors.length-1;i++)
{
 var sNumber=colors[i];
 if(sNumber==char)
 {
  obj.value="";
  obj.focus();
  
  return false;
 }
}
}
if(obj.value.length==0)
{
   return false;
}
string_value=obj.value;
var whitespace = " \n\r\t\."
var existed="No";
var Valid="No";
for (var counter = 0; counter < string_value.length; counter++) 
 {
      // Get the current character
      current_char = string_value.charAt(counter)
      // If it's not in the whitespace characters string,
      // return false because we found a non-whitespace character
      if(whitespace.indexOf(current_char) =="") 
      {
  	    var existed="Yes";
      }else if(whitespace.indexOf(current_char) ==-1) 
      {
  	     existed="No";
  	     Valid="Yes";
  	     break;
      }
    }
    if(existed=="No" && Valid=="Yes")
    {
        existed="Yes";
   	  Valid="No";
   	  return false;
    }else
    {
  		 obj.value="";
  		  existed="Yes";
  		  Valid="No";
  		  obj.focus();
  		  return false;
  	
    }

}




function its_whitespace2(obj)
 {
	 
if(obj.value.length==0)
{
	
return false;

	}
// These are the whitespace characters


  var whitespace = " \n\r\t"
  var existed="No";
  var Valid="No";
len=obj.value;

var string_value=obj.value;


var char=len.substring(len.length,len.length-1);
 // Run through each character in the string
  for (var counter = 0; counter < string_value.length; counter++) 
  {
    // Get the current character
    current_char = string_value.charAt(counter)
    // If it's not in the whitespace characters string,
    // return false because we found a non-whitespace character
    if(whitespace.indexOf(current_char) =="") 
    {
	    var existed="Yes";
    }else if(whitespace.indexOf(current_char) ==-1) 
    {
	     existed="No";
	     Valid="Yes";
	     break;
    }
  }
  if(existed=="No" && Valid=="Yes")
  {
      existed="Yes";
 	  Valid="No";
 	  return false;
  }else
  {
		  obj.value="";
		  existed="Yes";
		  Valid="No";
		  obj.focus();
		  
		  return false;
		  
		   
		
	}
	
    
	
	
  // Otherwise, the string has nothing but
  // whitespace characters, so return true
  
  
}











function its_whitespace(obj)
{
len=obj.value;
var colors=new Array("~","`","!","@","#","$","%","^","&","*","(",")","_","+","<",">","/","?","}","{","[","]","'",";","=","-","|",",","1","2","3","4","5","6","7","8","9","0");
for(j=0;j<=len.length-1;j++)
{
var char=len.substring(j,j+1);
for(i=0;i<=colors.length-1;i++)
{
  var sNumber=colors[i];
  if(sNumber==char)
  {
  
   obj.value="";
   obj.focus();
   return false;
  }
}

}


	 
if(obj.value.length==0)
{
	
return false;

}





string_value=obj.value;

	
  // These are the whitespace characters
  var whitespace = " \n\r\t\."
  var existed="No";
  var Valid="No";
  
  
  
  
  // Run through each character in the string
    for (var counter = 0; counter < string_value.length; counter++) 
    {
      // Get the current character
      current_char = string_value.charAt(counter)
      // If it's not in the whitespace characters string,
      // return false because we found a non-whitespace character
      if(whitespace.indexOf(current_char) =="") 
      {
  	    var existed="Yes";
      }else if(whitespace.indexOf(current_char) ==-1) 
      {
  	     existed="No";
  	     Valid="Yes";
  	     break;
      }
    }
    if(existed=="No" && Valid=="Yes")
    {
        existed="Yes";
   	  Valid="No";
   	  return false;
    }else
    {
  		 obj.value="";
  		  existed="Yes";
  		  Valid="No";
  		  obj.focus();
  		  return false;
  	
    }



    
	

  
}



function its_whitespace1(obj)
{
len=obj.value;
var colors=new Array("`","~","!","@","#","$","%","^","&","*","(",")","_","+","<",">","/","?","}","{","[","]","'",";","=","-","|",",");
for(j=0;j<=len.length-1;j++)
{
var char=len.substring(j,j+1);
for(i=0;i<=colors.length-1;i++)
{
  var sNumber=colors[i];
  if(sNumber==char)
  {
  
   obj.value="";
   obj.focus();
   return false;
  }
}

}


	 
if(obj.value.length==0)
{
	
return false;

}





string_value=obj.value;

	
  // These are the whitespace characters
  var whitespace = " \n\r\t\."
  var existed="No";
  var Valid="No";
  
  
  
  
  // Run through each character in the string
    for (var counter = 0; counter < string_value.length; counter++) 
    {
      // Get the current character
      current_char = string_value.charAt(counter)
      // If it's not in the whitespace characters string,
      // return false because we found a non-whitespace character
      if(whitespace.indexOf(current_char) =="") 
      {
  	    var existed="Yes";
      }else if(whitespace.indexOf(current_char) ==-1) 
      {
  	     existed="No";
  	     Valid="Yes";
  	     break;
      }
    }
    if(existed=="No" && Valid=="Yes")
    {
        existed="Yes";
   	  Valid="No";
   	  return false;
    }else
    {
  		 obj.value="";
  		  existed="Yes";
  		  Valid="No";
  		  obj.focus();
  		  return false;
  	
    }



    
	

  
}

function NoCheck(obj)
{
n=event.keyCode;
len=obj.value;
if((n<=57 && n>=48) ||  n==8 || (n<=105 && n>=96) || n==46 ||(n>=33 && n<=36) || (n==37) || (n==18) ||(n==92) ||(n==93) ||(n==17) ||(n==145) ||(n==19) ||(n==144) ||(n==35)|| (n==46)||(n==45)||(n==40)|| (n==38) || (n==39) || (n==9))
{

}else
{
 obj.value="";

}

}






function setfocus()
{

f1.CustName.focus();


}



function CharCheck(obj)
{
len=obj.value;


len=obj.value;

if(len.charAt(0)==" " || len.charAt(0)=="."  )
{
  var oldvalue=len.substring(1,len.length);
  obj.value=oldvalue;
}

n = event.keyCode;



len=obj.value;


if((n>=65 && n<=90)|| (n>=33 && n<=36) || (n==37) || (n==18) ||(n==92) ||(n==93) ||(n==17) ||(n==145) ||(n==19) ||(n==144) ||(n==35)|| (n==46)||(n==45)||(n==40)|| (n==38) || (n==39)||(n==32) || (n==8) || (n==110) || (n==190) || (n==20) || (n==9) || (n==16) || n==36)
{
	
	
}else
{
  obj.value="";
  return false;
}
}


function validateuserid(obj)
{
	
	var string_value=obj.value;
	var user=obj.value;
	
	its_whitespace1(obj);
	
	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckUser?user=" + user
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	
	var str="a";
	
	
	if(s.charAt(0)==str)
        {
        alert(s);
        
         f1.txtlogin.value="";
         
	 f1.txtlogin.focus();
        }
        
        	
}



function CheckInput()
{
	
	
if(f1.CustName.value=="" || f1.CustName.value==null)
{
   alert("Please Enter Customer name");
   f1.CustName.focus();
   return false;
}else if(f1.CustName.value==" ")
{
   alert("Please Enter Customer name");
   f1.CustName.focus();
   return false;
}else if(f1.CustAdd.value=="")
{
   alert("Please Enter Customer Address");
   
   f1.CustAdd.focus();
   return false;
}else if(f1.CustAdd.value.length<5)
{
   alert("Customer Address should not be less than the 5 Characters");
   f1.CustAdd.focus();
   return false;
}else if(f1.CustAdd.value.length>100)
{
   
   alert("Customer Address should not be greater than the 100 Characters");
   f1.CustAdd.focus();
   return false;
   
}else if(f1.Code.value=="")
{
  alert("Please Enter Code No");
  f1.Code.focus();
  
  return false;



}else if(f1.CustCno.value=="")
{
  alert("Please Enter Contact No");
  f1.CustCno.focus();
  
  return false;
}else if(f1.CustName.value.length<3)
{

 alert("Customer Name Should Be Minimum 3 Characters");
 f1.CustName.focus();
 return false;

}else if(f1.Code.value.length<3)
{
    alert("Code Number Should Be Minimum 3 Digits");
   f1.Code.focus();
   return false;
}else if(f1.CustCno.value.length<6)
 {
    alert("Phone Number Should Be Minimum 6 Digits");
   f1.CustCno.focus();
   return false;
   
}
}








</script>



<%@page import="java.sql.*,CMST.*" %>
<style>

a
{
           color:"Black";
           text-decoration:none;
}
a:hover
{
            color:Gray;
            text-decoration:underline;

}
</style>
<jsp:include page="ShowHeader.jsp" />

<HTML><HEAD><TITLE>Home Page</TITLE>

<LINK href="css/styles.css" type=text/css rel=stylesheet>
    
    
<BODY bgcolor=lightyellow onload="setfocus()"><A name=Entity_1></A>

<%
int regid=0;
Connection con=null;
   ResultSet rs=null;
   
   
try
{

   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
     
  regid =Integer.parseInt(session.getValue("regid") + "");
   
   rs=CBean.executeQuery("select   * from CUSTOMER_MASTER where customer_id=" + regid + " ");
   rs.next();
   
   
%>




<%
}catch(Exception ex)
{
     out.println("Error At " + ex);
}
 %>

  <TABLE class=tabformat width="70%" border=0>
  <TBODY>
  
<h3>Customer Information</h3>

<form name="f1"  action="UpdateCustomer" >
<table border="0" >
<tr>
<td class=tabhead2><b>Customer Id</b>
<td class=tabhead2><input type="text" name="regno" readonly value=<%=regid%>></td></tr>
<td class=tabhead2><b>Customer Name</b></td>
<td class=tabhead2><input type="text" name="CustName" value="<%=rs.getString(2)%>" maxlength=30    onkeyup="CharCheck(this)" onblur="its_whitespace(this)" ></td></tr>
<td class=tabhead2><b>CustomerAddress</b>
<td class=tabhead2><b><textarea name=CustAdd  rows=5  cols=50 onblur="its_whitespace2(this)" ><%=rs.getString(3)%></textarea></b></td></tr>
<td class=tabhead2><b>Contact No</b></td>

<td ><input name="Code" type="text"  onkeyup="NoCheck(this)" onblur="Check(this)"  value=<%=rs.getString(4)%>  maxlength=5 size=5>-
<input name="CustCno" type="text"  onkeyup="NoCheck(this)" value=<%=rs.getString(5)%>  onblur="Check(this)" maxlength=13></td>

</tr>
      
    </tr>



<br>



</tr>
</td>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value="Update" onclick="return CheckInput()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value="  Clear  " ></td>
</tr>
</table>
<tr>
<tr>

<td class=tabhead2>
<h4><a href="ChangePwd.jsp" ><b>Change Password</b></a></h4>
</td>

</tr>

</form>
<jsp:include page="Footer.jsp" />

</body>
</html>
