<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OfficeUI.aspx.cs" Inherits="VarsityBusManagementWebApp.UI.OfficeUI" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Official Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
   <%-- <link rel="icon" type="image/png" href="../Style/Login/images/icons/favicon.ico"/>--%>
    <link href="../Style/Login1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/fonts/iconic/css/material-design-iconic-font.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/vendor/animate/animate.css" rel="stylesheet" />
<!--===============================================================================================-->	
    <link href="../Style/Login1/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/vendor/animsition/css/animsition.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/vendor/select2/select2.min.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
<!--===============================================================================================-->
    <link href="../Style/Login1/css/util.css" rel="stylesheet" />
    <link href="../Style/Login1/css/main.css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../Style/Login/images/bg-.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server" method="post" >
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                         <asp:TextBox class="input100" ID="userTextBox" runat="server" placeholder="User Name"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						 <asp:TextBox class="input100" ID="passwordTextBox" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>

					<div class="container-login100-form-btn">
                        <asp:Button class="login100-form-btn" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /> 
					</div>

<%--					<div class="text-center p-t-90">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>--%>
				</form>
                <asp:Label ID="outputLabel" runat="server" ForeColor="White"></asp:Label>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	
<!--===============================================================================================-->
    <script src="../Style/Login1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login1/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login1/vendor/bootstrap/js/popper.js"></script>
    <script src="../Style/Login1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
    <script src="../Style/Login1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login1/vendor/daterangepicker/moment.min.js"></script>
    <script src="../Style/Login1/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login1/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
    <script src="../Style/Login1/js/main.js"></script>
</body>
</html>