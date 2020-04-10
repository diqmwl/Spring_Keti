<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<%@include file="common/meta.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/broken.css">
</head>

<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/broken.js"></script>
<body>

	<div class="page-profile">
		<div class="loginWrap">

			<%@include file="common/header.jsp"%>

			<div class="content content-fixed">
				<div class="container pd-x-0 pd-lg-x-10 pd-xl-x-0">

					<div
						class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-30">

						<div>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb breadcrumb-style1 mg-b-10">
									<li class="breadcrumb-item"><a href="#">삼표</a></li>
									<li class="breadcrumb-item active" aria-current="page">차량
										모니터링 서비스</li>
								</ol>
							</nav>
							<h4 class="mg-b-0 tx-spacing--1">차량 고장 모니터링 대시보드</h4>
						</div>

						<div class="d-none d-md-block">
							<button class="btn btn-sm pd-x-15 btn-white btn-uppercase">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-mail wd-10 mg-r-5">
									<path
										d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
									<polyline points="22,6 12,13 2,6"></polyline></svg>
								Email
							</button>

							<button class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-l-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-printer wd-10 mg-r-5">
									<polyline points="6 9 6 2 18 2 18 9"></polyline>
									<path
										d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
									<rect x="6" y="14" width="12" height="8"></rect></svg>
								Print
							</button>

							<button
								class="btn btn-sm pd-x-15 btn-primary btn-uppercase mg-l-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file wd-10 mg-r-5">
									<path
										d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
									<polyline points="13 2 13 9 20 9"></polyline></svg>
								Generate Report
							</button>
						</div>

					</div>

					<div class="row row-xs">
						<div class="col-sm-6 col-lg-3 mg-t-10">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion
									Rate</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium tx-success">1.2%</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-sm-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Unique
									Purchases</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">3,137</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium tx-danger">0.7%</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Avg.
									Order Value</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">$306.20</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium tx-danger">0.3%</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Order
									Quantity</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">1,650</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium tx-success">2.1%</span> than last week
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12 col-xl-12 mg-t-10">
							<div class="card">
								<div class="card-body pos-relative pd-0">
									<div class="pos-absolute t-20 l-20 wd-xl-100p z-index-10">
										<div class="row">
											<div class="col-sm-5">
												<h3 class="tx-normal tx-rubik tx-spacing--2 mg-b-5">$620,076</h3>
												<h6
													class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-10">MRR
													Growth</h6>
												<p class="mg-b-0 tx-12 tx-color-03">
													Measure How Fast You’re Growing Monthly Recurring Revenue.
													<a href="">Learn More</a>
												</p>
											</div>
											<!-- col -->
											<div class="col-sm-5 mg-sm-t-0">
												<h3 class="tx-normal tx-rubik tx-spacing--2 mg-b-5">$1,200</h3>
												<h6
													class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-10">Avg.
													MRR/Customer</h6>
												<p class="mg-b-0 tx-12 tx-color-03">
													The revenue generated per account on a monthly or yearly
													basis. <a href="">Learn More</a>
												</p>
											</div>
											<div id="chart_div" class="col-sm-12 mg-t-10 mg-sm-t-0">

											</div>
											<!-- col -->
										</div>
										<!-- row -->
									</div>
								</div>
								<!-- card-body -->
							</div>
							<!-- card -->
						</div>

						<div class="col-lg-12 col-sm-12 col-xl-12 mg-t-10">
							<div class="card">
								<div class="card-body pos-relative pd-0">
									<div class="pos-absolute t-20 l-20 wd-xl-100p z-index-10">
										<div id="row_container" class="row">
											<div class="table_box">
												<div class="total_div">
												<fmt:parseNumber var= "listCnt" integerOnly= "true" value= "${pagination.listCnt}"/>
													<span class="total"><em><c:out value = "${listCnt}"/></em>개 차량</span>
													<div class="form-group select_num">
														<select class="form-control" id="sel1">
															<option <c:out value="${pagination.listSize == '10' ? 'selected' : ''}"/>>10개씩</option>
															<option <c:out value="${pagination.listSize == '25' ? 'selected' : ''}"/>>25개씩</option>
															<option <c:out value="${pagination.listSize == '50' ? 'selected' : ''}"/>>50개씩</option>
															<option <c:out value="${pagination.listSize == '100' ? 'selected' : ''}"/>>100개씩</option>
														</select>
													</div>
												</div>
												<table id="rmc_table"
													class="table table-striped table-bordered"
													style="width: 100%">
													<thead>
														<tr>
															<th>time</th>
															<th>car_id</th>
															<th>DTC</th>
															<th>FMI</th>
															<th>SPN</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="rmc" items="${rmc_list}">
															<tr id = "${rmc.car_id}">
																<td>${rmc.time }</td>
																<td>${rmc.car_id }</td>
																<td>${rmc.DTC }</td>
																<td>${rmc.FMI_NAME }</td>
																<td>${rmc.SPN }</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>

												<div class="paginationBox">
													<ul class="pagination">
														<c:if test="${pagination.prev}">
															<li class="page-item ">
																<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}')">이전</a>
															</li>
														</c:if>

														<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
															<li	class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
																<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}' ,'${pagination.listSize}')">${idx}</a>
															</li>

														</c:forEach>

														<c:if test="${pagination.next}">
															<li class="next-item">
																<a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}')">다음</a>
															</li>
														</c:if>

													</ul>

												</div>
											</div>
											<!-- pagination{e} -->


										</div>
										<!-- row -->
									</div>
								</div>
								<!-- card-body -->
							</div>
							<!-- card -->
						</div>
						<!-- col -->

					</div>

				</div>
			</div>

		</div>
	</div>
</body>
</html>