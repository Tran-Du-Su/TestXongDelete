<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="DetailVideo"
			class="element-link"><fmt:message>video.detail</fmt:message></a>
	</h4>
</div>
<div class="row detail-content">
	<div class="col-md-6 detail-content-main">
		<div class="card card-main">
			<div class="card-header card-header-main">
				<iframe width="100%" height="350"
					src="https://www.youtube.com/embed/668nUCeBHyY"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<h3 style="margin: 10px; color: #b82a39; font-weight: 600;">Nature
					Beautiful</h3>
			</div>
			<div class="card-body"
				style="margin: 0; border-bottom: 1px #cac6c7 solid;">
				<h3><fmt:message>video.description</fmt:message></h3>
				<p>
					<fmt:message>video.source</fmt:message>: <a href="https://www.youtube.com/watch?v=668nUCeBHyY">https://www.youtube.com/watch?v=668nUCeBHyY</a>
				</p>
			</div>
			<div class="card-footer card-footer-detail">
				<a href="LikeVideo?videoId=VD01" class="btn btn-success"><fmt:message>button.like</fmt:message></a> 
				<a href="ShareVideo?videoId=VD01" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
			</div>
		</div>
	</div>

	<div class="col-md-4 detail-content-extra">
		<div class="card card-horizontal card-horizontal mb-3"
			style="max-width: 540px;">
			<div class="row">
				<div class="col-md-5 img-extra">
					<a href="DetailVideo"><img src="assets/images/posster4.jpg" alt="..."></a>
				</div>
				<div class="col-md-7">
					<div class="card-body card-body-extra">
						<h5 class="card-title">My Trip</h5>
						<p>Lastly, if you’re building our JavaScript from source, it
							requires.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="card card-horizontal mb-3" style="max-width: 540px;">
			<div class="row">
				<div class="col-md-5 img-extra">
					<a href="DetailVideo"><img src="assets/images/posh1.jpg" alt="..."></a>
				</div>
				<div class="col-md-7">
					<div class="card-body card-body-extra">
						<h5 class="card-title">Mesmerize</h5>
						<p>Carousels don’t automatically normalize slide dimensions.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="card card-horizontal mb-3" style="max-width: 540px;">
			<div class="row">
				<div class="col-md-5 img-extra">
					<a href="DetailVideo"><img src="assets/images/posh2.jpg" alt="..."></a>
				</div>
				<div class="col-md-7">
					<div class="card-body card-body-extra">
						<h5 class="card-title">Star War</h5>
						<p>While carousels support previous/next controls and
							indicators.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="card card-horizontal mb-3" style="max-width: 540px;">
			<div class="row">
				<div class="col-md-5 img-extra">
					<a href="DetailVideo"><img src="assets/images/posster1.jpg" alt="..."></a>
				</div>
				<div class="col-md-7">
					<div class="card-body card-body-extra">
						<h5 class="card-title">The Secret</h5>
						<p>It works with a series of images, text, or custom markup.</p>
					</div>
				</div>
			</div>
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