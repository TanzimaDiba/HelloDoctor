<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen"/>
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen"/>   
		<script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/cufon-replace.js" type="text/javascript"></script>
		<script src="js/NewsGoth_400.font.js" type="text/javascript"></script>
		<script src="js/NewsGoth_700.font.js" type="text/javascript"></script>
		<script src="js/Vegur_300.font.js" type="text/javascript"></script> 
		<script src="js/FF-cash.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/jquery.googlemaps1.01.js"></script>
    <style type="text/css">

    </style>
</head>
<body id="page2">
    <form id="form1" runat="server">
    <!--==============================header=================================-->
		<header>
			<div class="main">
				<div class="wrapper">
					<h1>
						<a href="Default.aspx">HelloDoctor</a>
						
					</h1>
					<nav>
						<ul class="menu">
							<li><a href="Default.aspx">Home</a></li>
							<li><a href="About.aspx">About Us</a></li>
							<li><a href="Contact.aspx">Contact</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Only For Patients</h3>
                <hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-2">
							<h3>Login</h3>
                            
                            <asp:Label runat="server">E-mail</asp:Label>
                            <asp:TextBox runat="server" ID="TextBox_email" CssClass="form-control" Width="250px" />

                            <asp:Label runat="server">Password</asp:Label>
                            <asp:TextBox runat="server" ID="TextBox_password" TextMode="Password" CssClass="form-control" Width="250px" />
                            
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me</asp:Label>

                            <br />
                            <asp:Button runat="server" OnClick="LogIn" Text="Login" CssClass="button" />
                            <br />
                            <p class="register">
                             if you don't have a account <a href="Patient_Registration.aspx">register</a>
                            </p>
                            <p class="register">
                                <asp:Label ID="Label_warning" runat="server" Font-Size="Medium" ForeColor="Red" Width="450px"></asp:Label>
                            </p> 
						</article>

					</div>
				</div>
			</div>
		</section>

	<!--==============================footer=================================-->
		<footer>
			<div class="main">
				<div class="wrapper border-bot2 margin-bot">
					<article class="fcol-1">
						<div class="indent-left">
							<h3 class="color-1">Follow us</h3>
							<div class="list-services">
								<a class="facebook" style="background-image:url(images/facebook.png);background-repeat:no-repeat;"></a>
								<a class="twitter" style="background-image:url(images/twitter.png);background-repeat:no-repeat;"></a>
								<a class="google" style="background-image:url(images/google.png);background-repeat:no-repeat;" ></a>
							</div>
						</div>
					</article>
					<article class="fcol-2">
						<h3 class="color-1">Hotline</h3>
						<p class="p3">01622480885 , 01925120097<br /></p>
					</article>
					<article class="fcol-3">
						<h3 class="color-1">Contact Us</h3>
						<ul class="list-3">
							<li><a href="#">zahansafallwa@ymail.com</a></li>
							<li class="last-item"><a href="#">tanzimadiba@gmail.com</a></li>
						</ul>
					</article>
				</div>
				<div class="aligncenter" style="color:white;">
					Copyright 2014 HelloDoctor
				</div>
			</div>
		</footer>
		
 </form>
</body>
</html>

