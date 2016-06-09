<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
		<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="js/tms-0.3.js" type="text/javascript"></script>
		<script src="js/tms_presets.js" type="text/javascript"></script>
		<script type="text/javascript">
		    $(function () {
		        $('.close').bind('click', function () {
		            $(this).parent().show().fadeOut(500);
		        });
		    });
		</script>
</head>
<body id="page1">
    <form id="form1" runat="server">
    <!--==============================header=================================-->
		<header>
			<div class="main">
				<div class="wrapper">
					<h1>
						<a href="Default.aspx">DesignStudio</a>
					
					</h1>
					<nav>
						<ul class="menu">
							<li><a class="active" href="Default.aspx">Home</a></li>
							<li><a href="About.aspx">About Us</a></li>
							<li><a href="Contact.aspx">Contact</a></li>
							
						</ul>
					</nav>
				</div>
			</div><div class="ic">More Website Templates @ TemplateMonster.com - October 31, 2011!</div>
		</header>
	<!--==============================content================================-->
		<section id="content">
			<div class="main">
				<div class="slider-wrapper">
					<div class="slider">
						<ul class="items">
							<li>
								<img src="images/slider-img1.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Our Mission</strong>
									<span>is dedicated to</span>
									<b class="margin-bot">Help to find the best doctor , authenticate doctors by BMDC Id
                                                          & make taking appointment easy and flexiable
									</b>
                                    <a class="button2" href="Slider1.aspx">Read More</a>		
								</strong>
							</li>
							<li>
								<img src="images/slider-img2.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>For Doctors</strong>
									<span>we are providing</span>
									<b class="margin-bot">Creating account, displaying profile and medical background & keep records of patients</b>
									<a class="button2" href="Slider2.aspx">Read More</a>	
								</strong>
							</li>
							<li>
								<img src="images/slider-img3.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>For Patiens & Visitors</strong>
									<span>we provide</span>
									<b class="margin-bot">Taking appointment online, saving from fake doctors & keep update of the latest information</b>
									<a class="button2" href="Slider3.aspx">Read More</a>	
								</strong>
							</li>
							<li>
								<img src="images/slider-img4.jpg" alt="" />
								<strong class="banner">
									<a class="close" href="#">x</a>
									<strong>Review</strong>
									<span>we encourage</span>
									<b class="margin-bot">Patients' can also provide their opinion about doctors they visited.</b>
									<a class="button2" href="Slider4.aspx">Read More</a>	
								</strong>
							</li>
						</ul>
					</div>
					<ul class="pagination">
						<li><a class="item-1" href="a.aspx"><strong>01</strong></a></li>
						<li><a class="item-2" href="a.aspx"><strong>02</strong></a></li>
						<li><a class="item-3" href="a.aspx"><strong>03</strong></a></li>
						<li><a class="item-4" href="a.aspx"><strong>04</strong></a></li>
					</ul>
				</div>
	
				<div class="wrapper">
					<article class="col-1">
						<div class="indent-left">
							<ul class="list-1">
								<li><a href="Doctor.aspx">Doctor</a><br />Login/Registration, Set profile & View patients' list</li>
								<li><a href="Patient.aspx">Patient</a><br />Get a profile & View prescription</li>
								<li class="last-item"><a href="Admin.aspx">Admin</a><br />Not for users/visitors, Performs authentication</li>
							</ul>
						</div>
					</article>

					<article class="col-2">
                        <h3 style="color:rgb(0,95,137);">Only for patients</h3>
						<div class="p1">
                           <a href="Find_Doctor.aspx">Find Doctor & Take Appointment</a>
						</div>
                        <div class="review">
                            <a href="Review.aspx" >Patients Review</a>
                        </div>
						
					</article>

					<article class="col-3">
						<div class="indent-top">
							<ul class="list-2">
								<li>
									<a class="item" href="HealthSuggestation.aspx">Health Suggestion</a>
									<span>Health tips & advices ,emergency situation suggestation & more </span>
								</li>
								<li>
									<a class="item" href="MedicalCampaign.aspx">Medical Campaign</a>
									<span>Notification about health campaign, vacciation & free tratment</span>
								</li>
								<li class="last-item">
									<a class="item" href="LatestNews.aspx">Latest News</a>
									<span>News update about special treatment & medicine</span>
								</li>
							</ul>
						</div>
					</article>
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
							<li><a href="#">tanzimadiba@gmail.com</a></li>
						</ul>
					</article>
				</div>
				<div class="aligncenter" style="color:white;">
					Copyright 2014 HelloDoctor
				</div>
			</div>
		</footer>
		<script type="text/javascript"> Cufon.now(); </script>
		<script type="text/javascript">
		    $(window).load(function () {
		        $('.slider')._TMS({
		            duration: 800,
		            easing: 'easeOutQuart',
		            preset: 'diagonalExpand',
		            slideshow: 7000,
		            pagNums: false,
		            pagination: '.pagination',
		            banners: 'fade',
		            pauseOnHover: true,
		            waitBannerAnimation: true
		        });
		    });
		</script>
 </form>
</body>
</html>
