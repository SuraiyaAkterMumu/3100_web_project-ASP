<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Phoenix</title>
	<link rel="stylesheet" href="home.css">
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <form id="form1" runat="server">
    	<section class="sub-header">
		<nav id="navbar" >
			<div class="logo">
				<h4><span>P</span>hoenix</h4>
			</div>
		<ul id="Ul1" class="nav-links">
			<li><a href="Users.aspx">Home</a></li>
				<li><a href="Our_services.aspx">About Us</a></li>
				<li><a href="performance.aspx">Performance</a></li>
                <li><a href="Bulletin.aspx">Bulletin</a></li>
				<li><a class="active" href="javascript:void(0)">Contact</a></li>
				
			<li><asp:Button ID="B_logout" OnClick="B_logout_Click" runat="server" Text="Log Out" CssClass="ccolor"/>
                 <asp:Button ID="B_login" OnClick="B_login_Click" runat="server" Text=" Login" CssClass="ccolor"/>
			</li>
            <li><asp:Label ID="Label_welcome" runat="server" Text=""></asp:Label></li> 
		</ul>
		
		<div class="burger">
			<div class="line1"></div>
			<div class="line2"></div>
			<div class="line3"></div>
		</div>
	</nav>

	<h1>Contact Us</h1>
	<!-- <p style="color: rgb(172, 169, 169);">Over 15 years of combined design & content experience</p> -->
	</section>

	<section class="location">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3330.0802204148736!2d-112.24666788541619!3d33.42115285817055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b3f73a6c3e619%3A0xe8c2e47edc653661!2sPhoenix%20Digital%20Marketing%20Agency!5e0!3m2!1sen!2sbd!4v1639906573956!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
	</section>


	<section class="contact-us">
		<div class="row">
			<div class="contact-col">
				<div>
					<i class="fas fa-home"></i>
					<span>
						<h5>XYZ road, ABC Building</h5>
						<p>Tolleson, AZ, United States</p>
					</span>
				</div>
				<div>
					<i class="fas fa-phone-alt"></i>					<span>
						<h5>+1 0123456789</h5>
						<p>Sunday to Saturday, All time open.</p>
					</span>
				</div>
				<div>
					<i class="far fa-envelope"></i>
					<span>
						<h5>info@phoniex.com</h5>
						<p>Email us your query</p>
					</span>
				</div>
			</div>
			<div class="contact-col">
				<form action="">
					<input type="text" placeholder="Enter Your name" >
					<input type="text" placeholder="Enter Your email">
					<input type="text" placeholder="Enter Your interested area">
					<textarea  rows="8" placeholder="Message"></textarea>
					<button type="submit" class="hero-btn red-btn">Message</button>
				</form>
			</div>
		</div>
	</section>

<!-- ---------footer-------------- -->

	<section class="footer">
		<h4>About us</h4>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas harum, facere amet asperiores nulla molestias aliquid<br> soluta ipsa nobis assumenda qui quas architecto placeat </p>
		<div class="icons">
			<i class="fab fa-facebook-f"></i>
			<i class="fab fa-twitter"></i>
			<i class="fab fa-instagram"></i>
			<i class="fab fa-linkedin-in"></i>
		</div>
		<p>Made by MeeMumu<i class="far fa-smile-wink"></i></p>
	</section>
	<script src="home.js"></script>
  </form>
</body>
</html>
