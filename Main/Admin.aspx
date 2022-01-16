<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
    <section class="header"> 
     <nav class="navbar">
		<div class="logo">
			<h4><span>P</span>hoenix</h4>
		</div>
		<ul id="Ul1" class="nav-links">
			<li><a class="active" href="javascript:void(0)">Home</a></li>
			<li><a href="Admin_employee.aspx">Employee</a></li>
			<li><a href="Admin_client.aspx">Client</a></li>
			<li><a href="Admin_Candite_CV.aspx">Candite</a></li>
            <li><asp:Button ID="B_logout" OnClick="B_logout_Click" runat="server" Text="Logout" CssClass="ccolor"/></li>
            <li><asp:Label ID="Label_welcome" runat="server" Text="" ForeColor="White"></asp:Label></li> 
			
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
		
	</div>
    </section>

	
	<script src="home.js"></script>
    </form>
</body>
</html>
