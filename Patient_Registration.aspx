<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Registration.aspx.cs" Inherits="Patient_Registration" %>

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
        .col-2{
            margin-left: 150px;
        }
        .auto-style7 {
            width: 175%;
        }
        .auto-style8 {
            width: 191px;
        }
        .auto-style9 {
            width: 191px;
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
            width: 147px;
        }
        .auto-style11 {
            width: 200px;
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
							<li><a href="Patient_Help.aspx">Help</a></li>
							<li><a href="Patient.aspx">Login</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Patient Registration Form</h3>
                <hr />
				<div class="indent-left">   
					<div class="wrapper">
						<article class="col-1">
							
						    <table class="auto-style7">
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                                    </td>
                                    <td class="auto-style10"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_name" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Incorrect email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" TextMode="Password" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password required" ControlToValidate="TextBox_password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_confirm_password" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_confirm_password" ErrorMessage="Confirm password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirm_password" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="DropDownList_gender" runat="server" CssClass="form-control">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Age"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_age" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Age required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Incorrect age" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Contact No"></asp:Label>
                                    </td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">
                                        <asp:TextBox ID="TextBox_contact" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style11">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Contact no required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                            </table>

                              <p>
                                <asp:Button ID="Button_submit" runat="server" CssClass="button" Text="Submit" OnClick="Button_submit_Click" />
                            &nbsp;
                                <asp:Label ID="Label_warning" runat="server" ForeColor="Red" Text="You can not register.You email alrady exists." Visible="False" Width="300px"></asp:Label>
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




