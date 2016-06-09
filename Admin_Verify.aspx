<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Verify.aspx.cs" Inherits="Admin_Verify" %>

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
       #page2 .col-3 {
           height:auto;
           width:900px; 
       }
       h6{
           padding-top:15px;
       }
        .auto-style1 {
            width: 225px;
        }
        .auto-style2 {
            width: 225px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
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
                              <li><a href='Admin_Page.aspx'>Home</a></li>
                              <li><a href='Doctor_List.aspx'>Doctor List</a></li>
                              <li class='has-sub'><a href='#'>News</a>
                                  <ul>
                                      <li class='has-sub'><a href="#">Edit</a>
                                          <ul>
                                              <li><a href="Admin_Medical_Campaign.aspx">Medical Campign</a></li>
                                              <li><a href="Admin_Latest_News.aspx">Latest News</a></li>
                                          </ul>
                                      </li>

                                      <li class='has-sub'><a href="#">View & Delete</a>
                                          <ul>
                                              <li><a href="Admin_View_MC.aspx">Medical Campign</a></li>
                                              <li><a href="Admin_View_LN.aspx">Latest News</a></li>
                                          </ul>
                                      </li>
                                  </ul>
                              </li>
                              <li class='last'><a href="Admin.aspx">Logout</a></li>
                            </ul>
                  </div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
            <h3>Admin - Doctor Verification</h3>
            <hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-3">

							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6>Information provided by Doctor</h6>
                                    <table class="border-bot2">
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doc_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Email :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doc_email" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Contact No :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_contact" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="National Id :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_national_id" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Date of Birth :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_date_birth" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Location :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_location" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Medical College :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_college" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Year of MBBS Degree :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_degree_year" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="BMDC Id :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doctor_id" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="Specialist :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_specialist" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
								</div>
							</div>

                           <div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
                                    <h6>National Id Information</h6>
                                    <table class="border-bot2">
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="National Id :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_national_id_db" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label12" runat="server" Font-Size="Medium" Text="Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doc_name_ni" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label13" runat="server" Font-Size="Medium" Text="Father's Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_father_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label14" runat="server" Font-Size="Medium" Text="Mother's Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_mother_name" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label15" runat="server" Font-Size="Medium" Text="Date of Birth :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_date_birth_ni" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label16" runat="server" Font-Size="Medium" Text="Address :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_location_ni" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
								</div>
							</div>

                            <div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
                                    <h6>Information from BMDC</h6>
                                    <table class="border-bot2">
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label17" runat="server" Font-Size="Medium" Text="Doctor Id :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doc_id_db" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label18" runat="server" Font-Size="Medium" Text="Name :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_doc_name_di" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label19" runat="server" Font-Size="Medium" Text="Date of Birth :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_date_birth_di" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label20" runat="server" Font-Size="Medium" Text="Address :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_location_di" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label21" runat="server" Font-Size="Medium" Text="Medical College :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_college_di" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label22" runat="server" Font-Size="Medium" Text="Admission Year :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_ad_year" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:Label ID="Label23" runat="server" Font-Size="Medium" Text="Passing Year :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_pass_year" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label24" runat="server" Font-Size="Medium" Text="Specialist :"></asp:Label>
                                            </td>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label_specialist_di" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label25" runat="server" Font-Size="Medium" Text="BMDC Id year :"></asp:Label>
                                            </td>
                                            <td class="auto-style3">
                                                <asp:Label ID="Label_di_year" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                            <td class="auto-style3">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style2" colspan="2">
                                                <asp:Button ID="Button_approve" runat="server" CssClass="button" OnClick="Button_approve_Click" Text="Approve" />
&nbsp;<asp:Button ID="Button_reject" runat="server" CssClass="button" OnClick="Button_reject_Click" Text="Reject" />
                                            </td>
                                            <td class="auto-style3">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
								</div>
							</div>
                            
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



