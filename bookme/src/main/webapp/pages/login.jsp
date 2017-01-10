<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<%-- <fmt:setLocale value="zh_CN" /> --%>
<fmt:setLocale value="${language}" /> 
<fmt:setBundle basename="messages" />

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login page</title>
		<link href="<c:url value='/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
		<link href="<c:url value='/css/font-awesome.css' />" rel="stylesheet" />
		<script src="assets/web/assets/jquery/jquery.min.js"></script>
		
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
	</head>
	
<script type="text/javascript">
		
	    var onloadCallback = function() {
	        grecaptcha.render('html_element', {
	          'sitekey' : '6LcAOBAUAAAAANiMbmDDWopoGd4UAkYr6QLpgzTh',
			  'callback' : verifyCallback,
			  'expired-callback' : expiredCallback,
			  'hl':'${pageContext.response.locale}'
	        });
	      };
	  	var expiredCallback = function(response) {
			$('#btnsubmit').hide();
	    };
	  	var verifyCallback = function(response) {
			if(response != null && response != ''){
				$('#btnsubmit').show();
			}else{
				$('#btnsubmit').hide();
			}
	    };
</script>
<body onload='document.loginForm.username.focus();'>

	<body>
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">

					<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>
									<spring:message code="index.header.invalid" text="Username or password is invalid." />
									</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>
									<spring:message code="index.header.logoutok" text="Successfully logout." />
									</p>
								</div>
							</c:if>
 
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit" id="btnsubmit" style="display:none;" class="btn btn-block btn-primary btn-default" value="Log in">
							</div>
							<div id="html_element"></div>
							<br>
							<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer> </script>
						</form>
					</div>
				</div>
			</div>
		</div>

</body>
</html>