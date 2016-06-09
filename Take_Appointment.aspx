<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Take_Appointment.aspx.cs" Inherits="Take_Appointment" %>

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
            width:600px;
        }
        
        .auto-style1 {
            width: 186%;
        }
        .auto-style2 {
            width: 203px;
        }
        
        .auto-style3 {
            width: 203px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        
        .auto-style5 {
            width: 192px;
        }
        .auto-style6 {
            height: 20px;
            width: 192px;
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
							<li><a href="Find_Doctor.aspx">Find Doctor & Take Appointment</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Take Appointment & Create Account</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-1">
						    <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Doctor Name :"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label_doc_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Appointment Date :"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label_appointment_date" runat="server" Font-Size="Medium" Text="Label" Width="80px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Serial No :"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:Label ID="Label_serial" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Payment :"></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:CheckBox ID="CheckBox_cash" runat="server" />
                                        Cash<br />
                                        <asp:CheckBox ID="CheckBox_online" runat="server" />
                                        online</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2">
                                        &nbsp;</td>
                                    <td class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2">
                                        <asp:Label ID="Label7" runat="server" Font-Size="20px" ForeColor="Black" Text="Please provide the following information" Width="356px"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Name "></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_patient_name" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_patient_name" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_patient_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_patient_email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_patient_email" ErrorMessage="Incorrect email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_confirm_password" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_confirm_password" ErrorMessage="Confirm password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirm_password" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label12" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="DropDownList_gender" runat="server" CssClass="form-control">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label13" runat="server" Font-Size="Medium" Text="Age"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox_age" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Age required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_age" ErrorMessage="Incorrect age" ForeColor="Red" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label14" runat="server" Font-Size="Medium" Text="Contact No"></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox_contact" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Contact no required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Confirm Appointment?"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Button ID="Button_yes" runat="server" CssClass="button" OnClick="Button_yes_Click" Text="Yes" />
                                        <asp:Button ID="Button_no" runat="server" CssClass="button" OnClick="Button_no_Click" Text="No" />
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label_warning" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                    <td class="auto-style5">
                                        &nbsp;</td>
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
					Copyright 2014 HelloDoctor
				</div>
			</div>
		</footer>
		
 </form>
</body>
</html>











