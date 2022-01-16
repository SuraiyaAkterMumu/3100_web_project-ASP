// When the user scrolls the page, execute myFunction
window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.getElementById("navbar");

// Get the offset position of the navbar
var sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } if(window.pageXOffset<sticky) {
        navbar.classList.remove("sticky");
    }
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
   
        document.getElementById("logo").style.height = "10vh";
    }
    else{
    
        document.getElementById("logo").style.height = "15vh";
    }
  
}



var navSlide = function() {
    var burger = document.querySelector('.burger');
    var nav = document.querySelector('.nav-links');
    var navLinks = document.querySelectorAll('.nav-links li');

//toggol Nav
burger.addEventListener('click', function() {
    nav.classList.toggle('nav-active'); 
        
navLinks.forEach(function(link, index){
    if(link.style.animation)
    {
        link.style.animation = '';
    }
    else
    {
        link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 1}s`;
    }
});

//burger animation
burger.classList.toggle('toggle');
});
//Active links

}
navSlide();

