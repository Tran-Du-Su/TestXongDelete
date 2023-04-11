<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="EditProfile"
			class="element-link"><fmt:message>menu.edit</fmt:message></a>
	</h4>
</div>
<div class="row">
	<h2 class="text-center"
		style="color: #b82a39; font-weight: 700; font-size: 35px;"><fmt:message>menu.edit</fmt:message></h2>
</div>
<div class="row edit">
	<div class="img-info col-md-3">
		<img src="assets/images/imageUpdate.png">
		<h2>${user.fullname }</h2>
	</div>

	<div class="col-md-9">
		<div class="row no-gutters">
			<div class="col">
				<jsp:include page="/common/notification.jsp"></jsp:include>
			</div>
		</div>
		<form action="EditProfile" method="post" id="editProfile-form">
			<div class="form-group">
				<label for="username"><fmt:message>form.username</fmt:message></label> <input type="text"
					class="form-control" id="username" name="usernameId"
					value="${user.usernameId }" readonly="readonly">
					
			</div>
			<div class="form-group">
				<label for="Password"><fmt:message>form.password</fmt:message></label> <input type="password"
					class="form-control" id="Password" name="password" rules="required|min:6">
					<span class="form-message"></span>
			</div>
			<div class="form-group">
				<label for="Fullname"><fmt:message>form.fullname</fmt:message></label> <input type="text"
					class="form-control" id="Fullname" name="fullname"
					value="${user.fullname }" rules="required">
					<span class="form-message"></span>
			</div>
			<div class="form-group">
				<label for="Email">Email</label> <input type="email"
					class="form-control" id="Email" name="email" value="${user.email }" rules="required|email">
					<span class="form-message"></span>
			</div>
			<hr style="height: 2px; background-color: #b82a39;">
			<div class="">
				<button type="button" data-toggle="modal" data-target="#UpdateProfile"
					class="btn btn-success col-md-2"><fmt:message>button.update</fmt:message></button>
				<button type="reset" class="btn btn-danger col-md-2 ml-3"><fmt:message>button.cancel</fmt:message></button>
			</div>

			<!-- Modal updateVideo post-->
			<div class="modal fade" id="UpdateProfile" data-backdrop="static"
				data-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="staticBackdropLabel">
								<i class="fa-solid fa-bell"></i> <fmt:message>menu.message</fmt:message>
							</h4>
							<button type="button" class="close" data-dismiss="modal">
								<span class="icon-close"><i class="fa-solid fa-xmark"></i></span>
							</button>
						</div>
						<div class="modal-body text-center">
							<h4><fmt:message>message.updatePF</fmt:message></h4>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-success ml-3"><fmt:message>button.update</fmt:message></button>
							<a class="btn btn-dark ml-4" data-dismiss="modal"><fmt:message>button.cancel</fmt:message></a>
						</div>
					</div>
				</div>
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
        Validator('#editProfile-form');
    </script>