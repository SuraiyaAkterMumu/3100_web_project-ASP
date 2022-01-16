<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

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
    <section class="header"> 
     <nav id="navbar">
		<div class="logo">
			<h4><span>P</span>hoenix</h4>
		</div>
		<ul id="Ul1" class="nav-links">
			<li><a class="active" href="javascript:void(0)">Home</a></li>
			<li><a href="Our_services.aspx">About Us</a></li>
			<li><a href="performance.aspx">Performance</a></li>
			<li><a href="Bulletin.aspx">Bulletin</a></li>
			<li><a href="Contact.aspx">Contact</a></li>
            <li><asp:Button ID="B_logout" OnClick="B_logout_Click" runat="server" Text="Logout" CssClass="ccolor"/>
            <asp:Button ID="B_login" OnClick="B_login_Click" runat="server" Text=" Login" CssClass="ccolor"/></li>
            <li><asp:Label ID="Label_welcome" runat="server" Text="Hi " ForeColor="White"></asp:Label></li> 
			
		</ul>
		
		<div class="burger">
			<div class="line1"></div>
			<div class="line2"></div>
			<div class="line3"></div>
		</div>
	</nav>

    <div class="text-box">
		<h1>
			MADE WITH PRIDE </br>
			
		</h1>
		<p>
			Lorem ipsum dolor sit amet consectetur adipisicing elit.
			Perferendis natus repellendus, <br> voluptatem ea consectetur 
			
		</p>
		<a href="" class="hero-btn">Visite us to know more</a>
	</div>
  </section>

      	<!-- --------------servies-----------   -->

	<section class="services">
		<h1>
			Servies We Provide
		</h1>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
	<div class="row">
		<div class="service-col">
			<h3>Media Strategy</h3>
			<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi teneturi possimus inventore, nobis cumque libero incidunt mnima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
		</div>
		<div class="service-col">
			<h3>Digital Marketing
			</h3>
			<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi tenetur possimus inventore, nobis cumque libero incidunt minima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
		</div>
		<div class="service-col">
			<h3>Branding & Identity</h3>
			<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis rem ut natus illum sequi tenetur possimus inventore, nobis cumque libero incidunt minima, porro ducimus nihil, deleniti excepturi dolorum adipisci eos!</p>
		</div>
	</div>
	</section>

      <!-- ----------------- office --------------------- -->

	<section class="office">
		<h1>
			Let's Tour Our Office 
		</h1>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>


		<div class="row">
			<div class="office-col">
				<img src="front_view.jpg" alt="">
				<div class="layer">
					<h3>Front View</h3>
				</div>
			</div>
			<div class="office-col">
				<img src="meeting_room.jpg" alt="">
				<div class="layer">
					<h3>Meeting room</h3>
				</div>
			</div>
			<div class="office-col">
				<img src="team.jpg" alt="">
				<div class="layer">
					<h3>Team Work</h3>
				</div>
			</div>
		</div>
	</section>

<!-- -------------------Achievements------------- -->

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


<!-- ------------------reviews------------------ -->
<section class="review">
	<h1>
		What Our client Says
	</h1>
	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>

	<div class="row">
		<div class="review-col">
			<img src="user1.jpg" alt="">
			<div>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam soluta illo odit, nemo maiores dicta laudantium sed fuga repellendus doloribus magnam consectetur velit sapiente? Dolore dolorum ut voluptates quia sapiente.</p>
				<h3>Cristine Berkey</h3>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
			</div>
		</div>
		<div class="review-col">
			<img src="user2.jpg" alt="">
			<div>
				<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Aperiam soluta illo odit, nemo maiores dicta laudantium sed fuga repellendus doloribus magnam consectetur velit sapiente? Dolore dolorum ut voluptates quia sapiente.</p>
				<h3>Cristine Berkey</h3>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star-half-alt"></i>
			</div>
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
