<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

			<div class="detail-title">
                <h4><a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="AdminVideoManager" class="element-link"><fmt:message>admin.video</fmt:message></a></h4>
            </div>

            <div class="row">
                <h2 class="text-center" style="color: #b82a39; font-weight: 700; font-size: 35px;"><fmt:message>admin.video</fmt:message>
                </h2>
            </div>

            <div class="card edit-video-card">
                <div class="card-header edit-video-card-header">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
                                aria-controls="nav-home" aria-selected="true"><fmt:message>admin.tab1Video</fmt:message></a>
                            <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                                aria-controls="nav-profile" aria-selected="false"><fmt:message>admin.tab2Video</fmt:message></a>
                        </div>
                    </nav>
                </div>
                <div class="card-body main-wrap-video">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <form action="" class="video-edit-form" method="post" enctype="multipart/form-data">
                                <div class="row video-edit">
                                    <div class="col-md-3 video-edit-img">
                                        <div class="card">
                                            <div class="card-body img-video">
                                            	<div class="img-video-wrap">
                                                    <img src="${video.poster != null ? video.poster: 'assets/images/poster-extra.jpg' }" alt="">
                                                </div>                                             
                                            </div>
                                            <div class="card-footer">
                                                <div class="input-group">
                                                    <div class="custom-file">
                                                      <input type="file" class="custom-file-input" name="cover" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                                      <label class="custom-file-label" for="inputGroupFile01" style="font-size: 15px;"><div class="choose-file"><fmt:message>button.chooseFile</fmt:message></div></label>
                                                    </div>
                                                  </div>
                                            </div>
                                       </div>
                                    </div>
                                    <div class="col-md-9">
                                    
                                    	<div class="row no-gutters">
											<div class="col">
												<jsp:include page="/common/notification.jsp"></jsp:include>
											</div>
										</div>
										
                                        <div class="forn-group">
                                            <label for="videoId">Video ID</label>
                                            <input type="text" id="videoId" name="videoId" value="${video.videoId }" ${readonlyVideo } class="form-control" required="required">
                                        </div>
                                        <div class="forn-group mt-3">
                                            <label for="videoTitle"><fmt:message>video.title</fmt:message></label>
                                            <input type="text" id="videoTitle" name="title" value="${video.title }" class="form-control" required="required">
                                        </div>
                                        <div class="forn-group mt-3">
                                            <label for="viewCount"><fmt:message>video.count</fmt:message></label>
                                            <input type="number" id="viewCount" name="views" value="${video.views }" class="form-control" required="required">
                                        </div>
                                        <div class="form-check form-check-inline mt-3">
                                            <input class="form-check-input" type="radio" id="inlineCheckbox1"
                                                name="active" value="true" ${video.active? 'checked':'' }>
                                            <label class="form-check-label" for="inlineCheckbox1"><fmt:message>video.active</fmt:message></label>
                                        </div>
                                        <div class="form-check form-check-inline mt-3">
                                            <input class="form-check-input" type="radio" id="inlineCheckbox2"
                                                name="active" value="false"  ${!video.active? 'checked':'' }>
                                            <label class="form-check-label" for="inlineCheckbox2"><fmt:message>video.inactive</fmt:message></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3 video-edit">
                                    <div class="form-group" style="width: 100%;">
                                        <label for="descrip"><fmt:message>video.description</fmt:message></label>
                                        <textarea id="descrip" cols="" rows="5"
                                         name="description" class="form-control">${video.description }</textarea>
                                    </div>
                                </div>
                                <hr class="row video-edit" style="height: 2px; background-color: #b82a39;">
                                <div class="row video-edit_group-btn">
                                    <button type="submit" formaction="AdminVideoManagerCreate" class="btn btn-primary"><fmt:message>button.create</fmt:message></button>
                                    <button type="button" data-toggle="modal" data-target="#UpdateVideo" class="btn btn-success ml-3"><fmt:message>button.update</fmt:message></button>
                                    <button type="button" data-toggle="modal" data-target="#DeleteVideo" class="btn btn-danger ml-3"><fmt:message>button.delete</fmt:message></button>
                                    <button type="submit" formaction="AdminVideoManagerReset" class="btn btn-dark ml-3"><fmt:message>button.reset</fmt:message></button>
                                </div>
                                
	                                <!-- Modal deleteVideo post-->
	                                    <div class="modal fade" id="DeleteVideo" data-backdrop="static"
	                                    data-keyboard="false" tabindex="-1"
	                                    aria-labelledby="staticBackdropLabel" aria-hidden="true">
	                                    <div class="modal-dialog modal-dialog-centered">
	                                        <div class="modal-content">
	                                            <div class="modal-header">
	                                                <h4 class="modal-title" id="staticBackdropLabel">
	                                                    <i class="fa-solid fa-bell"></i> <fmt:message>menu.message</fmt:message>
	                                                </h4>
	                                                <button type="button" class="close"
	                                                    data-dismiss="modal">
	                                                    <span class="icon-close"><i
	                                                            class="fa-solid fa-xmark"></i></span>
	                                                </button>
	                                            </div>
	                                            <div class="modal-body text-center">
	                                                <h4> <fmt:message>message.deleteVD</fmt:message></h4>
	                                            </div>
	                                            <div class="modal-footer">
	                                                <button type="submit" formaction="AdminVideoManagerDelete" class="btn btn-danger ml-3"><fmt:message>button.delete</fmt:message></button>
	                                                <a class="btn btn-dark ml-4"
	                                                    data-dismiss="modal"><fmt:message>button.cancel</fmt:message></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	
	                                <!-- Modal updateVideo post-->
	                                <div class="modal fade" id="UpdateVideo" data-backdrop="static"
	                                data-keyboard="false" tabindex="-1"
	                                aria-labelledby="staticBackdropLabel" aria-hidden="true">
	                                <div class="modal-dialog modal-dialog-centered">
	                                    <div class="modal-content">
	                                        <div class="modal-header">
	                                            <h4 class="modal-title" id="staticBackdropLabel">
	                                                <i class="fa-solid fa-bell"></i> <fmt:message>menu.message</fmt:message>
	                                            </h4>
	                                            <button type="button" class="close"
	                                                data-dismiss="modal">
	                                                <span class="icon-close"><i
	                                                        class="fa-solid fa-xmark"></i></span>
	                                            </button>
	                                        </div>
	                                        <div class="modal-body text-center">
	                                            <h4> <fmt:message>message.updateVD</fmt:message></h4>
	                                        </div>
	                                        <div class="modal-footer">
	                                            <button type="submit" formaction="AdminVideoManagerUpdate" class="btn btn-success ml-3"><fmt:message>button.update</fmt:message></button>
	                                            <a class="btn btn-dark ml-4"
	                                                data-dismiss="modal"><fmt:message>button.cancel</fmt:message></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                                
                            </form>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
	                        <form class="row no-gutters mb-4">
	                                <div class="row form-group col-md-10">
	                                    <label for="findVideo" class="col-md-2"><h4 style="margin-bottom: 0; color: #b82a39;"><fmt:message>video.title</fmt:message>: </h4></label>
	                                    <input type="text" class="form-control col-md-10" placeholder="<fmt:message>video.title</fmt:message>" name="videoTitle">
	                                </div>
	
	                                <div class="col-md-1">
	                                    <button formaction="AdminVideoManagerFindByKW" class="btn btn-primary"><fmt:message>button.search</fmt:message></button>
	                                    
	                                </div>
	                            </form>
	                            
                            <div class="row list-video">
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th style="width: 200px;">Video ID</th>
                                            <th style="width: 500px;"><fmt:message>video.title</fmt:message></th>
                                            <th style="width: 200px;"><fmt:message>video.count</fmt:message></th>
                                            <th style="width: 200px;"><fmt:message>video.status</fmt:message></th>
                                            <th style="width: 200px;"></th>
                                        </tr>
                                    </thead>
                                    
                                    <c:if test="${!empty videos}">
                                    	<tbody>
	                                    	<c:forEach var="item" items="${videos }">
		                                        <tr>
		                                            <td scope="row">${item.videoId }</td>
		                                            <td>${item.title }</td>
		                                            <td>${item.views }</td>
		                                            <td>${item.active? 'Active': 'Inactive' }</td>
		                                            <td class="td-btn">
		                                            	<a href="AdminVideoManagerEdit?videoId=${item.videoId }" class="btn btn-primary mr-3"><fmt:message>button.edit</fmt:message></a>
		                                            	 <button data-toggle="modal" data-target="#staticBackdrop${item.videoId }" class="btn btn-danger"><fmt:message>button.delete</fmt:message></button>
	                                            	</td>
	                                            	<td>
	                                            		<!-- Modal -->
													     <div class="modal fade" id="staticBackdrop${item.videoId }" data-backdrop="static" data-keyboard="false"
													        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
													     <div class="modal-dialog modal-dialog-centered">
													         <div class="modal-content">
														             <div class="modal-header">
														                 <h4 class="modal-title" id="staticBackdropLabel">
														                    <i class="fa-solid fa-bell"></i> <fmt:message>menu.message</fmt:message></h4>
														                 <button type="button" class="close" data-dismiss="modal">
														                    <span class="icon-close"><i class="fa-solid fa-xmark"></i></span>
														                </button>
														             </div>
														             <div class="modal-body text-center">
														               <h4> <fmt:message>message.deleteVD</fmt:message></h4>
														             </div>
													             	<div class="modal-footer">
														                 <a href="AdminVideoManagerDelete?videoId=${item.videoId }"  class="btn btn-primary"><fmt:message>button.delete</fmt:message></a>
														                 <button type="button" class="btn btn-dark ml-4"
														                     data-dismiss="modal"><fmt:message>button.cancel</fmt:message></button>
													             	</div>
													         	</div>
													     	</div>
														 </div>
													</td>
		                                        </tr>   
	                                        </c:forEach>              
                                    	</tbody>
                                    </c:if>
                                    
                                    <c:if test="${empty videos}">
                                    	<tbody>
	                                    	<c:forEach var="item" items="${videosFind }">
		                                        <tr>
		                                            <td scope="row">${item.videoId }</td>
		                                            <td>${item.title }</td>
		                                            <td>${item.views }</td>
		                                            <td>${item.active? 'Active': 'Inactive' }</td>
		                                            <td class="td-btn">
		                                            	<a href="AdminVideoManagerEdit?videoId=${item.videoId }" class="btn btn-primary mr-3"><fmt:message>button.edit</fmt:message></a>
		                                            	 <button data-toggle="modal" data-target="#staticBackdrop${item.videoId }" class="btn btn-danger"><fmt:message>button.delete</fmt:message></button>
	                                            	</td>
	                                            	<td>
	                                            		<!-- Modal -->
													     <div class="modal fade" id="staticBackdrop${item.videoId }" data-backdrop="static" data-keyboard="false"
													        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
													     <div class="modal-dialog modal-dialog-centered">
													         <div class="modal-content">
														             <div class="modal-header">
														                 <h4 class="modal-title" id="staticBackdropLabel">
														                    <i class="fa-solid fa-bell"></i> <fmt:message>menu.message</fmt:message></h4>
														                 <button type="button" class="close" data-dismiss="modal">
														                    <span class="icon-close"><i class="fa-solid fa-xmark"></i></span>
														                </button>
														             </div>
														             <div class="modal-body text-center">
														                <h4> <fmt:message>message.deleteVD</fmt:message></h4>
														             </div>
													             	<div class="modal-footer">
														                 <a href="AdminVideoManagerDelete?videoId=${item.videoId }"  class="btn btn-primary"><fmt:message>button.delete</fmt:message></a>
														                 <button type="button" class="btn btn-dark ml-4"
														                     data-dismiss="modal"><fmt:message>button.cancel</fmt:message></button>
													             	</div>
													         	</div>
													     	</div>
														 </div>
													</td>
		                                        </tr>   
	                                        </c:forEach>              
                                    	</tbody>
                                    </c:if>
                                    
                                </table>
                            </div>
                            <div class="row mt-3 mb-0 page-navigation">
                                <div class="index-video">
                                    <h4>${videoCount } videos</h4>
                                </div>
                                <div class="page-navigation-video">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>