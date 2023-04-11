<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- slide -->
            <div class="row slide-bar">
                <div class="col-md-5 text-left text-center">
                    <h1>Online Entertaiment</h1>
                    <h3><fmt:message>home.title</fmt:message></h3>
                    <p><fmt:message>home.content</fmt:message>
                    </p>
                </div>
                <div class="col-md-7 img-right">
                    <img src="assets/images/bg.jpg">
                </div>
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
                                        <a href="DetailVideo"><img src="${videos1[0].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[0].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[0].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[0].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[1].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[1].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[1].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[1].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[2].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[2].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[2].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[2].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[3].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[3].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[3].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[3].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[4].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[4].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[4].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[4].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[5].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[5].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[5].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[5].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[6].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[6].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[6].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[6].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[7].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[7].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[7].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[7].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[8].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[8].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[8].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[8].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[9].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[9].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[9].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[9].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[10].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[10].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[10].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[10].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[11].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[11].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[11].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[11].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[12].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[12].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[12].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[12].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[13].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[13].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[13].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[13].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[14].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[14].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[14].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[14].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[15].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[15].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[15].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[15].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[16].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[16].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[16].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[16].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[17].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[17].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[17].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[17].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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
                                        <a href="DetailVideo"><img src="${videos1[18].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[18].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[18].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[18].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[19].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[19].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[19].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[19].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col md-3 ml-5">
                                <div class="card card-main">
                                    <div class="card-header card-header-main">
                                        <a href="DetailVideo"><img src="${videos1[20].poster }" alt=""></a>
                                    </div>
                                    <div class="card-body card-body-main">
                                        <h3>${videos1[20].title }</h3>
                                    </div>
                                    <div class="card-footer">
                                        <a href="LikeVideo?videoId=${videos1[20].videoId }" class="btn btn-success"><fmt:message>button.like</fmt:message></a>
                                        <a href="ShareVideo?videoId=${videos1[20].videoId }" class="btn btn-primary ml-3"><fmt:message>button.share</fmt:message></a>
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

            <!-- contact -->
            <div class="contact-area">
                <div class="row">
                    <h2 class="title-h2"><fmt:message>menu.contact</fmt:message></h2>
                </div>
                <div class="col-lg-9 contact">
                    <div class="row">
                        <div class="col-md-6 contact-touch">
                            <h2><fmt:message>contact.adH1</fmt:message></h2>
                            <hr style="height: 2px; background-color: #b82a39; width: 20%; margin: 0 0 5px 0;">
                            <p class="contact-touch_note">
                            	<fmt:message>contact.content</fmt:message>
                            </p>

                            <p class="contact-touch_info"><i class="fa-solid fa-location-dot"></i> 137 Nguyen Thi Thap,
                                Lien Chieu, Da Nang City</p>
                            <p class="contact-touch_info"><i class="fa-solid fa-envelope-open"
                                    style="font-size: 30px;"></i> Sutdpd05301@fpt.edu.vn
                            </p>
                            <p class="contact-touch_info"><i class="fa-solid fa-square-phone"></i> +84 911 545 777</p>
                        </div>

                        <div class="col-md-6">
                            <h2><fmt:message>contact.adH2</fmt:message></h2>
                            <form action="">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="First Name" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Last Name" class="form-control">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Phone" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" placeholder="Email" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <textarea placeholder="Message" rows="5" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="btn-group contact-form_btn">
                                        <button class="btn btn-danger">Send</button>
                                    </div>
                                </div>
                            </form>
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