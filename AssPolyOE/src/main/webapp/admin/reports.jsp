<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
                <h4><a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="ReportManagerment" class="element-link"><fmt:message>admin.report</fmt:message></a></h4>
            </div>

            <div class="row">
                <h2 class="text-center" style="color: #b82a39; font-weight: 700; font-size: 35px;"><fmt:message>admin.report</fmt:message>
                </h2>
            </div>

            <div class="card edit-video-card">
                <div class="card-header edit-video-card-header">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
                                aria-controls="nav-home" aria-selected="true"><fmt:message>admin.favotite</fmt:message></a>
                            <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                                aria-controls="nav-profile" aria-selected="false"><fmt:message>admin.fuser</fmt:message></a>
                                <a class="nav-link" id="nav-shared-tab" data-toggle="tab" href="#nav-shared" role="tab"
                                aria-controls="nav-shared" aria-selected="false"><fmt:message>admin.share</fmt:message></a>
                        </div>
                    </nav>
                </div>
                <div class="card-body" style="width: 100%;">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <div class="row list-video">
<!--                             thong ke luot thich video -->
                                <table class="table table-bordered table-striped table-hover">
                                    <thead style="text-align: center;">
                                        <tr>
                                            <th><fmt:message>report.title</fmt:message></th>
                                            <th><fmt:message>report.fCount</fmt:message></th>
                                            <th><fmt:message>report.oldDate</fmt:message></th>
                                            <th><fmt:message>report.newDate</fmt:message></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${favoriteList }">
	                                        <tr>
	                                            <td scope="row">${item.videoTitle }</td>
	                                            <td>${item.favoriteCount }</td>
	                                            <td><fmt:formatDate value="${item.newestDate }" pattern="dd/MM/yyyy"/></td>
	                                            <td><fmt:formatDate value="${item.oldestDate }" pattern="dd/MM/yyyy"/></td>
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                        <!--thong ke nguoi dung thich video -->
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        	<form method="get">
	                            <div class="form-group mb-4 select-wrap">       
	                                <label for="inputState" class=" pt-1 title-select"><h5><fmt:message>video.title</fmt:message>: </h5></label>
	                                <select id="inputState" name="videoIdRp" class="form-control select-box">
	                                  <c:forEach var="item" items="${videoList }">
	                                  	<option value="${item.videoId }"  ${item.videoId == videoUserId? 'selected': '' } >
	                                  		${item.title }
	                                  	</option>
	                                  </c:forEach>                           
	                                </select>
	                                
	                                <button type="submit" class="btn btn-primary ml-4">Report</button>                                                        
	                              </div>
                              </form>
                            <div class="row list-video">        
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th><fmt:message>form.username</fmt:message></th>
                                            <th><fmt:message>form.fullname</fmt:message></th>
                                            <th>Email</th>
                                            <th><fmt:message>report.fDate</fmt:message></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${favoriteUserList }">
                                    		<tr>
	                                            <td scope="row">${item.username }</td>
	                                            <td>${item.email }</td>
	                                            <td>${item.fullname }</td>                                            
	                                            <td><fmt:formatDate value="${item.likeDate }" pattern="dd/MM/yyyy"/></td>
                                        	</tr>
                                    	</c:forEach>                               
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
<!--                         thong ke luot share video theo video id -->
                        <div class="tab-pane fade" id="nav-shared" role="tabpanel" aria-labelledby="nav-shared-tab">
                        	<form method="get">
	                            <div class="form-group mb-4 select-wrap">
	                                <label for="inputState" class=" pt-1 title-select"><h5><fmt:message>video.title</fmt:message>: </h5></label>
	                                <select id="inputState" name="videoId" class="form-control select-box">
	                                  <c:forEach var="item" items="${videoShareList }">
	                                  	<option value="${item.videoId }" ${item.videoId == videoShareId? 'selected': '' }>
	                                  	${item.title }</option>
	                                  </c:forEach>
	                                </select>
	                                <button class="btn btn-primary ml-4">Report</button>
	                              </div>
	                           </form>
                            <div class="row list-video">
<!--                             thong ke luot chia se -->
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th><fmt:message>report.senderName</fmt:message></th>
                                            <th><fmt:message>report.senderEmail</fmt:message></th>
                                            <th><fmt:message>report.receiverEmail</fmt:message></th>
                                            <th><fmt:message>report.sDate</fmt:message></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${shareList }">
                                    		<tr>
	                                            <td scope="row">${item.senderName }</td>
	                                            <td>${item.senderEmail }</td>
	                                            <td>${item.receiverEmail }</td>
	                                            <td><fmt:formatDate value="${item.shareDate }" pattern="dd/MM/yyyy"/></td>
                                        	</tr>
                                    	</c:forEach>                                                                          
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>