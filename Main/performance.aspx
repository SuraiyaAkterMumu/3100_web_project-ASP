<%@ Page Language="C#" AutoEventWireup="true" CodeFile="performance.aspx.cs" Inherits="performance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
				<li><a class="active" href="javascript:void(0)">Performance</a></li>
				<li><a href="Bulletin.aspx">Bulletin</a></li>
				<li><a href="Contact.aspx">Contact</a></li>
			<li><asp:Button ID="B_logout" OnClick="B_logout_Click" runat="server" Text="Log Out" CssClass="ccolor"/> 
                <asp:Button ID="B_login" OnClick="B_login_Click" runat="server" Text=" Login" CssClass="ccolor"/></li>
            <li><asp:Label ID="Label_welcome" runat="server" Text=" "></asp:Label></li> 
		</ul>
		
		<div class="burger">
			<div class="line1"></div>
			<div class="line2"></div>
			<div class="line3"></div>
		</div>
	</nav>


	
<h1>Achievements</h1>
	</section>
	<section class="achievements">
		<h1>
			Why Phoenix!?
		</h1>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
		<div class="row">
			<div class="achieve-col">
				<img src="achieve.jpg" alt="">
				<h3>Innovative Ideas</h3>
				<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.!</p>
			</div>
			<div class="achieve-col">
				<img src="achieve1.jpg" alt="">
				<h3>A Lot of Reviews</h3>
				<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
			</div>
			<div class="achieve-col">
				<img src="achieve2.jpg" alt="">
				<h3>24hr Open</h3>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.</p>
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
