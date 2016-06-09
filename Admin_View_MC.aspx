<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_View_MC.aspx.cs" Inherits="Admin_View_MC" %>

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
        .col-3{
            height:550px;
        }
        #view{
            font-size:17px;
        }
         .extra-wrap{
            padding-top:17px;
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
		<section id="content" style="height:auto;">
			<div class="main">
                <h3 style="width:auto;"> View & Delete Medical Campign Information</h3>
                <hr />
				<div class="indent-left">
					<div class="wrapper" style="height:550px;">

					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Admin_Edit_ConnectionString %>" DeleteCommand="DELETE FROM [Admin_Edit] WHERE [Id] = @Id" SelectCommand="SELECT * FROM [Admin_Edit] WHERE ([Section] = @Section)">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="Section" SessionField="Section" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <li style="background-color: #FFFFFF; color: #284775;">
                                    <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Title:
                                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Image:
                                    <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# "Handler.ashx?ID=" + Eval("ID")%>' />
                                    <br />
                                    News:
                                    <asp:Label ID="NewsLabel" runat="server" Text='<%# Eval("News") %>' />
                                    <br />
                                    Section:
                                    <asp:Label ID="SectionLabel" runat="server" Text='<%# Eval("Section") %>' />
                                    <br />
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #999999;">
                                    <asp:HiddenField ID="IdLabel1" runat="server" Value='<%# Eval("Id") %>' />
                                    Date:
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                    <br />
                                    Title:
                                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                    <br />
                                    Image:
                                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                                    <br />
                                    News:
                                    <asp:TextBox ID="NewsTextBox" runat="server" Text='<%# Bind("News") %>' />
                                    <br />
                                    Section:
                                    <asp:TextBox ID="SectionTextBox" runat="server" Text='<%# Bind("Section") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No data was returned.
                            </EmptyDataTemplate>

                            <InsertItemTemplate>
                                <li style="">Date:
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                    <br />
                                    Title:
                                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                                    <br />
                                    Image:
                                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                                    <br />
                                    News:
                                    <asp:TextBox ID="NewsTextBox" runat="server" Text='<%# Bind("News") %>' />
                                    <br />
                                    Section:
                                    <asp:TextBox ID="SectionTextBox" runat="server" Text='<%# Bind("Section") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </li>
                            </InsertItemTemplate>

                            <ItemSeparatorTemplate>
<br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="background-color: #E0FFFF; color: #333333;">
                                    <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Title:
                                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Image:
                                    <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# "Handler.ashx?ID=" + Eval("ID")%>' />
                                    <br />
                                    News:
                                    <asp:Label ID="NewsLabel" runat="server" Text='<%# Eval("News") %>' />
                                    <br />
                                    Section:
                                    <asp:Label ID="SectionLabel" runat="server" Text='<%# Eval("Section") %>' />
                                    <br />
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #E2DED6; font-weight: bold;color: #333333;">
                                    <asp:HiddenField ID="IdLabel" runat="server" Value='<%# Eval("Id") %>' />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Title:
                                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    Image:
                                    <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# "Handler.ashx?ID=" + Eval("ID")%>' />
                                    <br />
                                    News:
                                    <asp:Label ID="NewsLabel" runat="server" Text='<%# Eval("News") %>' />
                                    <br />
                                    Section:
                                    <asp:Label ID="SectionLabel" runat="server" Text='<%# Eval("Section") %>' />
                                    <br />
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <br />

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





