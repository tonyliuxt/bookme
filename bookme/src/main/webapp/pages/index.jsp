<%@ page contentType="text/html;charset=UTF-8" %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="LIU's Driving School, Nanjing.com.au">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
  <meta name="description" content="">
  <title>Liu's Driving School</title> 
 
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/et-line-font-plugin/style.css">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
<script type="text/javascript">
	$(document).ready(function(){
		
	});	
	//contactForm.onsubmit
	function submitMessage(){
		var url = '<%=request.getContextPath()%>/contact/post';
		// alert(url);
	 	$.ajax({ 
			async:true,
			type:"POST",
			url: url, 
			data: { name :$('#form1-0-name').val(), 
					email: $('#form1-0-email').val(), 
					phone: $('#form1-0-phone').val(), 
					message: $('#form1-0-message').val()
				  },
			success: function(data) {
				$.messager.show({
	                title: 'Message',
	                msg: data.result,
					showType:'slide',
					style:{
						right:'',
						top:document.body.scrollTop+document.documentElement.scrollTop,
						bottom:''
					}
				});
			}
		});
	}

</script>
</head>
<body>
<section id="menu-0">

    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="https://nanjing.com.au" class="navbar-logo"><img src="assets/images/logo.png" alt='<fmt:message key="index.logo.name" />'></a>
                        <a class="navbar-caption" href="https://nanjing.com.au">
							<big class="mbr-price-term" style="color:red">L</big><spring:message code="index.logo.name" text="earning Into Using" />
						</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
						<li class="nav-item"><a class="nav-link link" href="#menu-1">OVERVIEW</a></li>
						<li class="nav-item"><a class="nav-link link" href="#features3-d">BASIC STAGES</a></li>
						<li class="nav-item"><a class="nav-link link" href="#pricing-table1-b">PRICE</a></li>
						<li class="nav-item"><a class="nav-link link" href="#form1-0">CONTACT</a></li>
						<li class="nav-item nav-btn"><a class="nav-link btn btn-white btn-white-outline" href="http://localhost:9090/bookme/index?locale=zh_CN">中文/English</a></li></ul>
                    
					<button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section id="menu-1" class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-after-navbar" id="header2-h" style="background-image: url(assets/images/landscape.jpg);">

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 0);">
    </div>
    <div class="mbr-table mbr-table-full">
        <div class="mbr-table-cell"> 

            <div class="container">
                <div class="mbr-section row">
                    <div class="mbr-table-md-up">
                        
                        <div class="mbr-table-cell mbr-right-padding-md-up mbr-valign-top col-md-7">
                            <div class="mbr-figure"><img src="assets/images/cover.png"></div>
                        </div>
                        <div class="mbr-table-cell col-md-5 text-xs-center text-md-left">

                            <h3 class="mbr-section-title display-2">DI Liu</h3>

                            <div class="mbr-section-text lead">
                                <p>Welcome to Liu's Driving School, an independent driving instructor based on Glen Waverley / Burwood East which is close to Burwood VicRoad. <p>
								<p>I am a fully qualified TSC approved driving instructor and offer individual tailored tuition to students of all ages and abilities on a one to one basis.<p>
								<p>I hope you find the website useful, if you have any feedback, suggestions for the site or questions then please do not hesitate to 
								<a class="nav-link link" href="#form1-0"> contact me </a>
								</p>
                            </div>

                            <div class="mbr-section-btn"><a class="btn btn-primary" href="https://nanjing.com.au">MORE</a></div>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating hidden-sm-down" aria-hidden="true"><a href="#features3-d"><i class="mbr-arrow-icon"></i></a></div>

</section>

<section class="mbr-cards mbr-section mbr-section-nopadding" id="features3-d" style="background-color: rgb(255, 255, 255);">
    
    <div class="mbr-section mbr-section__container mbr-section__container--middle" style="padding-top: 80px; padding-bottom: 80px;">
      <div class="container">
          <div class="row">
              <div class="col-xs-12 text-xs-center">
                  <h3 class="mbr-section-title display-2">BSIC STAGES</h3>
                  <small class="mbr-section-subtitle">Basically, there are four stages before your are on boarding.</small>
              </div>
          </div>
      </div>
    
    <div class="mbr-cards-row row">
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
              <div class="card cart-block">
                  <div class="card-img"><img src="assets/images/stage1.jpg" class="card-img-top"></div>
                  <div class="card-block">
                    <h4 class="card-title">THEORY TEST</h4>
                    <h5 class="card-subtitle">Including Learner Permit Test and Hazard Perception Test</h5>
                    <p class="card-text">Bootstrap 4 has been noted as one of the most reliable and proven frameworks and Mobirise has been equipped to develop websites using this framework.</p>
                    <div class="card-btn"><a href="https://nanjing.com.au" class="btn btn-primary">MORE</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage2.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title">DRIVING WITH DI</h4>
                        <h5 class="card-subtitle">Learning experiences and skills from DI for the safe driving</h5>
                        <p class="card-text">One of Bootstrap 4's big points is responsiveness and Mobirise makes effective use of this by generating highly responsive website for you.</p>
                        <div class="card-btn"><a href="https://nanjing.com.au" class="btn btn-primary">MORE</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage3.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title">DRIVING TEST</h4>
                        <h5 class="card-subtitle">Getting your sole driving accreditation by passing the VicRoads Practice Test</h5>
                        <p class="card-text">Google has a highly exhaustive list of fonts compiled into its web font platform and Mobirise makes it easy for you to use them on your website easily and freely.</p>
                        <div class="card-btn"><a href="https://nanjing.com.au" class="btn btn-primary">MORE</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage4.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title">CONTINUE ON BOARD</h4>
                        <h5 class="card-subtitle">Attaining your own experiences and skills on your daily driving</h5>
                        <p class="card-text">Mobirise gives you the freedom to develop as many websites as you like given the fact that it is a desktop app.</p>
                        <div class="card-btn"><a href="https://nanjing.com.au" class="btn btn-primary">MORE</a></div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    </div>
</section>

<section class="mbr-section" id="pricing-table1-b" style="background-color: rgb(48, 48, 48); padding-top: 80px; padding-bottom: 80px;">

    

    <div class="mbr-section mbr-section__container mbr-section__container--middle">
      <div class="container">
          <div class="row">
              <div class="col-xs-12 text-xs-center">
                  <h3 class="mbr-section-title display-2">PRICING TABLE</h3>
                  <small class="mbr-section-subtitle">We kindly provide reasonable prices for different kinds of Learners.</small>
              </div>
          </div>
      </div>
    </div>

    <div class="mbr-section mbr-section-nopadding mbr-price-table">
      <div class="row">
            <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header card-block">
                      
                      <div class="card-title">
                        <h3 class="mbr-plan-title">Single-Lesson</h3>
                        <small class="mbr-plan-subtitle">[90 minutes/Lesson]</small>
                      </div>
                      <div class="card-text">
                          <div class="mbr-price">
                            <span class="mbr-price-value">$</span>
                            <span class="mbr-price-figure">75</span>
                          </div>
                          <small class="mbr-plan-price-desc"></small>
                      </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header card-block">
                      
                      <div class="card-title">
                        <h3 class="mbr-plan-title">Multi-Lesson</h3>
                        <small class="mbr-plan-subtitle">[4]*[90 minutes/Lesson]</small>
                      </div>
                      <div class="card-text">
                          <div class="mbr-price">
                            <span class="mbr-price-value">$</span>
                            <span class="mbr-price-figure">72</span>
                          </div>
                          <small class="mbr-plan-price-desc"></small>
                      </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header card-block bg-primary">
                      <div class="mbr-plan-label">HOT!</div>
                      <div class="card-title">
                        <h3 class="mbr-plan-title">Multi-Lesson</h3>
                        <small class="mbr-plan-subtitle">[6+]*[90 minutes/Lesson]</small>
                      </div>
                      <div class="card-text">
                          <div class="mbr-price">
                            <span class="mbr-price-value">$</span>
                            <span class="mbr-price-figure">70</span>
                          </div>
                          <small class="mbr-plan-price-desc"></small>
                      </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header card-block">
                      
                      <div class="card-title">
                        <h3 class="mbr-plan-title">Driving Test</h3>
                        <small class="mbr-plan-subtitle">Single Test</small>
                      </div>
                      <div class="card-text">
                          <div class="mbr-price">
                            <span class="mbr-price-value">$</span>
                            <span class="mbr-price-figure">120</span>
                          </div>
                          <small class="mbr-plan-price-desc"></small>
                      </div>
                    </div>
                </div>
            </div>
          </div>
    </div>

</section>

<section class="mbr-section" id="form1-0" style="background-color: rgb(255, 255, 255); padding-top: 80px; padding-bottom: 80px;">
    <div class="mbr-section mbr-section__container mbr-section__container--middle">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-xs-center">
                    <h3 class="mbr-section-title display-2">CONTACT FORM</h3>
                    <small class="mbr-section-subtitle">Please Fill Out This Form and We'll Call You Back.</small>
                </div>
            </div>
        </div>
    </div>
    <div class="mbr-section mbr-section-nopadding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-lg-10 col-lg-offset-1" data-form-type="formoid">

                    <div data-form-alert="true">
                        <div hidden="" data-form-alert-success="true" class="alert alert-form alert-success text-xs-center">Thanks for filling out form!</div>
                    </div>

                    <form name="contactForm" action="https://nanjing.com.au/" method="post" data-form-title="CONTACT FORM" >
                        <input type="hidden" value="bhmUJHz2F6/w+Cv5QyKySj3GoEsERGa0ojop1f2Uh4x3rO6SUHkXilk7zx5Z4MapjB591ABJs5XR5uKDHsDVjZ9bSKrRA/Zu86kWHNnoxfEU5xtnLAfJ2lNv+NWKL+ny" data-form-email="true">

                        <div class="row row-sm-offset">

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-name">Name<span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="text" class="form-control" name="name" required="" data-form-field="Name" id="form1-0-name">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-email">Email<span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="email" class="form-control" name="email" required="" data-form-field="Email" id="form1-0-email">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-phone">Phone<span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="tel" class="form-control" name="phone" required="" data-form-field="Phone" id="form1-0-phone">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-12">
								<div class="form-group">
									<label class="form-control-label" for="form1-0-message">Message<span class="form-asterisk" style="color:red"> * </span></label>
									<textarea class="form-control" name="message" rows="7" data-form-field="Message" required="" id="form1-0-message"></textarea>
								</div>
                            </div>
                        </div>

                        <div><button type="submit" class="btn btn-primary"  onclick="submitMessage()">Submit</button></div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section mbr-section-md-padding mbr-footer footer2" id="contacts2-2" style="background-color: rgb(46, 46, 46); padding-top: 70px; padding-bottom: 70px;">
    
    <div class="container">
        <div class="row">
            <div class="mbr-footer-content col-xs-12 col-md-3">
                <p>
					<strong>Contact Me</strong><br>
					Email: tony.liuxt@gmail.com<br>
					Phone: 0452 382 276
				</p><br>
                <p><br>
					<strong>Related Links</strong>
							<li>
								<a class="text-white" href="https://www.vicroads.vic.gov.au/" target="_blank">VicRoads</a>
							</li>
				</p>
            </div>
            <div class="col-xs-12 col-md-9">
                <div class="mbr-map"><iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBEVfHnUmSPt5yS14ugoekmR4CmrcMHCBc&amp;q=place_id:ChIJy2a9frZr1moRQNuMIXVWBAU" allowfullscreen=""></iframe></div>
            </div>
        </div>
    </div>
</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2" style="background-color: rgb(32, 32, 32); padding-top: 1.05rem; padding-bottom: 1.05rem;">
		    <div class="card-block">
		        <p class="text-xs-center">Copyright (c) 2017 nanjing.com.au.</p>
		    </div>
</footer>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
  
  <input name="animation" type="hidden">
   <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon"></i></a></div>
  </body>
</html>