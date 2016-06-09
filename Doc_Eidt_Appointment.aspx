<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc_Eidt_Appointment.aspx.cs" Inherits="Doc_Eidt_Appointment" %>

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
        .col-3{
            width:500px;
            height:auto;
            font-size: 17px;
        }

        .auto-style1 {
            width: 225px;
        }


        #view{
            font-size:17px;
            width:200px;

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
            width:250px;
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
                   
<article class="col-3">
                        
                 <asp:SqlDataSource ID="SqlDataSource_Doctor" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Profile] WHERE Doc_Email=@Doc_Email" UpdateCommand="UPDATE [Doctor_Profile] SET Clinic_Name=@Clinic_Name, Clinic_Address=@Clinic_Address, Visiting_Time=@Visiting_Time, Off_Day=@Off_Day, Fee=@Fee, Clinic_Contact=@Clinic_Contact, Doc_Bank=@Doc_Bank, Doc_Bank_Account=@Doc_Bank_Account WHERE Doc_Email=@Doc_Email" CacheDuration="Infinite">
                    <SelectParameters>
                        <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" />
                    </SelectParameters>
                </asp:SqlDataSource>

                        <asp:ListView ID="ListView_Doctor" runat="server" DataSourceID="SqlDataSource_Doctor">
                            <LayoutTemplate>
                                <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <ul id="view">
                                    <li>Clinic Name : <%#Eval("Clinic_Name") %></li>
                                    <li>Clinic Address :<%#Eval("Clinic_Address") %></li>
                                    <li>Visiting Time :<%#Eval("Visiting_Time") %></li>
                                    <li>Off Day : <%#Eval("Off_Day") %></li>
                                    <li>Fees :<%#Eval("Fee") %></li>
                                    <li>Contact No :<%#Eval("Clinic_Contact") %></li>
                                    <li style="color:black;font-size:20px;padding-top:10px;padding-bottom:10px;">For Online Payment</li>
                                    <li>Bank :<%#Eval("Doc_Bank") %></li>
                                    <li>Account No :<%#Eval("Doc_Bank_Account") %></li>
                                    <li><asp:Button ID="b_edit1" runat="server" Text="Edit" CommandName="edit" CssClass="button"/></li>
                                    </ul>
                            </ItemTemplate>

                           <EditItemTemplate>
                               <ul id="view">
                                   <li>Clinic Name : <asp:TextBox ID="edit_name" runat="server" Text='<%#Bind("Clinic_Name") %>' CssClass="edit1"></asp:TextBox></li>
                                   <li>Clinic Address :<asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("Clinic_Address") %>' TextMode="MultiLine" CssClass="edit1"></asp:TextBox></li>
                                   <li>Visiting Time :<asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("Visiting_Time") %>' CssClass="edit1"></asp:TextBox></li>
                                   <li>Off Day :<asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("Off_Day") %>' CssClass="edit1"></asp:TextBox></li>
                                   <li>Fees :<asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Fee") %>' CssClass="edit1"></asp:TextBox></li>
                                   <li>Contact No :<asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("Clinic_Contact")%>' CssClass="edit1"></asp:TextBox></li>
                                   <li style="color:black;font-size:20px;padding-top:10px;padding-bottom:10px;" ><asp:Label runat="server">For Online Payment</asp:Label></li>
                                   <li>Bank :<asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("Doc_Bank") %>' CssClass="edit1"></asp:TextBox></li>
                                   <li>Account No :<asp:TextBox ID="TextBox7" runat="server" Text='<%#Bind("Doc_Bank_Account")%>' CssClass="edit1"></asp:TextBox></li>
                                   <li><asp:Button ID="b_save1" runat="server" Text="Save" CommandName="update" CssClass="button"/></li>
                                   <asp:HiddenField ID="hd" runat="server" Value='<%#Bind("Doc_Email") %>' />
                               </ul>
                           </EditItemTemplate>

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






