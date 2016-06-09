<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Prescription.aspx.cs" Inherits="Doctor_Prescription" %>

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
        .col-1{
            float:left;
            height:auto;
            width:600px;
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
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 135px;
        }
        .auto-style7 {
            width: 150px;
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
                <h3>Edit Prescription</h3>
				<hr />                                
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-1">
                        <asp:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1"></asp:ToolkitScriptManager>
						    <table class="auto-style5">
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Date :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_appointment_date" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Serial No :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_serial_no" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="No of visit :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_no_visit" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Patient's Name :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_patient_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Patient's Age :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_patient_age" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Payment :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_payment_method" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="auto-style5">
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Medicine :" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox_medicine" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Advice :" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox_advice" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Test :" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox_test" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Next meeting date :" Width="140px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox_next_date" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:CalendarExtender runat="server" ID="CalendarExtender1" TargetControlID="TextBox_next_date"></asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Button ID="Button_done" runat="server" CssClass="button" OnClick="Button_done_Click" Text="Done" />
                                    </td>
                                    <td>
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


