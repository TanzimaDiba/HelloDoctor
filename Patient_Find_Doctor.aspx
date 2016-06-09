<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Find_Doctor.aspx.cs" Inherits="Patient_Find_Doctor" %>

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
            height:auto;
            width: 280px;
            border-right: 1px solid #808080;
        }
        .catagory{
            text-align:center;
            font: bold 12px verdana;
        }

        .catagory{
            height:40px;
            width:250px;
            display:inline-block;
            padding:5px;
            margin:1px;
            text-decoration:none;
            color:#000;
	        border:1px solid #fff;
	        background:url(../images/button-tail.gif) 0 0 repeat-x #f2f2f2;
	        box-shadow:0 0 2px #bbb;
	        cursor:pointer;
	        font-size:14px;
        }
        .catagory:hover{
            background:rgb(0,95,137);
            color:white;
        }
        .col-2{
            margin-left:5px;
            height:550px;
            width: 600px;
        }
        #view{
            font-size:17px;
        }
        .b:hover{
            cursor:pointer;
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
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
                <h3>Find Doctor & Take Appointment</h3>
                <hr />
				<div class="indent-left">   
					<div class="wrapper">
                    <article class="col-1">
                        
                            <asp:Button runat="server" Text="General" OnCommand="Button_Click_Return_Category" CommandArgument="General" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Medicine" OnCommand="Button_Click_Return_Category" CommandArgument="Medicine" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Child Specialist" OnCommand="Button_Click_Return_Category" CommandArgument="Children" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Audiologist(Ear)" OnCommand="Button_Click_Return_Category" CommandArgument="Audiologist(Ear)" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Allergist" OnCommand="Button_Click_Return_Category" CommandArgument="Allergist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Dentist" OnCommand="Button_Click_Return_Category" CommandArgument="Dentist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Eye Specialist" OnCommand="Button_Click_Return_Category" CommandArgument="Eye Specialist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Cardiologist" OnCommand="Button_Click_Return_Category" CommandArgument="Cardiologist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Dermatologist(Skin)" OnCommand="Button_Click_Return_Category" CommandArgument="Dermatologist(Skin)" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Gastroenterologist(Disgestive)" OnCommand="Button_Click_Return_Category" CommandArgument="Gastroenterologist(Disgestive)" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Gynecologist" OnCommand="Button_Click_Return_Category" CommandArgument="Gynecologist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Neurologist" OnCommand="Button_Click_Return_Category" CommandArgument="Neurologist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Neurosurgeon" OnCommand="Button_Click_Return_Category" CommandArgument="Neurosurgeon" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Oncologist(Cancer)" OnCommand="Button_Click_Return_Category" CommandArgument="Oncologist(Cancer)" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Orthopedic Surgeon" OnCommand="Button_Click_Return_Category" CommandArgument="Orthopedic Surgeon" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Psychiatrist" OnCommand="Button_Click_Return_Category" CommandArgument="Psychiatrist" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Surgeon" OnCommand="Button_Click_Return_Category" CommandArgument="Surgeon" AutoDataBind="true" CssClass="catagory"/><br />
                            <asp:Button runat="server" Text="Urologist" OnCommand="Button_Click_Return_Category" CommandArgument="Urologist" AutoDataBind="true" CssClass="catagory"/><br />
							
                   </article>
			<article class="col-2">
                <h3><asp:Label ID="category_name" runat="server"></asp:Label></h3>
                <hr />  
                 <asp:SqlDataSource ID="SqlDataSource_Doctor" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Profile] WHERE Specialist=@Specialist">
                    <SelectParameters>
                          <asp:SessionParameter Name="Specialist" SessionField="Specialist" />
                    </SelectParameters>
                   </asp:SqlDataSource>
                   
                       <asp:ListView ID="ListView_Doctor" runat="server" DataSourceID="SqlDataSource_Doctor" DataKeyNames="Id">
                           <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <ul id="view">
                                    <li>Location : <%#Eval("Location") %></li>
                                    <li>Doctor Name : <%#Eval("Doc_Name") %></li>
                                    <li>Clinic Name : <%#Eval("Clinic_Name") %></li>
                                    <li>Clinic Address : <%#Eval("Clinic_Address") %></li>
                                    <li>Visiting Time : <%#Eval("Visiting_Time") %></li>
                                    <li>Off Day : <%#Eval("Off_Day") %></li>
                                    <li>Fees : <%#Eval("Fee") %></li>
                                    <li>Contact No : <%#Eval("Clinic_Contact") %></li>
                                </ul>
                                <asp:Button ID="b_view" runat="server" Text="View Profile" OnCommand="Button_Click_View_Profile" CommandArgument='<%#Eval("Doc_Email") %>' AutoDataBind="true" CssClass="b"/>
                                 <asp:Button ID="b_appointment" runat="server" Text="Take Appointment" OnCommand="Button_Click_Take_Appointment" CommandArgument='<%#Eval("Doc_Email") %>' AutoDataBind="true" CssClass="b"/>
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


