<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc_Setting.aspx.cs" Inherits="Doc_Setting" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
	<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script type='text/javascript' src='js/menu_jquery.js'></script>

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
        .col-3{
            float:left;
            height: 550px;
            width:700px;
        }
        #thanks{
            width: 400px;
        }
        #ed{
           float:right;
           font-size: 17px;
        }
        .b_prescription{
            display:inline-block;
	        cursor:pointer;
        }
        .extra-wrap {
            padding-top: 17px;
        }
        .auto-style1 {
            width: 235px;
        }
        .auto-style2 {
            width: 225px;
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
				</div>
			</div>
		

                          <div id="cssmenu">
                            <ul>
                              <li><a href='Doctor_Account.aspx'>Home</a></li>
                              <li class='has-sub'><a href='#'>Doctor</a>
                                 <ul>
                                    <li><a href='Doctor_Profile.aspx'>My Profile</a></li>
                                    <li><a href='Doc_Eidt_Appointment.aspx'>Appointment Info</a></li>
                                    <li><a href='Doc_Edit_Serial.aspx'>Appointment Date & Serial Info</a></li>
                                     <li><a href='Doc_Setting.aspx'>Account Settings</a></li>
                                 </ul>
                              </li>
                              <li class='has-sub'><a href='#'>Patient</a>
                                  <ul>
                                      <li><a href="Doc_Patient_List.aspx">Patients' List</a></li>
                                      <li><a href="Doctor_Review.aspx">Patients' Review</a></li>
                                      <li><a href="Doctor_Online.aspx">Online Payment Info</a></li>
                                  </ul>
                              </li>
                              <li class='last'><asp:LinkButton runat="server" OnClick="Logout">Logout</asp:LinkButton></li>
                            </ul>
                         </div>

            </header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Account Settings</h3>
				<hr />                                
				<div class="indent-left">
					<div class="wrapper">
                            <h3><asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="Black" Text="Change Password"></asp:Label></h3>
                            <hr />
                            <table class="border-bot2">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Current Password :"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="TextBox_current" runat="server" CssClass="form-control" Width="200px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_current" ErrorMessage="Textbox is empty." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="New Password :"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="TextBox_new" runat="server" CssClass="form-control" Width="200px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_new" ErrorMessage="Textbox is empty." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Confirm Password :"></asp:Label>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="TextBox_confirm" runat="server" CssClass="form-control" Width="200px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_confirm" ErrorMessage="Textbox is empty." ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_new" ControlToValidate="TextBox_confirm" ErrorMessage="Both password must be same." ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Button ID="Button_save" runat="server" CssClass="button" Text="Save" OnClick="Button_save_Click" />
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label_mesg" runat="server" Font-Size="Medium" Width="250px"></asp:Label>
                                    </td>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
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


