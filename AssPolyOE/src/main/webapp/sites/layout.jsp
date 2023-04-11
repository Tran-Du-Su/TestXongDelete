<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-free-6.0.0-beta3-web/css/all.min.css">

	<base href="/AssPolyOE/"/>
    <title>${page.title }</title>
</head>

<body>
	<fmt:setLocale value="${sessionScope.lang }" scope="request"/>
	<fmt:setBundle basename="i18n.lang" scope="request"/>
	
    <div class="container-fluid">
        <header>
            <div class="row header-content">
                <ul class="header-list">
                    <li class="header-item"><i class="fa-solid fa-envelope"></i> Sutdpd05301@fpt.edu.vn</li>
                    <li class="header-item ml-4"><i class="fa-solid fa-phone"></i> +84 911 545 777</li>
                </ul>
                <ul class="header-list header-list-icon">
                    <li class="header-item">
                        <a class="header-link" href="https://www.facebook.com/johanliebert1312"><i class="fa-brands fa-facebook"></i></a>
                    </li>
                    <li class="header-item ml-4">
                        <a class="header-link" href="https://www.instagram.com/khong791/"><i class="fa-brands fa-instagram-square"></i></a>
                    </li>
                    <li class="header-item ml-4">
                        <a class="header-link" href="https://www.youtube.com/channel/UCoNWS-HNCXg7jpSLcpAX6pg"><i class="fa-brands fa-youtube"></i></a>
                    </li>
                </ul>
            </div>
        </header>

        <nav id="myHeader">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="HomePage?pageinfo=HomePage">Online Entertaiment</a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="About?pageinfo=About"><fmt:message>menu.about</fmt:message></a>
                        </li>
                        <li class="nav-item ml-3">
                            <a class="nav-link" href="Contact?pageinfo=Contact"><fmt:message>menu.contact</fmt:message></a>
                        </li>
                        <li class="nav-item ml-3">
                            <a class="nav-link" href="ListVideo?pageinfo=ListVideo"><fmt:message>menu.video</fmt:message></a>
                        </li>
                        <li class="nav-item ml-3">
                            <a class="nav-link" href="Favorite?pageinfo=Favorite"><fmt:message>menu.favotite</fmt:message></a>
                        </li>
                        <c:if test="${isLogin }">
                        <li class="nav-item dropdown ml-3">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-expanded="false">
                                <fmt:message>menu.account</fmt:message>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <!-- <a class="dropdown-item" href="#">Login</a> -->
<!--                                 <a class="dropdown-item" href="forgot.html">Forgot Password</a> -->
                                <a class="dropdown-item" href="ChangePassword?pageinfo=ChangePassword"><fmt:message>menu.change</fmt:message></a>
                                <a class="dropdown-item" href="EditProfile?pageinfo=EditProfile"><fmt:message>menu.edit</fmt:message></a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Logoff?pageinfo=Logoff"><fmt:message>menu.logout</fmt:message></a>
                            </div>
                        </li>
                        </c:if>
                        <c:if test="${roleDisplay }">
	                        <li class="nav-item dropdown ml-3">
	                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
	                                data-toggle="dropdown" aria-expanded="false">
	                                <fmt:message>menu.admin</fmt:message>
	                            </a>
	                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                <a class="dropdown-item" href="AdminVideoManager?pageinfo=AdminVideoManager"><fmt:message>admin.video</fmt:message></a>
	                                <a class="dropdown-item" href="AdminUserManager?pageinfo=AdminUserManager"><fmt:message>admin.user</fmt:message></a>
	                                <a class="dropdown-item" href="ReportManagerment?pageinfo=ReportManagerment"><fmt:message>admin.report</fmt:message></a>
	                            </div>
	                        </li>
                        </c:if>
                    </ul>
                    <ul class="navbar-nav">
                    	<c:if test="${isLogin }">
	                        <li class="nav-item" style="color: rgb(72, 72, 72);">
	                        	<c:if test="${roleDisplay }">
	                        		<strong><fmt:message>menu.admin</fmt:message>: ${nameDisplay }</strong>
	                        	</c:if>
	                        	<c:if test="${!roleDisplay }">
	                        		<strong><fmt:message>menu.user</fmt:message>: ${nameDisplay }</strong>
	                        	</c:if>
	                        </li>
                        </c:if>
                        
                    	<c:if test="${!isLogin }">
	                        <li class="nav-item">
	                            <a href="Login?pageinfo=Login" class="nav-link"><fmt:message>menu.login</fmt:message></a>
	                        </li>
	                        <li class="nav-item">
	                            <a href="Resgister?pageinfo=Resgister" class="nav-link ml-3"><fmt:message>menu.register</fmt:message></a>
	                        </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link nav-link-flag ml-3" href="${pageLG }?lang=en_US"><img
                                    src="assets/images/united-kingdom.png" alt=""></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link-flag " href="${pageLG }?lang=vi_VN"><img src="assets/images/vietnam.png"
                                    alt=""></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </nav>

        <section>
            <jsp:include page="${page.contentURL }"></jsp:include>
        </section>

        <footer>
            <p><i class="fa-solid fa-copyright"></i> 2022 by TranDuDu. All right reserved</p>
        </footer>
    </div>


	<script src="http://localhost:8080/AssPolyOE/assets/script/scrollTop.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>

</body>

</html>