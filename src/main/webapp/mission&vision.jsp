<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Overview</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" >
        <link rel="stylesheet" href="stylesheet.css" >
    </head>
    <body class= "bgy">
        <nav class="navbar navbar-light bg-warning navbar-expand-md sticky-top" >
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
                <ul class="navbar-nav ms-auto">
                <li class="nav-item "><a  href= "https://www.facebook.com/uroojind" target="_blank"> <img alt="" src="flogo.png" class= "icon" ></a></li>
                <li class="nav-item "><a  href= "https://www.linkedin.com/company/uroojind/" target="_blank"><img alt="" src="Llogo.png" class= "icon" ></a></li>
                <li class="nav-item "><a  href= "https://instagram.com/uroojind?igshid=ZDdkNTZiNTM=" target="_blank"><img alt="" src="ilogo.png" class= "icon" ></a></li>
                </ul>
            </div>
        </nav>
        <section class= "wcontainer">
        <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">V<span class="yellow">i</span>s<span class="yellow">i</span>on</h1>
  <p class="center">To build leadership among youth for social change and justice. Urooj aims to achieve this by developing Youth. A just and inclusive society where every human being has equitable opportunities and adequate capabilities to harness their potential.</p>
  </section>
  
  <section class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >
  <h1 class="center">M<span class="yellow">i</span>ss<span class="yellow">i</span>on</h1>
  <p class="center">To promote the socially deprived youths to realise their rights to education, leadership and employment through inclusive policies and actions.</p>
  </section>
        </section>
        
<section class ="wcontainer">
<section  id="contact" class="mb-4" style="width:90%; padding: 30px; align-content: center; margin-left: 5%; margin-right: 5%;" >

  <!--Section heading-->
  <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
  <!--Section description-->
  <p class="text-center w-responsive mx-auto mb-5">Do you want to book a Table? or perhaps organize an event? or A question you want to to see answered? <br> or you just want to say something. Whatever it is, don't be shy just let us know.  </p>

  <div class="row">

      <!--Grid column-->
      <div class="col-md-9 mb-md-0 mb-5">
          <form id="contact-form" name="contact-form" action="savemessage" method="POST">

              <!--Grid row-->
              <div class="row">

                  <!--Grid column-->
                  <div class="col-md-4" style="margin-bottom: 20px;">
                      <div class="md-form mb-0">
                        <label for="name" class="">Your name</label>  
                        <input type="text" id="name" name="name" class="form-control">
                      </div>
                  </div>
                  <!--Grid column-->

                  <!--Grid column-->
                  <div class="col-md-4" style="margin-bottom: 20px;">
                      <div class="md-form mb-0">
                        <label for="email" class="">Your email</label>
                        <input type="text" id="email" name="email" class="form-control">
                      </div>
                  </div>
                  <!--Grid column-->
                  
                  <!--Grid column-->
                  <div class="col-md-4" style="margin-bottom: 20px;">
                      <div class="md-form mb-0">
                        <label for="Phone" class="">Your Phone No.</label>
                        <input type="text" id="Phone" name="Phone" class="form-control">
                      </div>
                  </div>
                  <!--Grid column-->

              </div>
              <!--Grid row-->

              <!--Grid row-->
              <div class="row" style="margin-bottom: 20px;">
                  <div class="col-md-12">
                      <div class="md-form mb-0">
                        <label for="subject" class="">Subject</label>  
                        <input type="text" id="subject" name="subject" class="form-control">
                      </div>
                  </div>
              </div>
              <!--Grid row-->

              <!--Grid row-->
              <div class="row" style="margin-bottom: 20px;">

                  <!--Grid column-->
                  <div class="col-md-12">

                      <div class="md-form">
                        <label for="message">Your message</label>  
                        <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                      </div>

                  </div>
              </div>
              <!--Grid row-->

          </form>

          <div class="text-center text-md-left">
              <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Send</a>
          </div>
          <div class="status"></div>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-md-3 text-center">
          <ul class="list-unstyled mb-0">
              <li><i class="fas fa-map-marker-alt fa-2x"></i>
                  <p>Patna, Bihar 800007, India</p>
              </li>

              <li><i class="fas fa-phone mt-4 fa-2x"></i>
                  <p>9708110793</p>
              </li>

              <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                  <p>uroojind@gmail.com</p>
              </li>
          </ul>
        </div>
      </div>
    </section>
  </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" ></script>
        </body>
</html>