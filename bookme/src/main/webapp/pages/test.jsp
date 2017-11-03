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
  <title>维州路局 交规考试中文模拟题 墨尔本东南区 学车驾驶教练 刘教练0452382276 微信liu76xt 学以致用驾校</title>
  <meta name="title" content="维州路局 交规考试中文模拟题 墨尔本东南区 学车驾驶教练 刘教练0452382276 微信liu76xt 学以致用驾校"/>
  <meta name="description" content="维州路局 交规考试中文模拟题  墨尔本东南区 学车驾驶教练,普通话英语,资深DIA持牌教练；灵活的套餐计划,一对一的课程设置,授课覆盖Glen Waverley,Burwood East为中心20公里范围内门到门接送授课；精通 BurwoodEast路局,Heatherton路局等维州路考考点分析。Mount Waverley,Heatherton,Vermount South,Blackburn,Boxhill,Doncaster,Clayton,Oakleigh,Notting Hill,Wheelers Hill,Wantirna,Scoreby,Knoxfield,Chadstone,Mulgrave">
  <meta name="generator" content="维州路局 交规考试中文模拟题  墨尔本学以致用驾校 东南区学车 驾驶教练 普通话英语 资深DIA持牌教练 Glen Waverley,Burwood East,Mount Waverley,Heatherton,Vermount South,Blackburn,Boxhill,Doncaster,Clayton,Oakleigh,Notting Hill,Wheelers Hill,Wantirna,Scoreby,Knoxfield,Chadstone,Mulgrave">
  <meta name="keywords" content="维州路局 交规考试中文模拟题  墨尔本学以致用驾校 东南区学车 驾驶教练  精通 Burwood East路局  Heatherton路局 维州路考考点分析 路考经验积累"/>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/easyui.css"> 
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
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/w3.css">
  
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.min.js"></script>
  
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
      
      var number = 1;
      var id = -1;
      function loadRemote(){
          $.getJSON("<%=request.getContextPath()%>/randomqt?id="+id, function(result){
    	  	  id = result.id;
    	  	  loadForm(result);
          });
      }
      function loadForm(result){
    	  if(result.id == null){
    		  return;
    	  }
    	  clearForm();
    	  $('#number').html(number);
    	  $('#ctitle').html(result.ctitle);
    	  $('#coption0').html(result.coptions[0]);
    	  $('#coption1').html(result.coptions[1]);
    	  $('#coption2').html(result.coptions[2]);
    	  $('#answer').val(result.answer);
    	  $('#hinstruction').html("点评："+result.cinstruction);
    	  if(result.imgpath &&  (result.imgpath != "")){
        	  $("#testimg").attr("src","<%=request.getContextPath()%>/css/testimg/" + result.imgpath + ".jpg");
        	  $('#imgdiv').show();
    	  }else{
        	  $("#testimg").attr("src","");
        	  $('#imgdiv').hide();
    	  }
      }
      function clearForm(){
    	  $('#imgdiv').hide();
		  $('#hmust').hide();
		  $('#hresult').hide();
		  $('#hinstruction').hide();
          $('#qtfm').form('clear');
		  for(var i=0;i<3;i++){
	          $('#sopt'+i).html('');
		  }
      }
      function submitqt(){
    	  var chk = false;
		  $('#hmust').hide();
		  $("#qtfm input[type=radio]:checked").each(function() {
			  chk = true;
		  });
		  if(!chk){
			  $('#hmust').show();
			  return;
		  }

		  for(var i=0;i<3;i++){
        	  $('#sopt'+i).html('&nbsp;&nbsp;'); //incorrect
		  }
		  
		  var answer = $('#answer').val();
    	  if($("#option"+answer).is(':checked')){
    		  $('#hresult').html("结果：正确");
    		  $('#hresult').css('color', 'green');
    	  }else{
    		  for(var i=0;i<3;i++){
    			  if(answer == i) continue;
    			  if($("#option"+i).is(':checked')){
    	        	  $('#sopt'+i).html('&#10008;'); //incorrect
    	        	  $('#sopt'+i).css('color', "red");
    			  }
    		  }
    		  $('#hresult').html("结果：错误");
    		  $('#hresult').css('color', 'red');
    	  }
    	  
    	  $('#sopt'+answer).html('&#10004;'); //correct
    	  $('#sopt'+answer).css('color', "green");
		  $('#hresult').show();
		  $('#hinstruction').show();
      }
      function resetqt(){
           number = 1;
           id = -1;
           loadRemote();
      }
      function nextqt(){
    	  if(id != null){
    		  id = id+1;
              number ++;
        	  loadRemote();
    	  }
      }
      function resetfrom(){
    	  number = new Number($('#fromid').val());
    	  id = new Number($('#fromid').val());
          loadRemote();
     }

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
<body onload="loadRemote();">
<section id="menu-0">

    <nav class="navbar navbar-dropdown bg-color navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="#" class="navbar-logo"><img src="<%=request.getContextPath()%>/assets/images/logo.png" alt='学以致用驾校'></a>
                        <a class="navbar-caption" href="http://www.pigeonbooking.com.au/">
							<big class="mbr-price-term" style="color:red">L</big>学以致用驾校
						</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>

                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
						<li class="nav-item"><a class="nav-link link" href="http://pigeonbooking.com.au/#menu-1"><spring:message code="index.header.overview" text="OVERVIEW" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="http://pigeonbooking.com.au/#features3-d"><spring:message code="index.header.stages" text="BASIC STAGES" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="http://pigeonbooking.com.au/#pricing-table1-b"><spring:message code="index.header.price" text="PRICE" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="http://pigeonbooking.com.au/#form1-0"><spring:message code="index.header.contact" text="CONTACT" /></a></li>
						<li class="nav-item"><a class="nav-link link" href="http://pigeonbooking.com.au/#experience">路考分析</a></li>
						<li class="nav-item"><a class="nav-link link" href="#questions">交规模拟</a></li>
						<!--  
						<li class="nav-item nav-link btn">
							<a href="?language=en">English</a> <big style="color:white"> | </big> <a href="?language=zh_CN">中文</a>
						</li>
						-->
					</ul>
                    
					<button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>

</section>

<section class="mbr-section" id="questions" style="background-color: rgb(255, 255, 255); padding-top: 100px; padding-bottom: 20px;">
    <div class="mbr-section mbr-section-nopadding">
        <div class="container">
			<div class="w3-container w3-teal text-xs-center">
				<h4>维州交规考试 模拟练习题测试</h4>
				<small style="color:white;">真正的交规考试每次32题，答对25题即可通过</small>
			</div>
			<div class="w3-container">
			<form id="qtfm" method="post" novalidate style="margin:0;">
			<input type="hidden" name="answer" id="answer">
				
		  		<h6>第<label name="number" id="number"></label>题：<label name="ctitle" id="ctitle"></label></h6>
				<div class="w3-row w3-margin">
	                <div class="col-xs-12 col-md-6">
	                    <div class="mbr-testimonial card mbr-testimonial-md">
				      		<div class="w3-third" id="imgdiv" style="width:100%;height:100%;text-align:left;">
				        		<img id="testimg" src="" >
				      		</div>
	                    </div>
	                </div>
                
	                <div class="col-xs-12 col-md-6">
	                    <div class="mbr-testimonial card mbr-testimonial-md" style="text-align:left;">
					      	<div class="w3-third" style="padding-top:15px;padding-left:5px;width:100%;height:100%;">
					      	<p><span id="sopt0"></span>
					      	<input id="option0" class="w3-radio" type="radio" name="option" value="0">
					      	<label for="option0" class="w3-label" id="coption0"></label></p>
					
					      	<p><span id="sopt1"></span>
					      	<input id="option1" class="w3-radio" type="radio" name="option" value="1">
					      	<label for="option1" class="w3-label" id="coption1"></label></p>
					
					      	<p><span id="sopt2"></span>
					      	<input id="option2" class="w3-radio" type="radio" name="option" value="2">
					      	<label for="option2" class="w3-label" id="coption2"></label></p>
					      	</div>
	                    </div>
	                </div>
				</div>
			  	<h6 id="hmust" style="display:none; padding-left:5px; color:red;">请选择答案 </h6>
			  	<h6 id="hresult" style="display:none; padding-left:5px;"></h6>
			  	<h6 id="hinstruction" style="display:none; padding-left:5px;"></h6>
			<button class="w3-button w3-block w3-teal" onclick="submitqt();return false;" style="position:relative; z-index:99999;">提交>></button>
			</form>			

			<hr>
			<div class="w3-bar">
<!-- 			  <button class="w3-button w3-left w3-light-grey" onclick="resetqt();">&laquo; 重新开始</button>
 -->			  <button class="w3-button w3-left w3-light-grey">&laquo; 
			    从第 
			  	<select id="fromid" name="fromid" onchange="resetfrom();">
			  		<option value="1">1</option>
			  		<option value="20">20</option>
			  		<option value="40">40</option>
			  		<option value="60">60</option>
			  		<option value="80">80</option>
			  		<option value="100">100</option>
			  	</select>
			    开始
			  </button>
			  <button class="w3-button w3-right w3-green" onclick="nextqt();">后一题 &raquo;</button>
			</div>
            </div>
        </div>
    </div>
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
                            <h6 class="mbr-section-title display-6"><spring:message code="index.overview.phone" text="Phone:"/><a class="nav-link link" href="tel:0452382276">0452 382 276</a></h6>
                            <h6 class="mbr-section-title display-6">Wechat:<a class="nav-link link" href="#">liu76xt</a></h6>
                            <h6 class="mbr-section-title display-6"><spring:message code="index.overview.email" text="Email:"/><a class="nav-link link" href="mailto:liudrivingschool@gmail.com" target="_top">liudrivingschool@gmail.com</a></h6>

                            <div class="mbr-section-text lead">
                                <p><spring:message code="index.overview.introfirst" text="Welcome to Liu's Driving School, an independent driving instructor based on"/><p>
                                <p>Glen Waverley / Burwood East / Mount Waverley / Heatherton / Vermount South / Blackburn / Boxhill / Doncaster / Clayton / Oakleigh / Notting Hill / Wheelers Hill / Wantirna / Scoreby / Knoxfield / Chadstone / Mulgrave which is close to Burwood East and Heatherton VicRoads.<p>
								<p><spring:message code="index.overview.introthird" text="I am a fully qualified TSC approved driving instructor and offer individual tailored tuition to students of all ages and abilities on a one to one basis."/><p>
								<p><spring:message code="index.overview.introfourth" text="I hope you find the website useful, if you have any feedback, suggestions for the site or questions then please do not hesitate to"/> 
								<a class="nav-link link" href="#form1-0"> <spring:message code="index.overview.introfifth" text="Contact me"/> </a>
								</p>
                            </div>

                            <div class="mbr-section-btn"><a class="btn btn-primary" href="http://www.yeeyi.com/bbs/thread-3778794-1-1.html" target="_blank">维州路考经验</a></div>

                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating hidden-sm-down" aria-hidden="true"><a href="#features3-d"><i class="mbr-arrow-icon"></i></a></div>

</section>

<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2" style="background-color: rgb(32, 32, 32); padding-top: 1.05rem; padding-bottom: 1.05rem;">
		    <div class="card-block">
		        <p class="text-xs-center">Copyright (c) 2017 pigeonbooking.com.au. All Rights Reserved. [Version:1.0.2]</p>
		    </div>
</footer>


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