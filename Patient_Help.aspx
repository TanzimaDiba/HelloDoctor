<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Help.aspx.cs" Inherits="Patient_Help" %>

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
           height:550px;
           width:900px; 
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
							<li><a href="Default.aspx">Home</a></li>
							<li><a href="Patient_Registration.aspx">Registration</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
            <h3>Patient Registration Help</h3>
            <hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-3">
                           <div class="wrapper indent-bot">
							</div>
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/doc_help.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="padding-top:15px;font-family:Verdana;">HelloDoctor asks for your information to create your account.These information will be accessed only by you.</h6>
                                    <p><span style="color:black;">Name.</span>Provide your full name.Your name will be used as your basic information and will be displayed to your rescpective doctor/doctors.</p>
                                    <p><span style="color:black;">Email.</span>Please give your unique email address.Your email will be used to contact you(By both Admin & Users).</p>
                                    <p><span style="color:black;">Password.</span>Keep your account secure by choosing a good password.You will nedd it to login.It wont be disclosed to anyone(Not even to admin).</p>
                                    <p><span style="color:black;">Gender.</span>Your gender will be needed in your prescription.</p>
                                    <p><span style="color:black;">Age.</span>Provide you age.It will be required for you appointment</p>
                                    <p><span style="color:black;">Contact No.</span>Provide a valid phone / mobile number.It will be used by doctor/doctors to contact with you</p>
                                    <h6 style="color:red;">All the infoemation provided above is not editable.User can not alter or delete them.</h6>
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



