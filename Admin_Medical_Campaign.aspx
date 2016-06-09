<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Medical_Campaign.aspx.cs" Inherits="Admin_Medical_Campaign" %>


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
        h3{
            width:420px;
        }
        .col-1{
            width:600px;
            height:550px;
            font-size: 17px;
        }
 
        #view{
            text-align:left;
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
        .new_line{
            color:black;
            font:bold 20px arial;
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
                <h3>Edit Medical Campign Information</h3>
				<hr />
				<div class="indent-left">
					<div class="wrapper">
                        <article class="col-1">
                        <asp:ToolkitScriptManager runat="server" ID="ToolkitScriptManager1"></asp:ToolkitScriptManager> 
                            <table class="border-bot2">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Date"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox_date" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                        <asp:CalendarExtender runat="server" ID="CalendarExtender" TargetControlID="TextBox_date"></asp:CalendarExtender>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="News Title"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox_title" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Upload Image"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:FileUpload ID="FileUpload_image" runat="server" Font-Size="Medium" Height="50px" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="News Description"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox_news" runat="server" CssClass="form-control" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <asp:Button ID="Button_done" runat="server" CssClass="button" OnClick="Button_done_Click" Text="Done" />
                            <br />
                            <br />
                               
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






