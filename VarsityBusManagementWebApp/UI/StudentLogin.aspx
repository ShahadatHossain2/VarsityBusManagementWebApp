<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.StudentLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Student Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
    <%--<link rel="icon" type="image/png" href="../Style/Login/images/icons/favicon.ico"/>--%>
    
<!--===============================================================================================-->
    <link href="../Style/Login/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    
    <link href="../Style/Login/vendor/animate/animate.css" rel="stylesheet" />
<!--===============================================================================================-->	
    <link href="../Style/Login/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login/vendor/animsition/css/animsition.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login/vendor/select2/select2.min.css" rel="stylesheet" />
<!--===============================================================================================-->	
    <link href="../Style/Login/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login/css/util.css" rel="stylesheet" />
    <link href="../Style/Login/css/main.css" rel="stylesheet" />
<!--===============================================================================================-->
  
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(../Style/Login/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" id="form1" runat="server" method="post">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<asp:TextBox ID="idTextBox"  class="input100" runat="server" placeholder="Enter UserID" Height="16px"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<asp:TextBox ID="passwordTextBox" class="input100" runat="server" TextMode="Password" placeholder="Enter Password" Height="16px"></asp:TextBox>  
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
                           <input style="background: black" class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label style="border: black" class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							 <b style="color:Green;">Are You New? Please <a href="StudentUI.aspx" style="color: blue">Sign up</a> </b>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" ForeColor="White" />
					</div>

                     <asp:Label ID="outputLabel" runat="server" Text="" ForeColor="red"></asp:Label>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
     <script src="../Style/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	 <script src="../Style/Login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../Style/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="../Style/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="../Style/Login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login/js/main.js"></script>
          
</body>
</html>

