<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<%-- <fmt:setLocale value="zh_CN" /> --%>
<fmt:setLocale value="${language}" /> 
<fmt:setBundle basename="message-i18n" />

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login page</title>
		<link href="<c:url value='/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
		<link href="<c:url value='/css/font-awesome.css' />" rel="stylesheet" />
	</head>
	
<body onload='document.loginForm.username.focus();'>

	<body>
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">

					<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p><fmt:message key="login.label.username.invalid" /></p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p><fmt:message key="login.label.username.logoutok" /></p>
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
								<input type="submit" class="btn btn-block btn-primary btn-default" value="Log in">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

</body>
</html>