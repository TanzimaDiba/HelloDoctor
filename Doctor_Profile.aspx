<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doctor_Profile.aspx.cs" Inherits="Doctor_Profile" %>

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
            width:500px;
        }
        .col-1{
            width:200px;
            height:550px;
            font-size: 17px;
        }
        .col-3{
            width:500px;
            height:350px;
            font-size: 17px;
            padding-left:100px;
        }

        .auto-style1 {
            width: 225px;
        }

        .edit{
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius:4px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.428571429;
            color: #555555;
            width:300px;
            height:150px;
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
		<section id="content" style="height:auto;">
			<div class="main">
                <h3>Doctor's Profile</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
                        <asp:SqlDataSource ID="SqlDataSource_Doctor" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Profile] WHERE Doc_Email=@Doc_Email">
                            <SelectParameters>
                                <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email"/>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <article class="col-1">
                            <h3>Profile Picture</h3>

                            <asp:ListView ID="ListView_Doctor" runat="server" DataSourceID="SqlDataSource_Doctor">
                            <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>
                             <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "ImageHandler.ashx?ID=" + Eval("ID")%>' Width="200px" Height="200px"/><br />
                            </ItemTemplate>

                        </asp:ListView>
                            <p>
                                <asp:FileUpload ID="FileUpload_image" runat="server" Width="200px" />
                            </p>
                            <p>
                                <asp:Button ID="Button_save" runat="server" CssClass="button" OnClick="Button_save_Click" Text="Save" />
                            </p>
                        </article>
                        
                        <article class="col-3">
                            <h3>Basic Information</h3>
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
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Personal Contact No :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_contact" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="National Id :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_national_id" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Date of Birth :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_date_birth" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Address :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_location" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Medical College :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_college" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="MBBS Degree Year :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_year" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text="BMDC Id :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_doc_id" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text="Specialist :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label_specialist" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                 <asp:SqlDataSource ID="SqlDataSource_Doctor1" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Profile] WHERE Doc_Email=@Doc_Email" UpdateCommand="UPDATE [Doctor_Profile] SET Qualification=@Qualification WHERE Doc_Email=@Doc_Email">
                    <SelectParameters>
                        <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                       <asp:ListView ID="ListView_Doctor1" runat="server" DataSourceID="SqlDataSource_Doctor1">
                            <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <ul id="view">
                                    <li style="height:100%;width:100%;">Qualification : <%#Eval("Qualification") %></li>
                                    <li style="padding-top:30px;"><asp:Button ID="b_edit" runat="server" Text="Edit" CommandName="edit" CssClass="button"/></li><asp:Label runat="server">Only Qualification is editable.</asp:Label>
                                    </ul>
                            </ItemTemplate>

                           <EditItemTemplate>
                               <ul id="view">
                               <li>Qualification : <asp:TextBox ID="edit_qualification" runat="server" TextMode="MultiLine" Text='<%#Bind("Qualification") %>' CssClass="edit"></asp:TextBox></li>
                               <li><asp:Button ID="b_save" runat="server" Text="Save" CommandName="update" CssClass="button"/></li>
                               <asp:HiddenField ID="hd" runat="server" Value='<%#Bind("Doc_Email") %>' />
                               </ul>
                           </EditItemTemplate>

                        </asp:ListView> 
                                    </td>
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




