<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="ShareVideo"
			class="element-link"><fmt:message>button.share</fmt:message></a>
	</h4>
</div>


<div class="card col-md-8 mt-5 send-mail">
	<div class="card-header alert alert-success">
		<h2><fmt:message>share.title</fmt:message></h2>
	</div>
	<div class="card-body" style="margin: 0 40px;">
		<div class="row no-gutters">
				<div class="col">
					<jsp:include page="/common/notification.jsp"></jsp:include>
				</div>
			</div>
		<form action="ShareVideo" method="post">
		<input type="hidden" name="videoId" value="${videoId }"/>
			<div class="form-group">
				<label for="email">
					<h5><fmt:message>report.receiverEmail</fmt:message></h5>
				</label> 
				<textarea  name="email" id="email" cols="30" rows="10" class="form-control" class="form-control" placeholder="Emails"></textarea>
<!-- 				<input type="email" name="email" class="form-control" placeholder="Emails"> -->
			</div>
			<hr>
			<button type="submit" class="btn btn-success"><fmt:message>button.send</fmt:message></button>
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