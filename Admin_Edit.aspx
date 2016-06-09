<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Edit.aspx.cs" Inherits="Admin_Edit" %>

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
					<nav>
						<ul class="menu">
                            <li><a href="Admin_Page.aspx">Admin-Home</a></li>
							<li><a href="Doctor_List.aspx">Doctor List</a></li>
                            <li><a href="Admin_Edit.aspx" class="active">News</a></li>
                            <li><a href="Admin.aspx">Logout</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content" style="height:auto;">
			<div class="main">
				<div class="indent-left">
					<div class="wrapper">
			           <article class="col-3">
                       <h3>Edit News</h3>
				       <hr />
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="font-size:20px;"><a class="link" href="Admin_Medical_Campaign.aspx">Medical Campaign</a></h6>
								</div>
							</div>
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="font-size:20px;"><a class="link" href="Admin_Latest_News.aspx">Latest News</a></h6>
								</div>
							</div>
						</article>

                       <article class="col-4">
                       <h3>View & Delete News</h3>
				       <hr />
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="font-size:20px;"><a class="link" href="Admin_View_MC.aspx">Medical Campaign</a></h6>
								</div>
							</div>
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/admin.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="font-size:20px;"><a class="link" href="Admin_View_LN.aspx">Latest News</a></h6>
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




