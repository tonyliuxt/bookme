<%@ page contentType="text/html;charset=UTF-8" %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="LIU's Driving School around glen waverley, a driving instructor in Melbourne, pigeonbooking.com.au">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Liu's Driving School in Melbourne, Driving Lessons, Drive School</title> 
  <meta name="description" itemprop="description" content="Liu's Driving School, a fully qualified TSC approved driving instructor based on Glen Waverley / Burwood East / Vermount South / Wheelers Hill / Notting Hill / Mulgrave / Blackburn / Boxhill which is close to Burwood VicRoads and offer individual tailored driving tuition to students of all ages and abilities on a one to one basis.">
  <meta name="title" content="Origin Driving School Melbourne, Driving Lessons, Drive School"/>
  <meta name="keywords" content="Driving School, Driving Lessons,Driving Licence,driving schools in Melbourne,Driving Test,Driving Tuition,Learn To Drive,Driver Training,Drives,driving,driving classes Melbourne,Driving Instructor,victorian licence,Drive Lesson Melbourne,drive school"/>
  <meta property="og:url" content="http://www.pigeonbooking.com.au/" />
  <meta property="og:title" content="LIU's Driving School" />
  <meta property="og:description" content="LIU's Driving School, Driving School Melbourne, Drive School, Drive School Melbourne" />
  <meta property="og:site_name" content="LIU's Driving School" />

  <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
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
	//contactForm.onsubmit
	function submitMessage(){
		var url = '<%=request.getContextPath()%>/contact/post';
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
		grecaptcha.reset();
		$('#btnsubmit').hide();
	}

	var verifyCallback = function(response) {
		if(response != null && response != ''){
			$('#btnsubmit').show();
		}else{
			$('#btnsubmit').hide();
		}
    };
	var expiredCallback = function(response) {
		$('#btnsubmit').hide();
    };
	
	// https://developers.google.com/recaptcha/docs/display#config
    var onloadCallback = function() {
        grecaptcha.render('html_element', {
          'sitekey' : '6LcAOBAUAAAAANiMbmDDWopoGd4UAkYr6QLpgzTh',
		  'callback' : verifyCallback,
		  'expired-callback' : expiredCallback,
		  'hl':'${pageContext.response.locale}'
        });
      };	
</script>
<style> 
#map2{
    border-radius: 15px;
    background: #73AD21;
    padding: 20px; 
    z-Index:1000;
}

#map {
    border-radius: 15px;
    border: 1px solid #73AD21;
    padding: 1px;
    z-Index:1000;
}

#cover {
    border-radius: 15px;
    background-position: left top;
    background-repeat: repeat;
    padding: 1px; 
    z-Index:1000;
}
</style>
</head>
<body>
<section id="menu-0">

    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="#" class="navbar-logo"><img src="assets/images/logo.png" alt='<fmt:message key="index.logo.name" />'></a>
                        <a class="navbar-caption" href="#">
							<big class="mbr-price-term" style="color:red">L</big><spring:message code="index.logo.name" text="earning Into Using" />
						</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
						<li class="nav-item"><a class="nav-link link" href="#menu-1"><spring:message code="index.header.overview" text="OVERVIEW" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="#features3-d"><spring:message code="index.header.stages" text="BASIC STAGES" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="#pricing-table1-b"><spring:message code="index.header.price" text="PRICE" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="#form1-0"><spring:message code="index.header.contact" text="CONTACT" /></a></li>
						<li class="nav-item nav-btn"><a class="nav-link btn btn-white btn-white-outline" href="<%=request.getContextPath()%>/manage" target="_blank">ADMIN</a></li>
						<li class="nav-item nav-link btn">
							<a href="?language=en">English</a> <big style="color:white"> | </big> <a href="?language=zh_CN">中文</a>
						</li>
					</ul>
                    
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
                            <div class="mbr-figure" id="cover"><img src="assets/images/cover.png"></div>
                        
			                <div class="mbr-map" style="height:220px;" id="map">
			                	<!-- col-xs-12 col-md-9 <iframe frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBEVfHnUmSPt5yS14ugoekmR4CmrcMHCBc&amp;q=place_id:ChIJy2a9frZr1moRQNuMIXVWBAU" allowfullscreen=""></iframe>  -->
			                </div>
			                  <script>
						      // This example uses a symbol to add a vector-based icon to a marker.
						      // The symbol uses one of the predefined vector paths ('CIRCLE') supplied by the
						      // Google Maps JavaScript API.
						
						      function initMap() {
						        var map = new google.maps.Map(document.getElementById('map'), {
						          zoom: 10,
						          center: {lat: -37.8568213, lng: 145.1641455} //Burwood VicRoads -37.8568213 | 145.1641455  Glen center: -37.8857, lng: 145.1652
						        });
						        
						        var marker = new google.maps.Marker({
						            position: {lat: -37.8568213, lng: 145.1641455},
						            map: map
						        });
						        
						        var cityCircle = new google.maps.Circle({
						              strokeColor: '#FF0000',
						              strokeOpacity: 0.5,
						              strokeWeight: 1,
						              fillColor: '#FF0000',
						              fillOpacity: 0.15,
						              map: map,
						              center: {lat: -37.8568213, lng: 145.1641455},
						              radius: 12*1000
						        });
						      }
						    </script>
						    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDksqwsGiLGHB6mNOioSoh78OyEe04a3mI&amp;callback=initMap">
						    </script>
                        </div>
                        
                        
                        <div class="mbr-table-cell col-md-5 text-xs-center text-md-left">

                            <h3 class="mbr-section-title display-2"><spring:message code="index.overview.titleliu" text="DI Liu"/></h3>
                            <h6 class="mbr-section-title display-6"><spring:message code="index.overview.phone" text="Phone:"/><a class="nav-link link" href="#form1-0">0452 382 276</a></h6>
                            <h6 class="mbr-section-title display-6"><spring:message code="index.overview.email" text="Email:"/><a class="nav-link link" href="#form1-0">liudrivingschool@gmail.com</a></h6>

                            <div class="mbr-section-text lead">
                                <p><spring:message code="index.overview.introfirst" text="Welcome to Liu's Driving School, an independent driving instructor based on"/><p>
                                <p><spring:message code="index.overview.introsecond" text="Glen Waverley / Burwood East / Vermount South / Wheelers Hill / Notting Hill / Mulgrave / Blackburn / Boxhill which is close to Burwood VicRoad."/><p>
								<p><spring:message code="index.overview.introthird" text="I am a fully qualified TSC approved driving instructor and offer individual tailored tuition to students of all ages and abilities on a one to one basis."/><p>
								<p><spring:message code="index.overview.introfourth" text="I hope you find the website useful, if you have any feedback, suggestions for the site or questions then please do not hesitate to"/> 
								<a class="nav-link link" href="#form1-0"> <spring:message code="index.overview.introfifth" text="Contact me"/> </a>
								</p>
                            </div>

                            <div class="mbr-section-btn"><a class="btn btn-primary" href="https://au.linkedin.com/in/tony-liu-2b6aa07a" target="_blank"><spring:message code="index.common.more" text="More"/></a></div>

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
                  <h3 class="mbr-section-title display-2"><spring:message code="index.stages.title" text="BSIC STAGES"/></h3>
                  <small class="mbr-section-subtitle"><spring:message code="index.stages.desc" text="Basically, there are four stages before your are really on boarding."/></small>
              </div>
          </div>
      </div>
    
    <div class="mbr-cards-row row">
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
              <div class="card cart-block">
                  <div class="card-img"><img src="assets/images/stage1.jpg" class="card-img-top"></div>
                  <div class="card-block">
                    <h4 class="card-title"><spring:message code="index.stages.one" text="THEORY TEST"/></h4>
                    <h5 class="card-subtitle"><spring:message code="index.stages.one.desc" text="Including Learner Permit Test and Hazard Perception Test"/></h5>
                    <p class="card-text">
                    	<spring:message code="index.stages.one.dd1" text="You should firstly "/><a href="https://www.vicroads.vic.gov.au/licences/your-ls/get-your-ls/lpt" target="_blank"><spring:message code="index.stages.one.dd2" text="Practice Online"/></a>, 
                    	<spring:message code="index.stages.one.dd3" text="when you feel confident to attend a real test you can "/><a href="https://billing.vicroads.vic.gov.au/bookings/Learner/TermsAndConditions" target="_blank"><spring:message code="index.stages.one.dd4" text="Book a Learner Permit test"/></a> 
                    	<spring:message code="index.stages.one.dd5" text="which costs around $40.90, after passing this, then you can"/>
                    	<a href="https://billing.vicroads.vic.gov.au/bookings/Probationary/TermsAndConditions" target="_blank"><spring:message code="index.stages.one.dd6" text="Book a Hazard Perception test"/></a> 
                    	<spring:message code="index.stages.one.dd7" text="which costs around $35.5."/> 
                    	<spring:message code="index.stages.one.dd8" text="After passing the two tests, you can start the second stage -->"/>
                    </p>
                    <!-- 
                    <div class="card-btn"><a href="#" class="btn btn-primary"><spring:message code="index.common.more" text="MORE"/></a></div>
                     -->
                   </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage2.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title"><spring:message code="index.stages.two" text="DRIVING WITH DI"/></h4>
                        <h5 class="card-subtitle"><spring:message code="index.stages.two.desc" text="Learning experiences and skills from DI for the safe driving"/></h5>
                        <p class="card-text">
	                        <spring:message code="index.stages.two.dd1" text="Do you always feel a headache at the thought of parking in the supermarket car park?"/>
	                        <spring:message code="index.stages.two.dd2" text="Do you usually get a scared horn behind when changing lanes or running into a roundabout?"/>
	                        <spring:message code="index.stages.two.dd4" text="Do you tend to avoid driving on freeway or driving to a far distance destination?"/>
	                        <spring:message code="index.stages.two.dd3" text="If the answer is yes, that is where the Driving Instructor can help."/>
	                        <spring:message code="index.stages.two.dd5" text="When you feel confident to have a solo driving you can start the third stage-->"/>
                        </p>
                    <!-- 
                    <div class="card-btn"><a href="#" class="btn btn-primary"><spring:message code="index.common.more" text="MORE"/></a></div></div>
                     -->
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage3.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title"><spring:message code="index.stages.three" text="DRIVING TEST"/></h4>
                        <h5 class="card-subtitle"><spring:message code="index.stages.three.desc" text="Getting your sole driving accreditation by passing the VicRoads Practice Test"/></h5>
                        <p class="card-text">
                        	<spring:message code="index.stages.three.dd1" text="You can "/>
                        	<a href="https://billing.vicroads.vic.gov.au/bookings/Probationary/TermsAndConditions" target="_blank"><spring:message code="index.stages.three.dd2" text="Book a Drive Test"/></a>
                        	<spring:message code="index.stages.three.dd3" text="online, which costs around $60.70. Basically, it lasts around 30 minutes and includes two stages"/>
	                        <spring:message code="index.stages.three.dd4" text="First stage is around 10 minutes including a parallel parking and a 3-point-turn,"/>
	                        <spring:message code="index.stages.three.dd5" text="Second stage is around 20 minutes including an array of testing items."/>
                        </p>
                    <!-- 
                    <div class="card-btn"><a href="#" class="btn btn-primary"><spring:message code="index.common.more" text="MORE"/></a></div></div>
                     -->
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 20px; padding-bottom: 20px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img"><img src="assets/images/stage4.jpg" class="card-img-top"></div>
                    <div class="card-block">
                        <h4 class="card-title"><spring:message code="index.stages.four" text="Solo Driving"/></h4>
                        <h5 class="card-subtitle"><spring:message code="index.stages.four.desc" text="Attaining your own experiences and skills and form your own driving philosophy"/></h5>
                        <p class="card-text">
                        	<spring:message code="index.stages.four.dd1" text="It is true that you cannot learn all things during the past three stages, like"/>
                        	<spring:message code="index.stages.four.dd2" text="all kinds of road conditions in different weather conditions, some special road signs like Hook-Turn,"/>
                        	<spring:message code="index.stages.four.dd3" text="basic local driving etiquette like give way to drivers who not legally but reasonably have the right to use the road."/>
                        </p>
                    <!-- 
                    <div class="card-btn"><a href="#" class="btn btn-primary"><spring:message code="index.common.more" text="MORE"/></a></div></div>
                     -->
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    </div>
</section>
<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background" id="header2-4" style="background-image: url(assets/images/jumbotron.jpg);">
     <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(0, 0, 0);">
     </div>
     
        <div class="mbr-section mbr-section__container mbr-section__container--middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-xs-center">
                        <h3 class="mbr-section-title display-2"><spring:message code="index.usersay.title" text="WHAT OUR FANTASTIC STUDENTS SAY"/></h3>
                        <small class="mbr-section-subtitle"><spring:message code="index.usersay.description" text="Students who have passed the Practice Test would like to comment on the Driving Instructor as"/></small>
                    </div>
                </div>
            </div>
        </div>


    <div class="mbr-testimonials mbr-section mbr-section-nopadding">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-lg-4">

                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="card-block"><p><spring:message code="index.usersay.one" text=" "/></p></div>
                        <div class="mbr-author card-footer">
                            <div class="mbr-author-img"><img src="assets/images/face1.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">Gavin Wang</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.one.s" text=" "/></small>
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-12 col-lg-4">

                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="card-block"><p><spring:message code="index.usersay.two" text=" "/></p></div>
                        <div class="mbr-author card-footer">
                            <div class="mbr-author-img"><img src="assets/images/face2.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">Jessica Li</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.two.s" text=" "/></small>
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-12 col-lg-4">

                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="card-block"><p><spring:message code="index.usersay.three" text=" "/></p></div>
                        <div class="mbr-author card-footer">
                            <div class="mbr-author-img"><img src="assets/images/face3.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">James Wong.</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.three.s" text=" "/></small>
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
                  <h3 class="mbr-section-title display-2"><spring:message code="index.price.title" text="PRICING TABLE"/></h3>
                  <small class="mbr-section-subtitle"><spring:message code="index.price.desc" text="We kindly provide reasonable prices for different kinds of Learners."/></small>
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
                        <h3 class="mbr-plan-title"><spring:message code="index.price.single" text="Single-Lesson"/></h3>
                        <small class="mbr-plan-subtitle"><spring:message code="index.price.single.desc" text="[90 minutes/Lesson]"/></small>
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
                        <h3 class="mbr-plan-title"><spring:message code="index.price.mfour" text="2-5 Lessons"/></h3>
                        <small class="mbr-plan-subtitle"><spring:message code="index.price.mfour.desc" text="[90 minutes/Lesson]"/></small>
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
                      <div class="mbr-plan-label"><spring:message code="index.price.hot" text="HOT!"/></div>
                      <div class="card-title">
                        <h3 class="mbr-plan-title"><spring:message code="index.price.msix" text="6+ Lessons"/></h3>
                        <small class="mbr-plan-subtitle"><spring:message code="index.price.msix.desc" text="[90 minutes/Lesson]"/></small>
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
                        <h3 class="mbr-plan-title"><spring:message code="index.price.test" text="Driving Test"/></h3>
                        <small class="mbr-plan-subtitle"><spring:message code="index.price.test.desc" text="[90 minutes/Lesson]"/></small>
                      </div>
                      <div class="card-text">
                          <div class="mbr-price">
                            <span class="mbr-price-value">$</span>
                            <span class="mbr-price-figure">150</span>
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
                    <h3 class="mbr-section-title display-2"><spring:message code="index.contact.title" text="CONTACT FORM"/></h3>
                    <small class="mbr-section-subtitle"><spring:message code="index.contact.desc" text="Please Fill Out This Form and We'll Call You Back."/></small>
                </div>
            </div>
        </div>
    </div>
    <div class="mbr-section mbr-section-nopadding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-lg-10 col-lg-offset-1" data-form-type="formoid">

                    <div data-form-alert="true">
                        <div hidden="" data-form-alert-success="true" class="alert alert-form alert-success text-xs-center"><spring:message code="index.contact.feedback" text="Thanks for filling out form!"/></div>
                    </div>

                    <form name="contactForm" action="" method="post" data-form-title="CONTACT FORM" >
                        <input type="hidden" value="bhmUJHz2F6/w+Cv5QyKySj3GoEsERGa0ojop1f2Uh4x3rO6SUHkXilk7zx5Z4MapjB591ABJs5XR5uKDHsDVjZ9bSKrRA/Zu86kWHNnoxfEU5xtnLAfJ2lNv+NWKL+ny" data-form-email="true">

                        <div class="row row-sm-offset">

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-name"><spring:message code="index.contact.name" text="Name"/><span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="text" class="form-control" name="name" required="" data-form-field="Name" id="form1-0-name">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-email"><spring:message code="index.contact.email" text="Email"/><span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="email" class="form-control" name="email" required="" data-form-field="Email" id="form1-0-email">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="form1-0-phone"><spring:message code="index.contact.phone" text="Phone"/><span class="form-asterisk" style="color:red"> * </span></label>
                                    <input type="tel" class="form-control" name="phone" required="" data-form-field="Phone" id="form1-0-phone">
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-12">
								<div class="form-group">
									<label class="form-control-label" for="form1-0-message"><spring:message code="index.contact.message" text="Message"/><span class="form-asterisk" style="color:red"> * </span></label>
									<textarea class="form-control" name="message" rows="7" data-form-field="Message" required="" id="form1-0-message"></textarea>
								</div>
                            </div>
                        </div>
						
						<label class="form-control-label" for="form1-0-phone" id="hintverify" style="color:red;display:none;"><spring:message code="index.contact.verify" text="Please verify your identity by clicking the following check box"/></label>
						<div id="html_element"></div>
						<br>
						<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer> </script>
                        <div><button class="btn btn-primary" id="btnsubmit" style="display:none;" data-sitekey="6LcAOBAUAAAAANiMbmDDWopoGd4UAkYr6QLpgzTh"  data-callback="submitMessage()" onclick="submitMessage()"><spring:message code="index.contact.submit" text="Submit"/></button></div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2" style="background-color: rgb(32, 32, 32); padding-top: 1.05rem; padding-bottom: 1.05rem;">
		    <div class="card-block">
		        <p class="text-xs-center">Copyright (c) 2017 pigeonbooking.com.au. All Rights Reserved. [Version:1.0.1]</p>
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