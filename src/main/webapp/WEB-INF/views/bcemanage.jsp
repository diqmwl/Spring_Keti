<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<%@include file="common/meta.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" 	href="${pageContext.request.contextPath}/resources/aiaas/kr/css/bce.css">
</head>

<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/bce.js"></script>
<body>

	<div class="page-profile">
		<div class="loginWrap">

			<%@include file="common/header.jsp"%>

			<div class="content content-fixed">
				<div class="container-fluid">
					<div class="row">
						<c:forEach items="${vehicle_info}" var="info">
						<div class="col-lg-4 col-md-12 col-sm-12">
							<div class="card card-stats">
								<div class="card-header cd-white">
									<h5 class="card-title">${info.name} Top 10</h5>
								</div>
								<div class="card-body">
									<table id="bce_table"
										class="table table-hover" style="width: 100%">
										<thead>
											<tr>
												<th>시간</th>
												<th>차량 아이디</th>
												<th>${info.name} 값</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${info.ary}" var="info_detail">
											<tr>
												<th>${fn:substring(info_detail.time,0,19)}</th>
												<th>${info_detail.car_id}</th>
												<th>${info_detail[info.valname] }</th>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						</c:forEach>
						
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="card card-stats mg-t-0 pd-15">
							<button class="add">add</button>
								<ul class="nav nav-tabs" id="myTab" role="tablist">
									<li class="nav-item"><a class="nav-link active" id="tab1"
										data-toggle="tab" href="#div_tab1" role="tab"
										aria-controls="tab1" aria-selected="true">tab1
											<button type="button" class="close" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
									</a></li>
								</ul>
								<div class="tab-content" id="myTabContent">
									  <div class="tab-pane fade show active" id="div_tab1" role="tabpanel" aria-labelledby="tab1">1.</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>