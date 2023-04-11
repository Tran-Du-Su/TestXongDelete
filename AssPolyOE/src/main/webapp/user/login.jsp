<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="Login"
			class="element-link"><fmt:message>menu.login</fmt:message></a>
	</h4>
</div>

<!-- login-->
<div class="login" id="login">
	<div class="row wrap">
		<div class="col-lg-5 img-form">
			<img src="assets/images/bg-login.jpg" width="100%" height="540">
		</div>
		<div class="col-lg-7 main-form">
			<div class="title">
				<h2><fmt:message>menu.login</fmt:message></h2>
			</div>
			
			<div class="row no-gutters">
				<div class="col">
					<jsp:include page="/common/notification.jsp"></jsp:include>
				</div>
			</div>
			

			<form action="Login" name="formCheck" method="post" id="login-form">
				<div class="form-group">
					<label for="username"><fmt:message>form.username</fmt:message></label> <input type="text"
						class="form-control" id="username" name="username" placeholder="<fmt:message>form.username</fmt:message>" rules="required">
						<span class="form-message"></span>
				</div>
				<div class="form-group">
					<label for="password"><fmt:message>form.password</fmt:message></label> <input type="password"
						class="form-control" id="password" name="password" placeholder="<fmt:message>form.password</fmt:message>" rules="required">
						<span class="form-message"></span>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
					<label class="form-check-label" for="exampleCheck1">Remember
						me ?</label>
				</div>

				<hr style="background-color: #b82a39;">
				<button type="submit" class="btn btn-success btn-login"><fmt:message>button.login</fmt:message></button>
				<br>
				<br> <a href="ForgotPassword"><fmt:message>menu.forgot</fmt:message>?</a>
				<p>
					<fmt:message>Login.title</fmt:message> <a href="Resgister"><fmt:message>menu.register</fmt:message>!</a>
				</p>
			</form>
		</div>
	</div>
</div>

<div class="col-lg-8 start">
	<h2><fmt:message>start.title</fmt:message></h2>
	<form class="form-inline offset-lg-4">
		<input class="form-control col-lg-6" type="search" placeholder="Email">
		<button class="btn btn-outline-success my-2 my-sm-0">
			<i class="fa-solid fa-arrow-right-long"></i>
		</button>
	</form>
</div>

<script src="assets/js/validation.js"></script>
    <script>
        Validator('#login-form');
    </script>