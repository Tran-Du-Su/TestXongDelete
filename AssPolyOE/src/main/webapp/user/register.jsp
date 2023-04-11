<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="Resgister"
			class="element-link"><fmt:message>menu.register</fmt:message></a>
	</h4>
</div>

<div class="sign-up" id="sign-up">
	<div class="wrap wrap-sign-up col-md-8">
		<div class="title ">
			<h2><fmt:message>menu.register</fmt:message></h2>
		</div>
		<div class="row">
				<div class="col-md-10">
					<jsp:include page="/common/notification.jsp"></jsp:include>
				</div>
			</div>
		<form action="Resgister" method="post" class="formDK" id="register-form">
			<div class="form-group col-md-10">
				<label for="username"><fmt:message>form.username</fmt:message></label> <input type="text"
					class="form-control" name="usernameId" id="username" 
					value="${user.usernameId }" placeholder="<fmt:message>form.username</fmt:message>" rules="required">
					<span class="form-message"></span>
			</div>
			<div class="form-group col-md-10">
				<label for="inputPassword4"><fmt:message>form.password</fmt:message></label> <input type="password"
					class="form-control" name="password" id="inputPassword4"
					 placeholder="<fmt:message>form.password</fmt:message>" rules="required|min:6">
					<span class="form-message"></span>
			</div>

			<div class="form-group col-md-10">
				<label for="name"><fmt:message>form.fullname</fmt:message></label> <input type="text"
					class="form-control" name="fullname" id="name"
					value="${user.fullname }" placeholder="<fmt:message>form.fullname</fmt:message>" rules="required">
					<span class="form-message"></span>
			</div>

			<div class="form-group col-md-10">
				<label for="email">Email</label> <input type="email"
					class="form-control" name="email" id="email"
					value="${user.email }" placeholder="Email" rules="required|email">
					<span class="form-message"></span>
			</div>

<!-- 			<div class="form-group col-md-10"> -->
<!-- 				<label for="gender">Role</label> <select id="gender" -->
<!-- 					class="form-control" name="admin"> -->
<!-- 					<option value="true" selected>User</option> -->
<!-- 					<option value="false">Admin</option> -->
<!-- 				</select> -->
<!-- 			</div> -->

			<hr class="col-md-10">

			<div class="group-btn">
				<button type="submit"class="btn btn-success btn-sign"><fmt:message>button.register</fmt:message></button>
				<button type="reset" class="btn btn-danger btn-cancel"><fmt:message>button.cancel</fmt:message></button>
			</div>
		</form>
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
        Validator('#register-form');
    </script>