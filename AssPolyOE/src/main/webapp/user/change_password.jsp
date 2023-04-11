<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="ChangePassword"
			class="element-link"><fmt:message>menu.change</fmt:message></a>
	</h4>
</div>

<div class="sign-up" id="sign-up">
	<div class="wrap">
		<div class="title ">
			<h2><fmt:message>menu.change</fmt:message></h2>
		</div>
		
		<div class="row">
				<div class="col-md-11">
					<jsp:include page="/common/notification.jsp"></jsp:include>
				</div>
		</div>
		
		<form name="formDK" action="ChangePassword" method="post" id="changePassword-form">
			<div class="row">
				<div class="form-group col-md-6">
					<label for="username"><fmt:message>form.username</fmt:message></label> <input type="text"
						class="form-control" id="username" placeholder="<fmt:message>form.username</fmt:message>" 
						name="username" value="${username }" readonly="readonly">

				</div>
				<div class="form-group col-md-6">
					<label for="password"><fmt:message>form.currentPass</fmt:message></label> <input type="password"
						class="form-control" id="password" placeholder="<fmt:message>form.currentPass</fmt:message>" 
						name="currentPassword" rules="required">
						<span class="form-message"></span>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-6">
					<label for="NewPasssword"><fmt:message>form.newPass</fmt:message></label> <input
						type="password" class="form-control" id="NewPasssword"
						placeholder="<fmt:message>form.newPass</fmt:message>" name="password" rules="required|min:6">
						<span class="form-message"></span>
				</div>
				<div class="form-group col-md-6">
					<label for="confirmPass"><fmt:message>form.confirmPass</fmt:message></label> <input
						type="password" class="form-control" id="confirmPass"
						placeholder="<fmt:message>form.confirmPass</fmt:message>" name="confirmPassword" rules="required">
						<span class="form-message"></span>
				</div>
			</div>
			<hr>

			<div class="group-btn">
				<button type="submit" class="btn btn-success btn-sign"><fmt:message>button.change</fmt:message></button>
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
        Validator('#changePassword-form');
    </script>