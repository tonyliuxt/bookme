<%@ page contentType="text/html;charset=UTF-8" %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>墨尔本东南区 学车驾驶教练 刘教练0452382276 微信liu76xt</title>
  <meta name="generator" content="墨尔本东南区 驾驶教练 学车教练 普通话英语 资深DIA持牌教练 Glen Waverley,Burwood East,Mount Waverley,Heatherton,Vermount South,Blackburn,Boxhill,Doncaster,Clayton,Oakleigh,Notting Hill,Wheelers Hill,Wantirna,Scoreby,Knoxfield,Chadstone,Mulgrave">
  <meta name="description" content="墨尔本东南区 驾驶教练,普通话英语, 资深DIA持牌教练, Glen Waverley,Burwood East,Mount Waverley,Vermount South,Blackburn,Boxhill,Doncaster,Clayton,Oakleigh,Notting Hill,Wheelers Hill,Wantirna,Scoreby,Knoxfield,Chadstone,Mulgrave.">
  <meta name="title" content="墨尔本东南区 驾驶教练 刘教练0452382276 微信liu76xt Glen Waverley"/>
  <meta name="keywords" content="墨尔本东南区 驾驶教练 学车教练 墨尔本驾驶培训 驾陪 Burwood East路局  Heatherton路局 墨尔本路考"/>

  <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/logo.png" type="image/x-icon">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/et-line-font-plugin/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/tether/tether.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/theme/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/mobirise/css/mbr-additional.css" type="text/css">
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
                        <a href="#" class="navbar-logo"><img src="<%=request.getContextPath()%>/assets/images/logo.png" alt='<fmt:message key="index.logo.name" />'></a>
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
						<li class="nav-item"><a class="nav-link link" href="#experience">路考分析</a></li>
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

<section id="menu-1" class="mbr-section mbr-section-hero mbr-section-full mbr-parallax-background mbr-after-navbar" id="header2-h" style="background-image: url(<%=request.getContextPath()%>/assets/images/landscape.jpg);">

    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 0);">
    </div>
    <div class="mbr-table mbr-table-full">
        <div class="mbr-table-cell"> 

            <div class="container">
                <div class="mbr-section row">
                    <div class="mbr-table-md-up">
                        
                        <div class="mbr-table-cell mbr-right-padding-md-up mbr-valign-top col-md-7">
                            <div class="mbr-figure" id="cover"><img src="<%=request.getContextPath()%>/assets/images/cover.png"></div>
                        
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
                            <h6 class="mbr-section-title display-6">Wechat:<a class="nav-link link" href="#">liu76xt</a></h6>
                            <h6 class="mbr-section-title display-6"><spring:message code="index.overview.email" text="Email:"/><a class="nav-link link" href="#form1-0">liudrivingschool@gmail.com</a></h6>

                            <div class="mbr-section-text lead">
                                <p><spring:message code="index.overview.introfirst" text="Welcome to Liu's Driving School, an independent driving instructor based on"/><p>
                                <p>Glen Waverley / Burwood East / Mount Waverley / Heatherton / Vermount South / Blackburn / Boxhill / Doncaster / Clayton / Oakleigh / Notting Hill / Wheelers Hill / Wantirna / Scoreby / Knoxfield / Chadstone / Mulgrave which is close to Burwood East and Heatherton VicRoads.<p>
								<p><spring:message code="index.overview.introthird" text="I am a fully qualified TSC approved driving instructor and offer individual tailored tuition to students of all ages and abilities on a one to one basis."/><p>
								<p><spring:message code="index.overview.introfourth" text="I hope you find the website useful, if you have any feedback, suggestions for the site or questions then please do not hesitate to"/> 
								<a class="nav-link link" href="#form1-0"> <spring:message code="index.overview.introfifth" text="Contact me"/> </a>
								</p>
                            </div>

                            <div class="mbr-section-btn"><a class="btn btn-primary" href="http://www.yeeyi.com/bbs/thread-3778794-1-1.html" target="_blank">路考经验积累</a></div>

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
                  <div class="card-img"><img src="<%=request.getContextPath()%>/assets/images/stage1.jpg" class="card-img-top"></div>
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
                    <div class="card-img"><img src="<%=request.getContextPath()%>/assets/images/stage2.jpg" class="card-img-top"></div>
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
                    <div class="card-img"><img src="<%=request.getContextPath()%>/assets/images/stage3.jpg" class="card-img-top"></div>
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
                    <div class="card-img"><img src="<%=request.getContextPath()%>/assets/images/stage4.jpg" class="card-img-top"></div>
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

<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background" id="header2-4" style="background-image: url(<%=request.getContextPath()%>/assets/images/jumbotron.jpg); padding-top: 60px; padding-bottom: 60px;">
     <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(0, 0, 0);">
     </div>
     
        <div class="mbr-section mbr-section__container mbr-section__container--middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-xs-center">
                        <h3 class="mbr-section-title display-2"><spring:message code="index.usersay.title" text="WHAT OUR FANTASTIC STUDENTS SAY"/></h3>
                        <small class="mbr-section-subtitle" style="color:white;"><spring:message code="index.usersay.description" text="Students who have passed the Practice Test would like to comment on the Driving Instructor as"/></small>
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
                            <div class="mbr-author-img"><img src="<%=request.getContextPath()%>/assets/images/face1.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">Gavin Wang</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.one.s" text=" "/></small>
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-12 col-lg-4">

                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="card-block"><p><spring:message code="index.usersay.two" text=" "/></p></div>
                        <div class="mbr-author card-footer">
                            <div class="mbr-author-img"><img src="<%=request.getContextPath()%>/assets/images/face2.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">Jessica Li</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.two.s" text=" "/></small>
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-12 col-lg-4">

                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="card-block"><p><spring:message code="index.usersay.three" text=" "/></p></div>
                        <div class="mbr-author card-footer">
                            <div class="mbr-author-img"><img src="<%=request.getContextPath()%>/assets/images/face3.jpg" class="img-circle"></div>
                            <div class="mbr-author-name">James Wong.</div>
                            <small class="mbr-author-desc"><spring:message code="index.usersay.three.s" text=" "/></small>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>


<section class="mbr-section" id="pricing-table1-b" style="background-color: rgb(48, 48, 48); padding-top: 80px; padding-bottom: 60px;">

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
                            <span class="mbr-price-figure">80</span>
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
                            <span class="mbr-price-figure">75</span>
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
                        <small class="mbr-plan-subtitle"><spring:message code="index.price.test.desc" text="[50 minutes/Lesson]"/></small>
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

<section class="mbr-section" id="form1-0" style="background-color: rgb(255, 255, 255); padding-top: 60px; padding-bottom: 60px;">
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


<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background" id="experience" style="background-image: url(<%=request.getContextPath()%>/assets/images/experience2.jpg); padding-top: 60px; padding-bottom: 60px;">
     <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 0);">
     </div>
     
        <div class="mbr-section mbr-section__container mbr-section__container--middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-xs-center">
                        <h3 class="mbr-section-title display-2">路局考试考点分析和经验积累</h3>
                        <small class="mbr-section-subtitle" style="color:white;">人生就像一次驾车旅行，为了安全到达目的地，我们需要掌握合适的学习技巧。</small>
                    </div>
                </div>
            </div>
        </div>


    <div class="mbr-testimonials mbr-section mbr-section-nopadding">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> 路局考试车辆检查考试内容 </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							路考报到后【报到的材料参考本帖后面附录】，考生到车内，系好安全带，钥匙通电，两边车窗玻璃放下来，等待考官：
							</Br>1. Indicator/Signal Left & Right / off【左/右转向灯/关灯】
							</Br>2. High/Low beam / Head Light/ High Light / High beam off【远/近光灯，大灯/关闭远光灯】
							</Br>3. Hazard light【应急灯/双跳等】-- Keep hazard light
							</Br>4. Wind Screen Wipers/Wipers with Water 【雨刮器 - 需要喷水刷一下】
							</Br>然后考官绕到车的后面
							</Br>5. Indicator/Signal left, Indicator/Signal Right / Off【左右转向灯/关灯】
							</Br>6. Hazard light off 【关闭应急灯】
							</Br>7. Brake/Foot on Brake【刹车灯】
							</Br>然后考官进入车内
							</Br>8. Front/Rear Demister【前后除雾器，通常给考官指一下就可以】
							</Br>9. Air-conditioner【空调--根据天气情况确定是否使用，建议雨天的时候打开到一档除雾】
							</Br>10. Handbrake【手刹位置，指一下给考官看】
							</Br>11. Horn【喇叭，要按下响一下喇叭】
							</Br>
							</Br>车内检查的内容就是这些，不同的考官以上顺序可能略有不同。 注意事项：
							</Br>a.考试期间需要保持大灯开启-Keep Low Beam
							</Br>b.如果是教练车需要测试副驾驶位置的刹车和油门踏板的警报声
							</Br>c.考试期间考生不能和教练有语言交流，不明白的可以和考官确认
							</Br>如果没有问题，考官就会说：如果你觉得可以我们就出发了，进入路考的第一阶段。	
							</Br>附录：路考报到携带的资料【请提前5分钟到柜台报到】：
							</Br>1. 如果有Learner Permit驾照的，带上Learner驾照和Hazard Perception考试结果即可；
							</Br>2. 如果持有海外驾照，则需携带海外驾照原件/附页 以及对应的翻译件，护照/住址证明/Hazard Perception考试结果；
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> 路局考试直接Fail项和Critical Error </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							路考只是一次考试，一次通过率比较低，考生首先要关注的是行车安全，以下是平常考试的时候遇到比较多的情况：
							</Br>1.Lane Change的时候没有headcheck，或者虽然做了headcheck但是不具备安全条件的情况下强行变道；
							</Br>2.倒车或者车辆转弯的时候轮子压到马路牙子Kerb上，如果是两个轮子压上则Immediately Fail；
							</Br>3.Stop标致【实线】的地方车没有停住，如果导致危险情况则Immediately Fail 否则critical error；
							</Br>4.Bus stop的地方遇到bus indicate right的时候没有give way则Immediately Fail;
							</Br>5.Lane change的时候headcheck时间太长导致 行驶方向偏离车道；
							</Br>6.超速4公里以上【Immediately Fail】；
							</Br>7.超速低于4公里，持续3-5秒以上【Immediately Fail】
							</Br>8.ShoolZone或者SchoolTime的时候速度超过40【Immediately Fail】
							</Br>9.刹车/减速前不看后视镜【如果一点都不看则Immediately Fail】；
							</Br>10.辅路进主路的【左右转】时候fail give way给右侧【或主路】上的车辆，通常是速度和距离综合判断不准确；
							</Br>
							</Br>续考试Immediately fail项汇总，并持续更新：
							</Br>a.Too slow, 开车速度全程低于限速10km以上，比如默认50的路，总是开的不到40，甚至不到30，限速80的路开的不到70；
							</Br>b.Don't Check mirrors at all. 基本不看镜子，中镜或者两个后视镜， 特别是减速，停车或者过黄灯的时候不看镜；
							</Br>c.该减速的时候不减速，甚至加速。
							</Br>  --比如行驶到斑马线的时候看到有闯红灯的行人不减速，Drive way有倒车出来的不减速，进入环岛的时候左侧有车fail give way的时候不减速。
							</Br>  --这些情况从法定交规上来说应该是其它车辆或者行人的优先权低于正常的行驶车辆，但为了避免事故发生还是应该slow down后观察安全后通过。
							</Br>  --如果没有做减速操作，通常是Immediately fail。
							</Br>
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> 如何拿到属于自己的驾照 </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							维州路局GLS【驾照获取体系】对于年龄的要求：
							</Br>1.L牌，必须年满16周岁；通过交规理论考试后获取L牌；
							</Br>	--不满21周岁的，持L牌至少一年才能申请红P；
							</Br>	--21-24周岁的，持L牌至少6个月才能申请红P；
							</Br>	--25周岁以上的，持L牌至少3个月才能申请红P；
							</Br>	--L牌申请红P【P1】的，必须具有至少120小时的驾驶logbook，并且至少包括10小时的晚间驾驶记录
							</Br>	--L牌不能独立驾驶，必须有full牌的人在副驾驶位置陪伴；
							</Br>2.红P【P1】，必须年满18周岁；红P最少持有1年才能申请P2【绿P】；
							</Br>3.绿P【P2】，必须年满19周岁，最少持有3年才能申请full牌；
							</Br>另外在获取full牌之前，所有以上驾驶者必须：
							</Br>1. 在车辆的前后明显位置摆放对应的标志牌；
							</Br>2. 酒精检测BAC为0；
							</Br>3. 不允许使用手机；
							</Br>以上是GLS对于年龄的要求，基于如下的一些 惊人的数据：
							</Br>1. 每年维州有90人死于交通事故，超过1800人在交通事故中受伤严重，这些事故中大多数司机年龄在18-25岁的花季年龄；
							</Br>2. P牌的独立驾驶者的事故率是 full牌的3倍；
							</Br>3. 交通事故导致的年轻人死亡数目超过其它任何原因；
							</Br>
							</Br>今天有一学员问道国内驾照换维州驾照的问题，于是查了一下 <a href="https://www.vicroads.vic.gov.au/licences/renew-replace-or-update/new-to-victoria/overseas-drivers" target="_blank">维州路局官网换维州驾照</a> ，具体翻译如下：
							</Br>中国驾照换维州驾照的条件和步骤：
							</Br>1. 年满18周岁【不是21周岁哦】
							</Br>2. 你的ID，比如passport【国内户口簿不行啊】
							</Br>3. 居住在维州【就是说要有居住证明，比如bankstatement或者水电账单上有你的名字与passport上要一致
							</Br>4. 填写一个换驾照的申请表【路局都有】也可以点击<a href="https://www.vicroads.vic.gov.au/~/media/files/formsandpublications/licences/licence_or_learner_permit_application.ashx" target="_blank"> 申请表下载</a>自己打印
							</Br>5. 驾照必须和其对应的翻译件一起提供给路局【注意翻译件必须是有资质的NATTI翻译，自己翻译/国内公证翻译件无效】
							</Br>6. 驾照和翻译件有可能交给相关部门验证【通常99.99%都不会的，人家默认你是守法滴】
							</Br>7. 通过维州路局的交规考试、危险察觉考试、路考
							</Br>8. 如果持有海外驾照超过三年，通过路考后可以直接拿full license
							</Br>
							</Br>今天碰到一个学员咨询香港驾照换维州驾照的问题，特意查了一下维州路局官网：
							</Br>简单说明一下，维州路局是 有条件的接受 香港驾照的， 即如果：
							</Br>1. 年龄在25岁及以上
							</Br>2. 持有驾照12个月及以上
							</Br>即可直接换维州驾照， 如果不满足上面两个条件的任何一个，则需要参加路考Drive Test【不需要参加理论和危险察觉考试】
							</Br>
							</Br>还是那句话： 我们开车的唯一目的是安全到达目的地，在路上的每一秒都要像新手一样注意力高度集中，
							</Br>对于年轻人学车，多开多练习，将好的驾驶行为养成习惯是安全保障的第一步。
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> Burwood East路局考点分析 </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							Burwood East路局大家都懂得，考官人好，路况相对简单，地理位置优越，所以报考人多周期长，以下是几个典型考点请参考：
							</Br>A.考官的指令为左转进左道，而进入到左道在前方两百米结束，考生需要自己完成变道动作，两个典型的路口是
							</Br>1.BlackBurn Road左转进入Burwood HWY
							</Br> <img src="<%=request.getContextPath()%>/assets/images/BlackBurnRoad_TurnInto_BurwoodHWY.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>2.SpringVale Road左转进入Burwood HWY
							</Br> <img src="<%=request.getContextPath()%>/assets/images/SpringRoad_TurnInto_BurwoodHWY.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
							</Br>B.下坡路的时候变道，很多同学是fail在这个地方变道超速
							</Br>1. BlackBurn Road过 BurwoodHWY后，下坡变道
							</Br>2. BlackBurn Road 右转进 Canterbury Road后第一个下坡变道
							</Br>3. Canterbury Road 右转进 springvale road后小坡变道
							</Br>4. SpringValeroad过 high bury前，后变道--实实在在的大坡啊
							</Br>5. High buryroad 准备右拐进 springvaleroad的时候，下坡无指令变道。
							</Br>
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> Heatherton路局考点分析 </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							Heatherton路局，中规中矩，考官比较严肃，周边有厂区，以下是几个典型考点请参考：
							</Br>1. Heatherton路局内 是shared zone,全程限速10km，注意哦，有的人就是绕路局开一圈就fail回去的，因为在路局里面开超过20km，很容易超速哦。
							</Br> <img src="<%=request.getContextPath()%>/assets/images/Heatherton-10limit.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
							</Br>2.Kingston Rd 双向四车道，且大部分路段都是只有一条中线，从西往东限速从60提高为70，或者反向从东往西行驶限速从70将为60，路没有变只是限速牌的变化，是一个大坑
							</Br> <img src="<%=request.getContextPath()%>/assets/images/Heatherton70.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
							</Br>3. 弯道处让你右拐到一条小路，容易错过路口，并且右拐的时候不能压到Island上【三次没有按考官的指令行驶是immediately fail】
							</Br> <img src="<%=request.getContextPath()%>/assets/images/Heatherton-rightturn.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
							</Br>4. Warrigal road turn left into Cochranes road厂区限速60，限速牌在路口处，没有中线的两车道【如果你一直开低于50，则critical error，考官再找一个ce就fail了】
							</Br> <img src="<%=request.getContextPath()%>/assets/images/Heatherton-60.PNG" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

   <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> 关于国内的老司机驾驶问题 </small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							最近带的国内过来的老司机比较多（10年以上的老司机3个），常见的问题有如下几个：
							</Br>1. 【刹车前不看后视镜】，最大的安全隐患是路口黄灯急刹被追尾；
							</Br>
							</Br>2. 【压（左侧）线行驶】不能保持着车道内，这个可能和国内的左舵驾驶有关，需要通过标线不间断的调整，否则轻则被嘀，还有可能发生碰擦；
							</Br>
							</Br>3. 【不熟悉交规】比如问道是否能借用bike lane，Bus lane？T2，T3是什么意思，U-turn要give way给那些车，回答的真实五花八门。于是严肃要求他们回去看路局的<a href="https://www.vicroads.vic.gov.au/safety-and-road-rules/road-rules" target="_blank">交规资料</a>
							</Br>
							</Br>4. 【不看盲点】通常什么情况下需要head check也就是看盲点？要看盲点一个重要的原因，就是【澳洲这边默认的是车让人，车让自行车】
							</Br>    ----1. 变道【changing lanes】
							</Br>    ----2. 车辆起步【pull out from kerb】
							</Br>    ----3. 转向【turning】
							</Br>    ----4. 借道行驶【 temporarily entering a bicycle or bus lane】 
							</Br>    ----5. 离开/进入车辆【getting into/out of car】
							</Br>    ----6. 还有一个【倒车，倒车，倒车】重要的事情说三遍，倒车要Headcheck 左右和中间三个地方； 
							</Br> <img src="<%=request.getContextPath()%>/assets/images/headcheck.gif" style="padding-left:40px; width:70%;height:auto;max-width: 70%；"> 
							</Br>
							</Br>5. 【见到路口就减速，见到车辆就减速】，可能是国内的习惯把。比如带一个老司机进环岛，左边有车要进环岛他也赶忙停下，其右侧没有车辆，这时候减速甚至停车就可能被候车追尾。
							</Br>
							</Br>6. 【不敢过黄灯】高速的情况下，70-80时速，满速行驶，注意不是起步速度或者低于50时速，原则就是【能过就过，能停就停】
							</Br>   ----维州的黄灯一般都是5秒的时间，时速80的时候5秒钟能跑多远，黄灯的时候一个路口正常还能通过多少车辆，有多少本地的司机在黄灯的时候甚至是提速通过，如果你一个急刹停住了，而你的后车没有这个意识那根本是停不下来的。
							</Br>
							
						</p>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>


   <div class="mbr-testimonials mbr-section mbr-section-nopadding" style="padding-top:20px;">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-md-12">
                    <div class="mbr-testimonial card mbr-testimonial-lg">
                        <div class="mbr-author card-header">
                            <small class="mbr-author-name"> 关于City里面的HOOK TURN</small>
                        </div>
                        <div style="background-color: #eeffee;text-align:left;">
                        <p class="card-text" style="padding-left:20px; padding-bottom:20px;"></Br>
							这个还真不知道中文怎么说，因为国内貌似没有这个名称，虽然有这个动作【意思就是 从左道右转】
							</Br>窃以为在city狭小的空间内，特别是有tramway的地方无法实现单独的右转车道，又不能因为右转不了阻碍直行车，所以才想出这么个点子。好了，进入正题：
							</Br>在city行驶的时候如果看到了上面那个牌子，而你恰好又要右转，那么动作要领就是：
							</Br>1. 靠左道行驶【merge into left lane】【两条且必须是两条车道】
							</Br>2. 打右灯【indicator right】
							</Br>3. 在本车道的交通信号灯为绿灯的时候继续前行一直到标记处【或者没有标记，则到合理的最远处】【注意车辆必须不能压在人行横道上】
							</Br>4. 等待，一直到你要右拐进入到车道的交通信号灯变位绿灯，然后启动完成右转。
							</Br>以上四步是理论也是维州路局官网上关于hookturn的定义，但有一点就是第4步的时候车辆启动前必须做headcheck也就是看盲点的动作，这个动作是避免因为直行车辆因为行驶速度，或者黄灯通过的原因导致该车道交通信号红灯的时候车辆依然没有通过路口，此时如果没有看盲点直接右转会导致fail give way，甚至碰擦导致考试直接失败。
							</Br>
							</Br>这个动作通常出现在city，目前还没有在city之外发现这个怪物，喏就是这个图片：
							</Br> 
							<img src="<%=request.getContextPath()%>/assets/images/220px-Hook_Turn_Sign_Melbourne.jpg" style="padding-left:40px; width:40%;height:auto;max-width: 40%；"> 
							<img src="<%=request.getContextPath()%>/assets/images/HookTurn.jpg" style="padding-left:20px; width:50%;height:auto;max-width: 50%；"> 
							</Br>
							
						</p>
						</div>
                    </div>
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


  <script src="<%=request.getContextPath()%>/assets/web/<%=request.getContextPath()%>/assets/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/tether/tether.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="<%=request.getContextPath()%>/assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="<%=request.getContextPath()%>/assets/jarallax/jarallax.js"></script>
  <script src="<%=request.getContextPath()%>/assets/dropdown/js/script.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="<%=request.getContextPath()%>/assets/theme/js/script.js"></script>
  <script src="<%=request.getContextPath()%>/assets/formoid/formoid.min.js"></script>
  
  
  <input name="animation" type="hidden">
   <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon"></i></a></div>
  </body>
</html>