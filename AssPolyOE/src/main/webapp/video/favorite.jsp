
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="Favorite"
			class="element-link"><fmt:message>menu.favotite</fmt:message></a>
	</h4>
</div>

<div class="row">
	<div class="col-md-11">
		<jsp:include page="/common/notification.jsp"></jsp:include>
	</div>
</div>

<div class="row favorite mt-3">
	<c:forEach var="item" items="${favoriteVideos }">
		<div class="col-md-3 favorite-col-video">
			<div class="card card-main">
				<div class="card-header card-header-main">
					<a href="DetailVideo"><img src="${item.poster }" alt=""></a>
				</div>
				<div class="card-body card-body-main">
					<h3>${item.title }</h3>
				</div>
				<div class="card-footer card-footer-detail">
					<button type="button" data-toggle="modal" data-target="#unlikeModal${item.videoId }"
						class="btn btn-danger"><fmt:message>button.unlike</fmt:message></button> <a
						href="ShareVideo?videoId=${item.videoId }"
						class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
				</div>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="unlikeModal${item.videoId }"
				data-backdrop="static" data-keyboard="false" tabindex="-1"
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
							<h4><fmt:message>message.unlike</fmt:message></h4>
						</div>
						<div class="modal-footer">
							<a href="UnlikeVideo?videoId=${item.videoId }"
								class="btn btn-danger"><fmt:message>button.unlike</fmt:message></a>
							<button type="button" class="btn btn-dark ml-4"
								data-dismiss="modal"><fmt:message>button.cancel</fmt:message></button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</c:forEach>
</div>


<!-- <div class="row mt-5"> -->
<!-- 	<nav aria-label="Page navigation example"> -->
<!-- 		<ul class="pagination"> -->
<!-- 			<li class="page-item btn btn-primary" -->
<!-- 				data-target="#carouselExampleIndicators" data-slide="prev" -->
<!-- 				aria-label="Previous"><a class="page-link"> <span -->
<!-- 					aria-hidden="true"><i class="fa-solid fa-backward"></i></span> -->
<!-- 			</a></li> -->
<!-- 			<li class="page-item btn btn-primary ml-3" -->
<!-- 				data-target="#carouselExampleIndicators" data-slide-to="0" -->
<!-- 				class="active"><a class="page-link">1</a></li> -->
<!-- 			<li class="page-item btn btn-primary ml-3" -->
<!-- 				data-target="#carouselExampleIndicators" data-slide-to="1"><a -->
<!-- 				class="page-link">2</a></li> -->
<!-- 			<li class="page-item btn btn-primary ml-3" -->
<!-- 				data-target="#carouselExampleIndicators" data-slide-to="2"><a -->
<!-- 				class="page-link">3</a></li> -->
<!-- 			<li class="page-item btn btn-primary ml-3" -->
<!-- 				data-target="#carouselExampleIndicators" data-slide="next" -->
<!-- 				aria-label="Next"><a class="page-link"> <span -->
<!-- 					aria-hidden="true"><i class="fa-solid fa-forward"></i></i></span> -->
<!-- 			</a></li> -->
<!-- 		</ul> -->
<!-- 	</nav> -->
<!-- </div> -->