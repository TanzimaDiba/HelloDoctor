<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Doc_List.aspx.cs" Inherits="Patient_Doc_List" %>

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
        #page2 .col-1{
            height: 550px;
            width:600px;
        }
        .col-2{
            height: 550px;
            float:right;
        }
        #thanks{
            width: 400px;
        }
        #ed{
           float:right;
           font-size: 17px;
        }
        .auto-style1 {
            width: 900px;
            border-bottom:1px solid #808080;
        }
        .auto-style2 {
            width: 36px;
        }
        .auto-style3 {
            width: 111px;
        }
        .auto-style4 {
            width: 75px;
        }
        .b{
            margin-bottom:4px;
            display:inline-block;
            font-size:14px;
            height:25px;
            width:70px;
	        color:#000;
            border:1px solid #fff;
	        background:url(../images/button-tail.gif) 0 0 repeat-x #f2f2f2;
	        box-shadow:0 0 2px #bbb;
	        cursor:pointer;
        }
        .b:hover{
            background:rgb(0,95,137);
            color:white;
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
		<section id="content">
			<div class="main">
                <h3>My prescription</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-1">

                                  
						    <asp:SqlDataSource ID="SqlDataSource_Prescription" runat="server" ConnectionString="<%$ ConnectionStrings:Prescription_ConnectionString %>" SelectCommand="SELECT * FROM [Prescription] WHERE Patient_Email=@Patient_Email AND Paid='Yes'">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Patient_Email" SessionField="Patient_Email" Type="String"/>
                                </SelectParameters>
						    </asp:SqlDataSource>
                        <asp:ListView ID="ListView_Prescription" runat="server" DataSourceID="SqlDataSource_Prescription">
                            <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <ul id="view">
                                    <li>Doctor's Name : <%#Eval("Doc_Name") %></li>
                                    <li>Doctor's Email : <%#Eval("Doc_Email") %></li>
                                    <li>Appointment Date : <%#Eval("Appointment_Date") %></li>
                                    <li>Medicine : <%#Eval("Medicine") %></li>
                                    <li>Advice : <%#Eval("Advice") %></li>
                                    <li>Test : <%#Eval("Test") %></li>
                                    <li>Next meeting date : <%#Eval("Next_Date") %></li>
                                    <li>Payment : <%#Eval("Payment_Method") %></li>
                                    <li>No of visiting time : <%#Eval("No_Visit") %></li>
                                </ul>
                                <asp:Button ID="b_appointment" runat="server" Text="Take Appointment" OnCommand="Button_Click_Take_Appointment" CommandArgument='<%#Eval("Doc_Email") %>' AutoDataBind="true" CssClass="button"/>
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



