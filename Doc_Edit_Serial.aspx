<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc_Edit_Serial.aspx.cs" Inherits="Doc_Edit_Serial" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
        #view{
            font-size:17px;
            width:200px;
        }
        .new_line{
            font-size:19px;
            color:black;
            padding-top:10px;
            padding-bottom:10px;
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
                <h3 style="width:auto;">Appointment Date & Per Day Serial Information</h3>
				<hr />                                
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-3">

                     
                            <asp:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1"></asp:ToolkitScriptManager>
                            <asp:SqlDataSource ID="SqlDataSource_Doctor" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" DeleteCommand="DELETE FROM [Doctor_Serial] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Doctor_Serial] ([Doc_Email], [Appointment_Date], [Total_Serial], [Current_Serial]) VALUES (@Doc_Email, @Appointment_Date, @Total_Serial, @Current_Serial)" SelectCommand="SELECT * FROM [Doctor_Serial] WHERE ([Doc_Email] = @Doc_Email)" UpdateCommand="UPDATE [Doctor_Serial] SET [Doc_Email] = @Doc_Email, [Appointment_Date] = @Appointment_Date, [Total_Serial] = @Total_Serial, [Current_Serial] = @Current_Serial WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" Type="String" />
                                    <asp:Parameter Name="Appointment_Date" Type="String" />
                                    <asp:Parameter Name="Total_Serial" Type="String" />
                                    <asp:Parameter Name="Current_Serial" Type="String"/>
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:SessionParameter Name="Doc_Email" SessionField="Doc_Email" Type="String" />
                                    <asp:Parameter Name="Appointment_Date" Type="String" />
                                    <asp:Parameter Name="Total_Serial" Type="String" />
                                    <asp:Parameter Name="Current_Serial" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource_Doctor" InsertItemPosition="LastItem">
                                <AlternatingItemTemplate>
                                    <li style="">
                                        <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                        <asp:HiddenField ID="Doc_EmailLabel" runat="server" Value='<%# Eval("Doc_Email") %>' />
                                        Appointment_Date:
                                        <asp:Label ID="Appointment_DateLabel" runat="server" Text='<%# Eval("Appointment_Date") %>' />
                                        <br />
                                        Total_Serial:
                                        <asp:Label ID="Total_SerialLabel" runat="server" Text='<%# Eval("Total_Serial") %>' />
                                        <br />
                                        Current_Serial:
                                        <asp:Label ID="Current_SerialLabel" runat="server" Text='<%# Eval("Current_Serial") %>' />
                                        <br />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    </li>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <li style="">
                                        <asp:HiddenField ID="IdLabel1" runat="server" Value='<%# Eval("Id") %>' />
                                        <asp:HiddenField ID="Doc_EmailTextBox" runat="server" Value='<%# Bind("Doc_Email") %>' />
                                        Appointment_Date:
                                        <asp:TextBox ID="Appointment_DateTextBox" runat="server" Text='<%# Bind("Appointment_Date") %>'/>
                                        <asp:CalendarExtender runat="server" ID="CalendarExtender1" TargetControlID="Appointment_DateTextBox"></asp:CalendarExtender>
                                        <br />
                                        Total_Serial:
                                        <asp:TextBox ID="Total_SerialTextBox" runat="server" Text='<%# Bind("Total_Serial") %>' />
                                        <br />
                                        Current_Serial:
                                        <asp:TextBox ID="Current_SerialTextBox" runat="server" Text='<%# Bind("Current_Serial") %>'/>
                                        <br />
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                    </li>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    No data was returned.
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <li style="">
                                        <asp:Label runat="server" ID="Label1" Text="Add new appointment date and serial information" CssClass="new_line"></asp:Label>
                                        <br />
                                        <asp:HiddenField ID="Doc_EmailTextBox" runat="server" Value='<%# Bind("Doc_Email") %>' />
                                        Appointment_Date:
                                        <asp:TextBox ID="Appointment_DateTextBox" runat="server" Text='<%# Bind("Appointment_Date") %>' />
                                        <asp:CalendarExtender runat="server" ID="CalendarExtender2" TargetControlID="Appointment_DateTextBox"></asp:CalendarExtender>
                                        <br />Total_Serial:
                                        <asp:TextBox ID="Total_SerialTextBox" runat="server" Text='<%# Bind("Total_Serial") %>' />
                                        <br />Current_Serial:
                                        <asp:TextBox ID="Current_SerialTextBox" runat="server" Text='<%# Bind("Current_Serial") %>'/>
                                        <br />
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    </li>
                                </InsertItemTemplate>
                                <ItemSeparatorTemplate>
<br />
                                </ItemSeparatorTemplate>
                                <ItemTemplate>
                                    <li style="">
                                        <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                        <asp:HiddenField ID="Doc_EmailLabel" runat="server" Value='<%# Eval("Doc_Email") %>' />
                                        Appointment_Date:
                                        <asp:Label ID="Appointment_DateLabel" runat="server" Text='<%# Eval("Appointment_Date") %>' />
                                        <br />
                                        Total_Serial:
                                        <asp:Label ID="Total_SerialLabel" runat="server" Text='<%# Eval("Total_Serial") %>' />
                                        <br />
                                        Current_Serial:
                                        <asp:Label ID="Current_SerialLabel" runat="server" Text='<%# Eval("Current_Serial") %>' />
                                        <br />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul id="itemPlaceholderContainer" runat="server" style="">
                                        <li runat="server" id="itemPlaceholder" />
                                    </ul>
                                    <div style="">
                                    </div>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <li style="">
                                        <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                        <asp:HiddenField ID="Doc_EmailLabel" runat="server" Value='<%# Eval("Doc_Email") %>' />
                                        Appointment_Date:
                                        <asp:Label ID="Appointment_DateLabel" runat="server" Text='<%# Eval("Appointment_Date") %>' />
                                        <br />
                                        Total_Serial:
                                        <asp:Label ID="Total_SerialLabel" runat="server" Text='<%# Eval("Total_Serial") %>' />
                                        <br />
                                        Current_Serial:
                                        <asp:Label ID="Current_SerialLabel" runat="server" Text='<%# Eval("Current_Serial") %>' />
                                        <br />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    </li>
                                </SelectedItemTemplate>
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


