<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Urooj</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
        <link rel="stylesheet" href="stylesheet.css" >
    </head>
    <body>
        <nav class="navbar navbar-light bg-warning navbar-expand-md fixed-top" >
            <a href="home" class="navbar-brand"><img src="UROOJ LOGO-02.png" width="90" height="40" alt=""></a>
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar" >
                <span class="navbar-toggler-icon"></span>
            </button>

            
            <div class="navbar-collapse collapse" id="navbar" >
                <ul class="navbar-nav">
                    <li class="nav-item"><a href="home" class="nav-link">Home</a></li>
                    <li class="nav-item dropdown"><a href="#aboutus" class="nav-link dropbtn">About Us</a>
                        <div class="dropdown-content">
                            <a href="overview">Overview</a>
                            <a href="mission&vision">Mission&Vision</a>
                            <a href="ourteam">Our Team</a>
                            <a href="storyofchange">Story Of Change</a>
                            <a href="presscovrage">Press Coverage</a>
                            <a href="impact">Impact</a>
                            <a href="testimonial">Testimonial</a>
                          </div>
                    </li>
                    <li class="nav-item dropdown"><a href="#ourwork" class="nav-link dropbtn">Programs</a>
                        <div class="dropdown-content">
                            <a href="vocationaltraining">Vocational Training</a>
                            <a href="computercenter">Computer Center</a>
                            <a href="fellowshipprograms">Fellowship Programs</a>
                          </div>
                    </li>
                    <li class="nav-item dropdown"><a href="#ourwork" class="nav-link dropbtn">Get Involved</a>
                        <div class="dropdown-content">
                            <a href="donate">Donate</a>
                            <a href="volunteer">Volunteer</a>
                            <a href="contactus">Contact US</a>
                            <a href="fellowship/internship">Fellowship/Internship</a>
                            <a href="careers">Careers</a>
                          </div>
                    </li>
                    <li class="nav-item"><a href="blog" class="nav-link">Blog</a></li>
                </ul>
            </div>
        </nav>
        
        <!--Carousel Wrapper-->
  <div id="carousel-example-2" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
      <li data-bs-target="#carousel-example-2" data-bs-slide-to="0" class="active"></li>
      <li data-bs-target="#carousel-example-2" data-bs-slide-to="1"></li>
      <li data-bs-target="#carousel-example-2" data-bs-slide-to="2"></li>
      <li data-bs-target="#carousel-example-2" data-bs-slide-to="3"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item active">
        <div class="view ratio ratio-21x9">
          <img class="d-block w-100 " src="https://via.placeholder.com/450" alt="First slide">
          <div class="mask rgba-black-light"></div>
        </div>
        <div class="carousel-caption">
          <h3 style="color:rgb(0, 251, 255);" class="h3-responsive">Caption 1</h3>
          <p style="color:rgb(0, 251, 255);">Caption 1</p>
        </div>
      </div>
      <div class="carousel-item">
        <!--Mask color-->
        <div class="view ratio ratio-21x9">
          <img class="d-block w-100" src="https://via.placeholder.com/450" alt="Second slide">
          <div class="mask rgba-black-light"></div>
        </div>
        <div class="carousel-caption">
          <h3 style="color:rgb(0, 251, 255);" class="h3-responsive">Caption 2</h3>
          <p style="color:rgb(0, 251, 255);">Caption 2</p>
        </div>
      </div>
      <div class="carousel-item">
        <!--Mask color-->
        <div class="view ratio ratio-21x9">
          <img class="d-block w-100" src="https://via.placeholder.com/450" alt="Third slide">
          <div class="mask rgba-black-slight"></div>
        </div>
        <div class="carousel-caption">
          <h3 style="color:rgb(0, 251, 255);" class="h3-responsive">Caption 3</h3>
          <p style="color:rgb(0, 251, 255);">Caption 3</p>
        </div>
      </div>
      <div class="carousel-item">
        <!--Mask color-->
        <div class="view ratio ratio-21x9">
          <img class="d-block w-100" src="https://via.placeholder.com/450" alt="Fourth slide">
          <div class="mask rgba-black-strong"></div>
        </div>
        <div class="carousel-caption">
          <p style="color:rgb(0, 251, 255);">Caption 4</p>
          <h3 style="color: rgb(0, 251, 255);" class="h3-responsive">Caption 4</h3>
          <a href="#contact" class="btn btn-primary mb-2 mb-md-0">Button</a>
        </div>
      </div>
    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-2" role="button" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
    </a>
    <!--/.Controls-->
  </div>
  <!--/.Carousel Wrapper-->
  
  <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">V<span class="yellow">i</span>s<span class="yellow">i</span>on</h1>
  <p class="center">To build leadership among youth for social change and justice. Urooj aims to achieve this by developing Youth. A just and inclusive society where every human being has equitable opportunities and adequate capabilities to harness their potential.</p>
  </section>
  
  <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">M<span class="yellow">i</span>ss<span class="yellow">i</span>on</h1>
  <p class="center">To promote the socially deprived youths to realise their rights to education, leadership and employment through inclusive policies and actions.</p>
  </section>
  
  <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">About t<span class="yellow">h</span>e Organ<span class="yellow">i</span>zat<span class="yellow">i</span>on</h1>
  <p class="center">Urooj is a social development organization that aims to help the marginalized and the downtrodden through various programs in the field of education, skill development, etc. It works mostly on the marginalized youths because young people are the future of a country. We also engage in civil discourse and advocate for equity and inclusion for all.</p>
  </section>
  
  <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">W<span class="yellow">h</span>y yout<span class="yellow">h</span>?</h1>
  <p class="center">Youth plays a pivotal role in the development of society or a nation at large. We believe that the potential of every youth should be realized specially who are coming from the deprived or marginalized sections of a society.</p>
  </section>
  
  <section class= "bgy" >
  <div Style = "margin-top: 30px; width:80%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" class = "row">
  	<div class="col-lg-4 col-sm-6  py-3 ">
  		<h4>Quick Links</h4><br>
  		<div class = "row">
  		<div class= "col-4 py-2 ">
  		<a href="donate" >Donate</a><br>
  		<a href="volunteer" >Volunteer</a><br>
        <a href="contactus" >Contact US</a><br>
  		</div>
  		<div class= "col-4 py-2 lp">
  		<a href="fellowship/internship" >Fellowship/Internship</a><br>
        <a href="careers" >Careers</a><br>
  		</div>
        
  	</div>	
  	</div>
  	<div class="col-lg-4 col-sm-6  py-3 center">
  		<h4 >Follow Us</h4>
  		<a  href= "https://www.facebook.com/uroojind"><img alt="" src="flogo.png" class= "icon"></a>
  		<a  href= "https://www.linkedin.com/company/uroojind/"><img alt="" src="Llogo.png" class= "icon"></a>
  		<a  href= "https://instagram.com/uroojind?igshid=ZDdkNTZiNTM="><img alt="" src="ilogo.png" class= "icon"></a>
  		
  	</div>
  	<div class="col-md-4 text-center">
          <ul class="list-unstyled mb-0">
              <li><i class="fas fa-map-marker-alt fa-2x"></i>
                  <p>Patna, Bihar 800007, India</p>
              </li>

              <li><i class="fas fa-phone mt-4 fa-2x"></i>
                  <p>98xxxxxx01</p>
              </li>

              <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                  <p>contact@urooj.com</p>
              </li>
          </ul>
        </div>
  </div>
  </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" ></script>
        </body>
</html>
