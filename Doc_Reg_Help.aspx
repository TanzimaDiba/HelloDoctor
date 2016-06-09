<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc_Reg_Help.aspx.cs" Inherits="Doc_Reg_Help" %>

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
           height:auto;
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
							<li><a href="Doc_Registration.aspx">Registration</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
        
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
            <h3>Doctor Registration Help</h3>
            <hr />
				<div class="indent-left">
					<div class="wrapper">
						<article class="col-3">
                           <div class="wrapper indent-bot">
								<div class="extra-wrap">
									<h6>HelloDoctor asks for your information at registration for two purposes.One is to authenticate the Doctor requested to register and another one is for sign-in process.</h6> 
								</div>
							</div>
							<div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/doc_help.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="padding-top:15px;font-family:Verdana;">For authentication</h6>
                                    <p><span style="color:black;">Name.</span>Provide your full name.Your name will be used as your basic information and will be displayed public.</p>
                                    <p><span style="color:black;">National Id.</span>Provide your correct National Id.Your National Id will be used to verify and we will match your given information with the information provied with your National Id.It wont be displayed publically.</p>
                                    <p><span style="color:black;">Date of birth.</span>Dte of birth is your treated as your profile information and it must match with the Date of birth given in National Id.Its meant to display.</p>
                                    <p><span style="color:black;">Medical College.</span>Name of the Medical College you have passed MBBS.It is required for authentication and public display purpose.</p>
                                    <p><span style="color:black;">Year of MBBs Degree.</span>Please provide your MBBS Degree getting year.It is required for authentication and it will be displayed in your profile.</p>
                                    <p><span style="color:black;">Id provided by BMDC.</span>BMDC Id is required to verify your identity.We assure you that we will keep it confidentioanl.</p>
                                    <p><span style="color:black;">Specialist.</span>Your special area of medicine.We will catagorize you according to your speciality.</p>
                                    <p><span style="color:black;">Location.</span>Your permanent / temporary address.Your Location will be displayed publically.</p>
                                    <h6 style="color:red;">All the infoemation provided for authentication is not editable.Doctor can not alter or delete them.</h6>
								</div>
							</div>

                           <div class="wrapper indent-bot">
								<figure class="img-indent"><img src="images/doc_help.png" alt="" /></figure>
								<div class="extra-wrap">
									<h6 style="padding-top:15px;font-family:Verdana;">For signup</h6>
                                    <p><span style="color:black;">Email.</span>Please give your unique email address.Your email will be used to contact you(By both Admin & Users).</p>
                                    <p><span style="color:black;">Password.</span>Keep your account secure by choosing a good password.You will nedd it to login.It wont be disclosed to anyone(Not even to admin).</p>
                                    <p><span style="color:black;">Contact No.</span>Provide a valid phone / mobile number.It will be used by both Admin & Users to contact with you</p>
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


