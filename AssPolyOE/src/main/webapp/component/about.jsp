<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

            <!-- about us -->
            <div class="detail-title">
                <h4><a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="About" class="element-link"><fmt:message>menu.about</fmt:message></a></h4>
            </div>
            
            <!-- about us -->
            <div class="about">
                <div class="row">
                    <h2 class="title-h2"><fmt:message>menu.about</fmt:message></h2>
                </div>
                <div class="col-md-11 about-main">
                    <div class="row">
                        <div class="col-md-5 about-main_img">
                            <img src="assets/images/about.jpg" alt="">
                        </div>

                        <div class="col-md-7 about-main_content">
                            <h3 class="about-main_content-title">Online Entertaiment</h3>
                            <h4><fmt:message>about.lh1</fmt:message></h4>
                            <p>
                                <fmt:message>about.content1</fmt:message>
                            </p>
                            <h4><fmt:message>about.lh2</fmt:message></h4>
                            <p>
                                <fmt:message>about.content2</fmt:message>
                            </p>
                            <p>
                                <fmt:message>about.content3</fmt:message>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bring -->
            <div class="bring">
                <div class="row">
                    <h2 class="title-h2">
                        <fmt:message>about.bringTitle</fmt:message>
                    </h2>
                </div>
                <div class="bring-wrap">
                    <div class="row col-md-11 bring-main">
                        <div class="col-md-3 bring-main-img">
                            <span class="label-step">1</span>
                            <img src="assets/images/3075700.jpg" alt="">
                            <div class="bring-main-content">
                                <h4><fmt:message>about.bringContentH1</fmt:message>s</h4>
                                <p>
                                	<fmt:message>about.bringContent1</fmt:message>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3 bring-main-img">
                            <span class="label-step">2</span>
                            <img src="assets/images/3075799.jpg" alt="">
                            <div class="bring-main-content">
                                <h4><fmt:message>about.bringContentH2</fmt:message></h4>
                                <p>
									<fmt:message>about.bringContent2</fmt:message>
								</p>			
                            </div>
                        </div>
                        <div class="col-md-3 bring-main-img">
                            <span class="label-step">3</span>
                            <img src="assets/images/3075701.jpg" alt="">
                            <div class="bring-main-content">
                                <h4><fmt:message>about.bringContentH3</fmt:message></h4>
                                <p>
                                	<fmt:message>about.bringContent3</fmt:message>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- product -->
            <div class="product">
                <div class="product-title">
                    <h2 class="title-h2"><fmt:message>about.product</fmt:message></h2>
                </div>

				 <div class="row product-item mb-2 col-md-10">
                    <div class="col">
						<jsp:include page="/common/notification.jsp"></jsp:include>
					</div>
				</div>

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators slide-product">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
                    </ol>
                    
                    <div class="carousel-inner">
					<!--slide 1 -->
                      <div class="carousel-item active">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[0].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[0].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[0].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[0].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[1].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[1].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[1].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[1].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[2].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[2].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[2].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[2].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>
                      <!--slide 2 -->
                      <div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[3].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[3].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[3].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[3].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[4].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[4].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[4].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[4].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[5].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[5].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[5].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[5].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>
				
					<!--slide 3 -->
					<div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[6].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[6].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[6].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[6].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[7].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[7].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[7].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[7].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[8].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[8].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[8].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[8].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>
                      
                      <!--slide 4 -->
                      <div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[9].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[9].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[9].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[9].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[10].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[10].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[10].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[10].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[11].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[11].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[11].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[11].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>
                      
                      <!--slide 5 -->
                      <div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[12].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[12].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[12].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[12].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[13].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[13].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[13].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[13].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[14].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[14].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[14].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[14].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>
                      
                      <!--slide 6 -->
                      <div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[15].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[15].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[15].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[15].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[16].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[16].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[16].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[16].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[17].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[17].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[17].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[17].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>
                      
                      <!--slide 7 -->
                      <div class="carousel-item">
                        <div class="row product-item col-md-10">
                            <div class="col md-3">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[18].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[18].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[18].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[18].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[19].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[19].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[19].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[19].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos2[20].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos2[20].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos2[20].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos2[20].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                        </div>              
                      </div>					                   
                    </div>
                  </div>
            </div>

            <!-- Custumer -->
            <div class="customer">
                <div class="row">
                    <h2 class="title-h2">
                        <fmt:message>about.customer</fmt:message>
                    </h2>
                </div> <br>
                <div class="customer-wrap">
                    <div class="col-md-8 customer-main">
                        <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-md-6 info-customer">
                                            <h3><fmt:message>about.customerH1</fmt:message> <br> <fmt:message>about.customerH1br</fmt:message></h3>
                                            <p>
                                                <fmt:message>about.customer1</fmt:message>
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <img src="assets/images/customer-1.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-md-6 info-customer">
                                            <h3><fmt:message>about.customerH2</fmt:message> <br> <fmt:message>about.customerH2br</fmt:message></h3>
                                            <p>
                                                <fmt:message>about.customer1</fmt:message>
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <img src="assets/images/customer-2.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-md-6 info-customer">
                                            <h3><fmt:message>about.customerH3</fmt:message> <br> <fmt:message>about.customerH3br</fmt:message></h3>
                                            <p>
                                                <fmt:message>about.customer1</fmt:message>
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <img src="assets/images/customer-3.jpg" alt="">
                                        </div>
                                    </div>
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
                    <button class="btn btn-outline-success my-2 my-sm-0"><i
                            class="fa-solid fa-arrow-right-long"></i></button>
                </form>
            </div>
