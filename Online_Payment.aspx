<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Online_Payment.aspx.cs" Inherits="Online_Payment" %>

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
        article.col-1{
            float:left;
            height: auto;
        }
        
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            width: 120px;
        }
        
        .auto-style4 {
            width: 183px;
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
							<li><a href="Take_Appointment.aspx">Take Appointment</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Online Payment</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
                          <h3>Please provide the following information</h3>
                            <table>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Bank :"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_bank" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_bank" ErrorMessage="Bank name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Account No :"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_account_no" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_account_no" ErrorMessage="Account no required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Payment Type :"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="DropDownList_pay" runat="server" CssClass="form-control">
                                            <asp:ListItem>Credit Card</asp:ListItem>
                                            <asp:ListItem>Debit Card</asp:ListItem>
                                            <asp:ListItem>Master Card</asp:ListItem>
                                            <asp:ListItem>Paypal</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Card No :"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_card_no" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_card_no" ErrorMessage="Card no required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Amount :"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label_amount" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        &nbsp;</td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Confirm Payment?" Width="150px"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="width:200px;">
                                        <asp:Button ID="Button_yes" runat="server" CssClass="button" Text="Yes" OnClick="Button_yes_Click" />
                                        <asp:Button ID="Button_no" runat="server" CssClass="button" Text="No" OnClick="Button_no_Click" />
                                    </td>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                            </table>
                          <br />
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











