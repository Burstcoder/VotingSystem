<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width,initial-scale=1">

<title>Home</title>

<link href="css/style.css" rel="stylesheet" />
<link href="bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="bootstrap-4.0.0-dist/js/jquery-3.1.1.min.js"></script>
<script src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
<script src="bootstrap-4.0.0-dist/js/scrollreveal.min.js"></script>

</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand pl-5" href="#">D ></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-control="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item px-3 active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item px-3"><a class="nav-link" href="menu_election.jsp">Elections</a>
				</li>
				<li class="nav-item px-3"><a class="nav-link" href="menu_result.jsp">Result</a>
				</li>
				<li class="nav-item px-3"><a class="nav-link"
					href="voterregistration.html">Sign Up </a></li>
				<li class="nav-item px-3"><a class="nav-link" href="menu_about.jsp">About</a>
				</li>
				<li class="nav-item px-3"><a class="nav-link" href="menu_contact.jsp">Contact</a>
				</li>
			</ul>
		</div>
	</nav>
	<!-- end navigation -->

	<!-- Landing Page -->

	<div class="row content">
		<div class="col-1"></div>
		<div class="col-6">
			<h1 style="font-size:3.8vw;">
				<font color="white">WELCOME TO MATDAAN.COM</font>
			</h1>
			<br>
			<h3  style="font-size:2.8vw;">
				<font color="white"><i>"Voting For A Brighter World"</i></font>
			</h3>
		</div>
		<div class="col-6"></div>
	</div>
	
	<!-- end landing page -->

	<!-- Our Portals -->
	<div class="container text-center">
		<h1  style="font-size:3.8vw; margin-top:0;">Our Portals</h1>
	</div>
	<div class="container text-center pt-4">
		<div class="row">
			<div class="col-4">
				<img src="css/Images/signup.png" class="img-fluid">
				<div class="middle">
					<a href="voterregistration.html"><button class="button b1">Sign-up</button></a>
				</div>

			</div>
			<div class="col-4">
				<img src="css/Images/signin.png" class="img-fluid"> <br>
				<div class="middle">
					<a href="voterlogin.html"><button class="button b1">User
							Sign-in</button></a>
				</div>

			</div>
			<div class="col-4">
				<img src="css/Images/adminmenu.png" class="img-fluid"> <br>
				<div class="middle">
					<a href="adminlogin.html"><button class="button b1">Administration</button></a>
				</div>

			</div>
		</div>
	</div>
	<div class="container text-center pt-4">
		<div class="row pt-2">
			<div class="col-4">
				<p>If you haven't registered yet, then kindly visit this sign up
					Portal for Voter Registration.</p>
			</div>
			<div class="col-4">
				<p>Registered Voter can login here, also you can check your
					voter-id status to vote for online elections.</p>
			</div>
			<div class="col-4">
				<p>If you are an Administrative member, then kindly login here.</p>
			</div>
		</div>
	</div>
	<!-- End Our Portal-->

	<!-- Parallax Two Blog -->
	<h1  style="font-size:3.8vw;">
		<font color="black">Blogs And Information<br></font>
	</h1>
	<div class="container-fluid">
		<div class="parallax2 text-center">
			<div class="row">
				<div class="col-1"></div>
				<div class="col-4 pt-1"></div>
				<div class="col-1"></div>
				<div class="col-5">
					<h2  style="font-size:2.9vw;">
						Prime Minister Of India<br>Narendra Modi
					</h2>
					<p>Narendra Damodardas Modi(born 17 September 1950) is an
						Indian politician serving as the 14th and current Prime Minister
						of India since 2014. He was the Chief Minister of Gujarat from
						2001 to 2014, and is the Member of Parliament for Varanasi. Modi
						is a member of the Bharatiya Janata Party (BJP), and of the
						Rashtriya Swayamsevak Sangh (RSS), a Hindu nationalist volunteer
						organisation. He is the first prime minister outside of the Indian
						National Congress to win two consecutive terms with a full
						majority, and the second one to complete five years in office
						after Atal Bihari Vajpayee.</p>
					<div class="row">
						<div class="col-6"">
							<a href="https://www.instagram.com/narendramodi/?hl=en"><button
									type="button" class="btn1 btn btn-secondary vw-4">Follow</button></a>
						</div>
						<div class="col-6">
							<a href="https://en.wikipedia.org/wiki/Narendra_Modi"><button
									type="button" class="btn2 btn btn-secondary vw-3">Read
									More...</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Blog -->

	<!-- Gallery -->
	<div class="gallery">
		<h1   style="font-size:3.8vw; margin-top:0;">
			<font color="black">Media And Gallery</font>
		</h1>
		<div class="container">
			<div id="myslideshow" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li class="active" data-target="#myslideshow" data-slide-to="0">
					</li>
					<li data-target="#myslideshow" data-slide-to="1"></li>
					<li data-target="#myslideshow" data-slide-to="2"></li>
					<li data-target="#myslideshow" data-slide-to="3"></li>
					<li data-target="#myslideshow" data-slide-to="4"></li>
					<li data-target="#myslideshow" data-slide-to="5"></li>
					<li data-target="#myslideshow" data-slide-to="6"></li>
				</ol>
				<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="css/Images/indianflag.jpg" width=100%>
				</div>
				<div class="carousel-item">
					<img src="css/Images/I5.jpeg" width=100%>
				</div>
				<div class="carousel-item">
						<img src="css/Images/gallery8.jpg" width=100%>
					</div>
					<div class="carousel-item">
					<img src="css/Images/Vajpayee.jpg" width=100%>
				</div>	
                 <div class="carousel-item">
						<img src="css/Images/gallery17.jpg" width=100%>
					</div>
					<div class="carousel-item">
						<img src="css/Images/gallery13.jpg" width=100%>
						<div class="carousel-caption">
							<h4>
								<font color="darkblue">BJP Manifesto
									<p>Congress says BJP has released a 'jumla manifesto'</p>
							</font>
							</h4>
						</div>
					</div>
				
			<div class="carousel-item">
					<img src="css/Images/gallery16.jpg" width=100%>
				</div>
				
				
				
				<a href="#myslideshow" class="carousel-control-prev" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					<span class="sr-only">Previous</span>
				</a> <a href="#myslideshow" class="carousel-control-next" role="button"
					data-slide="next"> <span class="carousel-control-next-icon"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- video -->
	
	<h1   style="font-size:3.8vw; margin-top:0;">
			<font color="black">Election Video</font>
		</h1>
	<div class="video">
	<iframe src="https://player.vimeo.com/video/61220793?color=ffffff&amp;title=0&amp;byline=0&amp;portrait=0" ></iframe>
	</div>
	
	<!-- end video -->
	
	<!-- contact Us -->
	<div class="container">
		<div class="row mt-5 mb-5">
			<div class=col-4>
				<h1   style="font-size:3.8vw; margin-top:0;">Contact Us</h1>
				<p>If you have any questions please, feel free to drop a line to
					us. Email us with any questions or inquiries. We would be happy to
					answer your questions and set up meeting with you.</p>
				<br>
			</div>
			<div class="col-8 mt-3">
				<form>
					<input type="text" class="mr-4 py-2 px-3" placeholder="Name">
					<input type="text" class="py-2 px-3" placeholder="Email">
					<textarea rows="7" placeholder="Message" class="mt-3 py-3 px-3"></textarea>
					<input type="submit" value="Send" /> <input type="reset"
						value="Clear" name="clear" />
				</form>
			</div>
		</div>
	</div>
	<!-- End Contact Us -->
	<!-- parallax -->

	<div class="container-fluid">
		<div class="parallax">
			<div class="row">
				<div class="col-1"></div>
				<div class="col-5">
					<h1   style="font-size:3.8vw; margin-top:0;">We Make &nbsp; You Happy is</h1>
				</div>
				<div class="col-2"></div>
				<div class="col-4">
					<h1   style="font-size:3.8vw; margin-top:0;">Our Goal.....!</h1>
				</div>
			</div>
		</div>
	</div>

	<!--End parallax -->

	<!-- Our Objective -->

	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-12 text-center">
				<h1   style="font-size:3.8vw; margin-top:0;">Why Choose Us?</h1>

			</div>
			<div class="col-4"></div>
			<div class="col-5">
				<p style="width: 30vw;">Organizations can easily conduct an
					election in 6 easy steps. Set Options | Upload Voter Data | Define
					Positions | Define Candidates | Activate and Publish Election |
					View Results.</p>
			</div>
			<div class="col-12 text-center">
				<h1 style="font-size:3.8vw; margin-top:0;">We Protect Your Online Reputation</h1>
            </div>
			<div class="col-3"></div>
		</div>
		<div class="container-fluid footer">
			<div class="row text-center mt-5">
				<div class="col-4 cols3 text-center">
				
					<img src="Images/Curcles.png" class="img-fluid">
					<h1 class="count"   style="font-size:3.8vw;">91%</h1>
					<h2 class="mt-4"   style="font-size:3.8vw;">Design</h2>
				</div>
				<div class="col-4 cols3 text-center">
					<img src="Images/Curcles.png" class="img-fluid">
					<h1 class="count"   style="font-size:3.8vw; margin-top:0;">86%</h1>
					<h2 class="mt-4"   style="font-size:3.8vw; margin-top:0;">Flexibility</h2>
				</div>
				<div class="col-4 cols3 text-center">
					<img src="Images/Curcles.png" class="img-fluid">
					<h1 class="count"   style="font-size:3.8vw; margin-top:0;">96%</h1>
					<h2 class="mt-4"   style="font-size:3.8vw; margin-top:0;">Response Rate</h2>
				</div>
			</div>
			<div class="rights">
				<h2>2019 © Rahul Yadav All Rights Reserved</h2>
			</div>
		</div>
	</div>

	<!-- Our Objective End -->

	<script>
		window.sr = ScrollReveal();
		sr.reveal('.container', {
			duration : 2000
		});
		sr.reveal('.container-fluid', {
			duration : 2000
		});
		sr.reveal('.row', {
			duration : 2000
		});
		sr.reveal('.cols3', {
			duration : 2000
		});
	</script>


</body>
</html>