<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
        .col-1{
            float:left;
            height: 550px;
        }
        .auto-style1 {
            width: 159%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 279px;
        }
        .auto-style4 {
            width: 279px;
        }
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
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-1">
                            <h3>Only for Admin</h3>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Admin"></asp:Label>
                                    </td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="TextBox_admin" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_admin" ErrorMessage="TextBox empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="TextBox_admin_password" runat="server" CssClass="form-control" TextMode="Password" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_admin_password" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Button ID="Button_admin_login" runat="server" CssClass="button" OnClick="Button_admin_login_Click" Text="Login" />
                                        <br />
                                        <br />
                                        <asp:Label ID="Label_admin_warning" runat="server" Font-Size="Medium" ForeColor="Red" Text="Wrong information" Visible="False"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
							
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
					CDopyright 2014 HelloDoctor
				</div>
			</div>
		</footer>
		
 </form>
</body>
</html>


