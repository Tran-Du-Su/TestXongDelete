<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="ForgotPassword"
			class="element-link"><fmt:message>menu.forgot</fmt:message></a>
	</h4>
</div>

<div class="sign-up" id="sign-up">
	<div class="wrap">
		<div class="title ">
			<h2><fmt:message>menu.forgot</fmt:message></h2>
		</div>
		
		<div class="row no-gutters">
				<div class="col-md-9">
					<jsp:include page="/common/notification.jsp"></jsp:include>
				</div>
			</div>
		
		<form name="formDK" action="ForgotPassword"  method="post">
			<div class="form-group col-md-10">
				<label for="username"><fmt:message>form.username</fmt:message></label> <input type="text"
					class="form-control" id="username" name="username" placeholder="<fmt:message>form.username</fmt:message>" required="required">

			</div>
			<div class="form-group col-md-10">
				<label for="inputPassword4">Email</label> <input type="email"
					class="form-control" id="inputPassword4" name="email" placeholder="Email" required="required">
			</div>
			<br>
			<hr>

			<div class="group-btn">
				<button type="submit" class="btn btn-success btn-sign"><fmt:message>button.forgot</fmt:message></button>
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