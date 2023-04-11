<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="detail-title">
                <h4><a href="HomePage" class="home-link"><fmt:message>menu.home</fmt:message></a> / <a href="AdminUserManager" class="element-link"><fmt:message>admin.user</fmt:message></a></h4>
            </div>

            <div class="row">
                <h2 class="text-center" style="color: #b82a39; font-weight: 700; font-size: 35px;"><fmt:message>admin.user</fmt:message>
                </h2>
            </div>

            <div class="card edit-video-card">
                <div class="card-header edit-video-card-header">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
                                aria-controls="nav-home" aria-selected="true"><fmt:message>admin.tab1User</fmt:message></a>
                            <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab"
                                aria-controls="nav-profile" aria-selected="false"><fmt:message>admin.tab2User</fmt:message></a>
                        </div>
                    </nav>
                </div>
                <div class="card-body" style="width: 100%;">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <form action="" method="post" style="margin: 15px 50px;">
                            
                            	<div class="row no-gutters">
									<div class="col-md-12">
										<jsp:include page="/common/notification.jsp"></jsp:include>
									</div>
								</div>
                            
                                <div class="forn-group">
                                    <label for="username"><fmt:message>form.username</fmt:message></label>
                                    <input type="text" id="username" name="usernameId" 
                                    placeholder="<fmt:message>form.username</fmt:message>" class="form-control" value="${user.usernameId}" readonly="readonly">
                                </div>
                                <div class="forn-group mt-3">
                                    <label for="password"><fmt:message>form.password</fmt:message></label>
                                    <input type="password" id="password" name="password"
                                    placeholder="<fmt:message>form.password</fmt:message>" class="form-control" required="required" minlength="6">
                                </div>
                                <div class="forn-group mt-3">
                                    <label for="fullname"><fmt:message>form.fullname</fmt:message></label>
                                    <input type="text" id="fullname" name="fullname"
                                     placeholder="<fmt:message>form.fullname</fmt:message>" class="form-control" value="${user.fullname}" required="required">
                                </div>
                                <div class="forn-group mt-3">
                                    <label for="email">Email</label>
                                    <input type="email" id="email" name="email" 
                                    placeholder="Email" class="form-control" value="${user.email}" required="required">
                                </div>
                                <div class="forn-group mt-3 ml-0 pl-0 col-md-5">
                                    <label for="role"><fmt:message>form.role</fmt:message></label>
                                    <select id="role" name="admin" class="form-control">
                                    	<option value="true" ${user.admin == true? 'selected': '' }><fmt:message>menu.admin</fmt:message></option>
                                    	<option value="false" ${user.admin == false? 'selected': '' }><fmt:message>menu.user</fmt:message></option>
                                    </select>
                                </div>
                                <hr style="height: 2px; background-color: #b82a39;">
                                <div class="row video-edit_group-btn">
                                    <!-- <button class="btn btn-primary">Create</button> -->
                                    <button type="button" data-toggle="modal" data-target="#UpdateUser"  class="btn btn-success ml-3"><fmt:message>button.update</fmt:message></button>
                                    <button type="button" data-toggle="modal" data-target="#DeleteUser"  class="btn btn-danger ml-3"><fmt:message>button.delete</fmt:message></button>
                                    <button type="submit" formaction="AdminUserManagerReset" class="btn btn-dark ml-3"><fmt:message>button.reset</fmt:message></button>
                                </div>
                                
                                <!-- Modal deleteVideo post-->
	                                    <div class="modal fade" id="DeleteUser" data-backdrop="static"
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
	                                                <h4> <fmt:message>message.deleteUS</fmt:message></h4>
	                                            </div>
	                                            <div class="modal-footer">
	                                                <button type="submit" formaction="AdminUserManagerDelete" class="btn btn-danger ml-3"><fmt:message>button.delete</fmt:message></button>
	                                                <a class="btn btn-dark ml-4"
	                                                    data-dismiss="modal"><fmt:message>button.cancel</fmt:message></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	
	                                <!-- Modal updateVideo post-->
	                                <div class="modal fade" id="UpdateUser" data-backdrop="static"
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
	                                            <h4> <fmt:message>message.updateUS</fmt:message></h4>
	                                        </div>
	                                        <div class="modal-footer">
	                                            <button type="submit" formaction="AdminUserManagerUpdate" class="btn btn-success ml-3"><fmt:message>button.update</fmt:message></button>
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
                                    <label for="findVideo" class="col-md-2"><h4 style="margin-bottom: 0; color: #b82a39;"><fmt:message>form.fullname</fmt:message>: </h4></label>
                                    <input type="text" class="form-control col-md-10" placeholder="<fmt:message>form.fullname</fmt:message>" name="keyFullName">
                                </div>

                                <div class="col-md-1">
                                    <button formaction="AdminUserManagerFindUserByKW" class="btn btn-primary"><fmt:message>button.search</fmt:message></button>
                                </div>
                            </form>
                        
                            <div class="row list-video">
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th><fmt:message>form.username</fmt:message></th>
                                            <th><fmt:message>form.password</fmt:message></th>
                                            <th><fmt:message>form.fullname</fmt:message></th>
                                            <th>Email</th>
                                            <th><fmt:message>form.role</fmt:message></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <c:if test="${!empty users }">
                                    	<tbody>
                                    	<c:forEach var="item" items="${users }">
	                                        <tr>
	                                            <td scope="row">${item.usernameId }</td>
	                                            <td>${item.password }</td>
	                                            <td>${item.fullname }</td>
	                                            <td>${item.email }</td>
	                                            <td>${item.admin }</td>
	                                            <td class="td-btn-user">
	                                            	<a href="AdminUserManagerEdit?usernameId=${item.usernameId }" class="btn btn-primary mr-2"><fmt:message>button.edit</fmt:message></a>
                                                	<button data-toggle="modal" data-target="#userModal${item.usernameId }" class="btn btn-danger"><fmt:message>button.delete</fmt:message></button>
                                           	 	</td>
                                           	 	<td>
                                            		<!-- Modal -->
												     <div class="modal fade" id="userModal${item.usernameId }" data-backdrop="static" data-keyboard="false"
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
													                 <h4> <fmt:message>message.deleteUS</fmt:message></h4>
													             </div>
												             	<div class="modal-footer">
													                 <a href="AdminUserManagerDelete?usernameId=${item.usernameId }"  class="btn btn-primary"><fmt:message>button.delete</fmt:message></a>
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
                                    
                                    <c:if test="${empty users }">
                                    	<tbody>
                                    	<c:forEach var="item" items="${usersFind }">
	                                        <tr>
	                                            <td scope="row">${item.usernameId }</td>
	                                            <td>${item.password }</td>
	                                            <td>${item.fullname }</td>
	                                            <td>${item.email }</td>
	                                            <td>${item.admin }</td>
	                                            <td class="td-btn-user">
	                                            	<a href="AdminUserManagerEdit?usernameId=${item.usernameId }" class="btn btn-primary mr-2"><fmt:message>button.edit</fmt:message></a>
                                                	<button data-toggle="modal" data-target="#userModal${item.usernameId }" class="btn btn-danger"><fmt:message>button.delete</fmt:message></button>
                                           	 	</td>
                                           	 	<td>
                                            		<!-- Modal -->
												     <div class="modal fade" id="userModal${item.usernameId }" data-backdrop="static" data-keyboard="false"
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
													                <h4> <fmt:message>message.deleteUS</fmt:message></h4>
													             </div>
												             	<div class="modal-footer">
													                 <a href="AdminUserManagerDelete?usernameId=${item.usernameId }"  class="btn btn-primary"><fmt:message>button.delete</fmt:message></a>
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
                                    <h5>${userCount } <fmt:message>menu.user</fmt:message></h5>
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