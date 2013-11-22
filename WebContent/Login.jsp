<title>Customer Login Form</title>


<!-- <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$("#login").click(function() {
			var cLid = $('#cLid').val();
			var cPwd = $('#cPwd').val();
			if(cLid==""){
				alert('please enter your username');
				return false;
			}
			else	 if(cPwd==""){
				alert('please enter your password');
				return false;
			}
			alert('username=' + cLid + 'password=' + cPwd);
			$.ajax({

				url : "./CheckCustomer?uid=" + cLid + "&pwd=" + cPwd,
				type : "POST",
				async : false,
				success : function(data) {
					var result = data;
					alert("asdgasjgdjashgd: "+result);
					if(result="Invalid Login Information"){
						var login = "Login.jsp";	
						 window.location.href = login;
					}else{
						var successUrl = "CustomerHome.jsp"; // might be a good idea to return this URL in the successful AJAX call
					    window.location.href = successUrl;
					}
					

				}
			});
		});
	});
</script> -->


<style>
a {
	color: "Black";
	text-decoration: none;
}

a:hover {
	color: Gray;
	text-decoration: underline;
}
</style>

<jsp:include page="LoginHeader.jsp" />

<HTML>
<HEAD>
<TITLE>Home Page</TITLE>
<META>
<BODY>
	<form action="CustomerLogin" name=f method="post">
		<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%"
			border=0>
			<TBODY>
				<TR>

				</TR>

			</TBODY>
		</TABLE>

		<br> <br>

		<h3>Customer Login</h3>
		<br>
		<table border="0">
			<tr>
				<td class=tabhead2><b>Login Name :</b>
				<td class=tabhead2><input type="text" name="cLid" size=20
					maxlength=20 class="pwdstyle" id="cLid"></td>
			</tr>

			<td class=tabhead2><b>Password :</b></td>

			<td class=tabhead2><input type=password name="cPwd" size=20
				maxlength=20 class="pwdstyle" id="cPwd"></td>
			</tr>



			<tr>
				<td><center>
						<input type="submit" value="  Login  " id="login">&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="reset" value="  Clear " style="cursor: hand"
							onclick="return Clear()" height="50"></img>
					</center></td>
			</tr>
		</table>


		<br> <br> <br> <br> <br>


		<td class=tabhead2><b><a href="fpwd.jsp">ForGet Password
					?</a></b></td> <br> <br> <br> <br> <br> <br> <br>



	</form>
	<jsp:include page="/Footer.jsp"></jsp:include>
</BODY>
</HTML>
