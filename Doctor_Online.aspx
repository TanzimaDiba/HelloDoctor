<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Online.aspx.cs" Inherits="Doctor_Online" %>

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
        article.col-1{
            height:550px;
            font-size: 17px;
        }
        #view{
            text-align:left;
            font-size:17px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: left;
            width: 235px;
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
                              <li><a href='Doctor_Account.aspx'>Home</a></li>
                              <li class='has-sub'><a href='#'>Doctor</a>
                                 <ul>
                                    <li><a href='Doctor_Profile.aspx'>My Profile</a></li>
                                    <li><a href='Doc_Appointment_Edit.aspx'>Appointment & Serial</a></li>
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
		<section id="content" style="height:auto;">
			<div class="main">
                <h3>Online Payment Information</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">

                  <article class="col-1">
                  <asp:SqlDataSource ID="SqlDataSource_Online_Payment" runat="server" ConnectionString="<%$ ConnectionStrings:Online_Payment_ConnectionString %>" SelectCommand="SELECT * FROM [Online_Payment] WHERE Doc_Email=@Doc_Email">
                    <SelectParameters>
                        <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" />
                    </SelectParameters>
                   </asp:SqlDataSource>

                       <asp:ListView ID="ListView_Online_Payment" runat="server" DataSourceID="SqlDataSource_Online_Payment">
                            <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <ul id="view">
                                    <li>Date : <%#Eval("Date") %></li>
                                    <li>Patient Name : <%#Eval("Patient_Name") %></li>
                                    <li>Bank Name : <%#Eval("Patient_Bank") %></li>
                                    <li>Account No : <%#Eval("Patient_Account_No") %></li>
                                    <li>Payment via : <%#Eval("Patient_Card") %></li>
                                    <li>Amount : <%#Eval("Amount") %></li>
                                </ul>
                                <hr />
                            </ItemTemplate>

                        </asp:ListView>
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
								<a class="facebook" style="background-image:url(images/facebook.png); background-repeat:no-repeat;"></a>
								<a class="twitter" style="background-image:url(images/twitter.png); background-repeat:no-repeat;"></a>
								<a class="google" style="background-image:url(images/google.png); background-repeat:no-repeat;"></a>
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






