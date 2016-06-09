<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc_Registration.aspx.cs" Inherits="Doc_Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
        .auto-style1 {
            width: 160%;
        }
        .auto-style2 {
            width: 267px;
        }
        .auto-style3 {
            width: 267px;
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 218%;
        }
        .auto-style6 {
            width: 248px;
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
							<li><a href="Doc_Reg_Help.aspx">Help</a></li>
							<li><a href="Doctor.aspx">Login</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Doctor Registration Form</h3>
                <hr />
				<div class="indent-left">   
					<div class="wrapper">
						<article class="col-1">
                            <h3>For Authentication</h3>
                            <asp:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1"></asp:ToolkitScriptManager>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_name" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" ErrorMessage="Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="National Id"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_national_id" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_national_id" ErrorMessage="National Id required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_national_id" ErrorMessage="Only numbers allowed" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Date of Birth"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBox_birth" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                        <asp:CalendarExtender runat="server" ID="CalendarExtender1" TargetControlID="TextBox_birth"></asp:CalendarExtender>
                                        <br />
                                    </td>
                                    <td class="auto-style4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_birth" ErrorMessage="Date of birth required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Medical College"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_college" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_college" ErrorMessage="College required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Year of MBBS degree"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_year_pass" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_year_pass" ErrorMessage="Year required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox_year_pass" ErrorMessage="Incorrect year" ForeColor="Red" MaximumValue="2014" MinimumValue="1950"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="Id provided by BMDC"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="TextBox_doctor_id" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox_doctor_id" ErrorMessage="Doctor Id required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Specialist"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="DropDownList_Specialist" runat="server" CssClass="form-control">
                                            <asp:ListItem>General</asp:ListItem>
                                            <asp:ListItem>Medicine</asp:ListItem>
                                            <asp:ListItem>Children</asp:ListItem>
                                            <asp:ListItem>Audiologist(Ear)</asp:ListItem>
                                            <asp:ListItem>Allergist</asp:ListItem>
                                            <asp:ListItem>Dentist</asp:ListItem>
                                            <asp:ListItem>Eye Specialist</asp:ListItem>
                                            <asp:ListItem>Cardiologist</asp:ListItem>
                                            <asp:ListItem>Dermatologist(Skin)</asp:ListItem>
                                            <asp:ListItem>Gastroenterologist(Disgestive)</asp:ListItem>
                                            <asp:ListItem>Gynecologist</asp:ListItem>
                                            <asp:ListItem>Neurologist</asp:ListItem>
                                            <asp:ListItem>Neurosurgeon</asp:ListItem>
                                            <asp:ListItem>Oncologist(Cancer)</asp:ListItem>
                                            <asp:ListItem>Orthopedic Surgeon</asp:ListItem>
                                            <asp:ListItem>Psychiatrist</asp:ListItem>
                                            <asp:ListItem>Surgeon</asp:ListItem>
                                            <asp:ListItem>Urologist</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label12" runat="server" Font-Size="Medium" Text="Location"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:DropDownList ID="DropDownList_location" runat="server" CssClass="form-control" Width="250px">
                                            <asp:ListItem>Dhaka(Uttara)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Mirpur)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Bonani)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Motizhil)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Dhanmondi)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Baridhara)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Gulshan)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Bashundhara)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Puran Dhaka)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Farm Gate)</asp:ListItem>
                                            <asp:ListItem>Dhaka(Asad Gate)</asp:ListItem>
                                            <asp:ListItem>Faridpur</asp:ListItem>
                                            <asp:ListItem>Gazipur</asp:ListItem>
                                            <asp:ListItem>Gopalganj</asp:ListItem>
                                            <asp:ListItem>Netrokona</asp:ListItem>
                                            <asp:ListItem>Jamalpur</asp:ListItem>
                                            <asp:ListItem>Kissoreganj</asp:ListItem>
                                            <asp:ListItem>Madaripur</asp:ListItem>
                                            <asp:ListItem>Manikganj</asp:ListItem>
                                            <asp:ListItem>Munshiganj</asp:ListItem>
                                            <asp:ListItem>Mymensingh</asp:ListItem>
                                            <asp:ListItem>Narayanganj</asp:ListItem>
                                            <asp:ListItem>Norshindi</asp:ListItem>
                                            <asp:ListItem>Rajbari</asp:ListItem>
                                            <asp:ListItem>Sariatpur</asp:ListItem>
                                            <asp:ListItem>Sherpur</asp:ListItem>
                                            <asp:ListItem>Tangail</asp:ListItem>
                                            <asp:ListItem>Bagerhat</asp:ListItem>
                                            <asp:ListItem>Jessore</asp:ListItem>
                                            <asp:ListItem>Khulna</asp:ListItem>
                                            <asp:ListItem>Chuadanga</asp:ListItem>
                                            <asp:ListItem>Jhenaidah</asp:ListItem>
                                            <asp:ListItem>Kustia</asp:ListItem>
                                            <asp:ListItem>Magura</asp:ListItem>
                                            <asp:ListItem>Meherpur</asp:ListItem>
                                            <asp:ListItem>Narail</asp:ListItem>
                                            <asp:ListItem>Satkhira</asp:ListItem>
                                            <asp:ListItem>Bogra</asp:ListItem>
                                            <asp:ListItem>Dinajpur</asp:ListItem>
                                            <asp:ListItem>Gaibandha</asp:ListItem>
                                            <asp:ListItem>Jaipurhat</asp:ListItem>
                                            <asp:ListItem>Kurigram</asp:ListItem>
                                            <asp:ListItem>Lalmonirhat</asp:ListItem>
                                            <asp:ListItem>Naogaon</asp:ListItem>
                                            <asp:ListItem>Natore</asp:ListItem>
                                            <asp:ListItem>Nawabganj</asp:ListItem>
                                            <asp:ListItem>Nilphamari</asp:ListItem>
                                            <asp:ListItem>Pabna</asp:ListItem>
                                            <asp:ListItem>Panchagar</asp:ListItem>
                                            <asp:ListItem>Rajshahi</asp:ListItem>
                                            <asp:ListItem>Rangpur</asp:ListItem>
                                            <asp:ListItem>Sirajganj</asp:ListItem>
                                            <asp:ListItem>Thakurgaon </asp:ListItem>
                                            <asp:ListItem>Sylhet</asp:ListItem>
                                            <asp:ListItem>Habiganj</asp:ListItem>
                                            <asp:ListItem>Moulavibazar</asp:ListItem>
                                            <asp:ListItem>Sunamganj</asp:ListItem>
                                            <asp:ListItem>Barisal</asp:ListItem>
                                            <asp:ListItem>Borguna</asp:ListItem>
                                            <asp:ListItem>Bhola</asp:ListItem>
                                            <asp:ListItem>Jhalokati </asp:ListItem>
                                            <asp:ListItem>Patuakhali </asp:ListItem>
                                            <asp:ListItem>Pirojpur</asp:ListItem>
                                            <asp:ListItem>Chittagong</asp:ListItem>
                                            <asp:ListItem>Bandarban</asp:ListItem>
                                            <asp:ListItem>Brahmanbaria</asp:ListItem>
                                            <asp:ListItem>Chadpur</asp:ListItem>
                                            <asp:ListItem>Comilla</asp:ListItem>
                                            <asp:ListItem>Cox&#39;s Bazar</asp:ListItem>
                                            <asp:ListItem>Feni</asp:ListItem>
                                            <asp:ListItem>Khagrachari</asp:ListItem>
                                            <asp:ListItem>Lokkhipur</asp:ListItem>
                                            <asp:ListItem>Noakhali</asp:ListItem>
                                            <asp:ListItem>Rangamati</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
							
						</article>

						<article class="col-2">
                           
                            <h3>For Signup</h3>
                            <table class="auto-style5">
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="TextBox_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Incorrect email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="TextBox_confirm" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_confirm" ErrorMessage="Passwrod required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirm" ErrorMessage="Both passwrod must be same" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="Contact No"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="TextBox_contact" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Contact No required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox_contact" ErrorMessage="Incorrect contact no" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="CheckBox_agree" runat="server" Font-Size="Medium"/>I agree to the HelloDoctor <a href="About.aspx" style="font-size:15px;">Terms of Service</a> and <a href="About.aspx" style="font-size:15px;">Privacy Policy</a>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
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

