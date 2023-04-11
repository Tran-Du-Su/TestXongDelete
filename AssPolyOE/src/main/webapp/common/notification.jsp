<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<c:if test="${not empty success }">

				<div class="alert alert-success">
					<h5>${success }</h5>
				</div>

	</c:if>
	<c:if test="${not empty error }">

				<div class="alert alert-danger">
					<h5>Error: ${error }</h5>
				</div>

	</c:if>
	<c:if test="${not empty info }">

				<div class="alert alert-info text-center">
					<h5>${info }</h5>
				</div>

	</c:if>