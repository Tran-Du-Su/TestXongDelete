<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="ListVideo"
			class="element-link">Videos</a>
	</h4>
</div>

<div class="row">
	<div class="col-md-11">
		<jsp:include page="/common/notification.jsp"></jsp:include>
	</div>
</div>


<div id="carouselExampleIndicators" class="carousel slide"
	data-ride="carousel">
	<div class="carousel-inner">
		<div class="carousel-item active">
			<!-- slide 1 -->
			<div class="row favotite">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[0].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[0].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[0].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[0].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[1].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[1].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[1].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[1].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[2].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[2].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[2].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[2].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>

			<!-- row 2 -->
			<div class="row favotite mt-5">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[3].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[3].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[3].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[3].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[4].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[4].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[4].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[4].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[5].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[5].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[5].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[5].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- slide 2 -->
		<div class="carousel-item">
			<div class="row favotite">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[6].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[6].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[6].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[6].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[7].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[7].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[7].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[7].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[8].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[8].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[8].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[8].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>

			<!-- row 2 -->
			<div class="row favotite mt-5">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[9].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[9].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[9].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[9].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[10].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[10].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[10].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[10].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[11].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[11].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[11].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[11].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- slide 3 -->
		<div class="carousel-item">
			<div class="row favotite">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[12].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[12].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[12].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[12].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[13].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[13].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[13].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[13].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[14].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[14].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[14].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[14].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>

			<!-- row 2 -->
			<div class="row favotite mt-5">
				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[15].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[15].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[15].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[15].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[16].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[16].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[16].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[16].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 favorite-col">
					<div class="card card-main">
						<div class="card-header card-header-main">
							<a href="DetailVideo"><img src="${videosPage[17].poster }"
								alt=""></a>
						</div>
						<div class="card-body card-body-main">
							<h3>${videosPage[17].title }</h3>
						</div>
						<div class="card-footer">
							<a href="LikeVideo?videoId=${videosPage[17].videoId }"
								class="btn btn-success"><fmt:message>button.like</fmt:message></a> <a
								href="ShareVideo?videoId=${videosPage[17].videoId }"
								class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>


<div class="row mt-5">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item btn btn-primary"
				data-target="#carouselExampleIndicators" data-slide="prev"
				aria-label="Previous"><a class="page-link"> <span
					aria-hidden="true"><i class="fa-solid fa-backward"></i></span>
			</a></li>
			<li class="page-item btn btn-primary ml-3"
				data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"><a class="page-link">1</a></li>
			<li class="page-item btn btn-primary ml-3"
				data-target="#carouselExampleIndicators" data-slide-to="1"><a
				class="page-link">2</a></li>
			<li class="page-item btn btn-primary ml-3"
				data-target="#carouselExampleIndicators" data-slide-to="2"><a
				class="page-link">3</a></li>
			<li class="page-item btn btn-primary ml-3"
				data-target="#carouselExampleIndicators" data-slide="next"
				aria-label="Next"><a class="page-link"> <span
					aria-hidden="true"><i class="fa-solid fa-forward"></i></i></span>
			</a></li>
		</ul>
	</nav>
</div>

