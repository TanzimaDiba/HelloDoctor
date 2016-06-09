<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Give_Review.aspx.cs" Inherits="Patient_Give_Review" %>

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
        h3{
            width:300px;
        }
        .col-1{
            width:300px;
            height:550px;
            font-size: 17px;
        }
        .col-2{
            width:300px;
            height:350px;
            font-size: 17px;
        }
        .col-3{
            width:300px;
            height:auto;
            font-size: 17px;
        }
        #view{
            text-align:right;
            font-size:17px;
        }
        .edit{
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius:4px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
        }
        .edit1{
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius:4px;
            color: #555555;
            font-size: 14px;
            padding: 5px;
            line-height: 1.428571429;
        }
        .appointment{
            text-align:center;
        }
        .b_appointment:hover{
            cursor:pointer;
        }
        .auto-style1 {
            width: 135px;
        }
    </style>
</head>
<body id="page4">
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
                              <li><a href='Patient_Account.aspx'>Home</a></li>
                              <li class='has-sub'><a href='#'>Patient</a>
                                 <ul>
                                    <li><a href='Patient_Profile.aspx'>My Profile</a></li>
                                    <li><a href='Patient_Review_My.aspx'>My Review</a></li>
                                     <li><a href='Patient_Setting.aspx'>Account Settings</a></li>
                                 </ul>
                              </li>
                              <li class='has-sub'><a href='#'>Doctor</a>
                                  <ul>
                                      <li><a href="Patient_Doc_List.aspx">Doctors' List</a></li>
                                      <li><a href="Patient_Find_Doctor.aspx">Find Doctor & Take Appointment</a></li>
                                      <li><a href="Patient_Review.aspx">Give Review</a></li>
                                  </ul>
                              </li>
                              <li class='last'><asp:LinkButton runat="server" OnClick="Logout">Logout</asp:LinkButton></li>
                            </ul>
              </div>
		</header>
        
	<!--==============================content================================-->
		<section id="content" style="height:auto;">
			<div class="main">
                <h3 style="width:100%;">Give Review</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
                        <article class="col-1">

                            <table class="border-bot2">
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Date :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_date" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Doctor's Name :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_doc_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Specialist :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_specialist" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Location :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_location" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" colspan="2">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Your Review :"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" colspan="2">
                                        <asp:TextBox ID="TextBox_review" runat="server" CssClass="form-control" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1" colspan="2">
                                        <asp:Button ID="Button_submit" runat="server" CssClass="button" OnClick="Button_submit_Click" Text="Submit" />
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
					Copyright 2014 HelloDoctor
				</div>
			</div>
		</footer>
		
 </form>
</body>
</html>








