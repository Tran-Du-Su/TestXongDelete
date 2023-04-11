<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- contact -->
<div class="detail-title">
	<h4>
		<a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="Contact"
			class="element-link"><fmt:message>menu.contact</fmt:message></a>
	</h4>
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