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
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">최저 DTC 발생량</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><fmt:parseNumber var= "min" integerOnly= "true" value= "${chart_data.now_data.min}"/>${min}대</h3>
									<p class="tx-11 tx-color-03 mg-b-0"> 
										<span class="tx-medium ${chart_data.rate_data.min < 0 ? 'tx-success' : 'tx-danger'}">
										<fmt:formatNumber value="${chart_data.rate_data.min}" pattern=".0"/>% ${chart_data.rate_data.min < 0 ? 'decrease' : 'increase'}
										</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-sm-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">최고 DTC 발생량</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><fmt:parseNumber var= "max" integerOnly= "true" value= "${chart_data.now_data.max}"/>${max}대</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium ${chart_data.rate_data.max < 0 ? 'tx-success' : 'tx-danger'}">
										<fmt:formatNumber value="${chart_data.rate_data.max}" pattern=".0"/>% ${chart_data.rate_data.max < 0 ? 'decrease' : 'increase'}
										</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">평균 DTC 발생량</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">${chart_data.now_data.avg }대</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium ${chart_data.rate_data.avg < 0 ? 'tx-success' : 'tx-danger'}">
										<fmt:formatNumber value="${chart_data.rate_data.avg}" pattern=".0"/>% ${chart_data.rate_data.avg < 0 ? 'decrease' : 'increase'}
										</span> than last week
									</p>
								</div>
							</div>
						</div>
						<!-- col -->
						<div class="col-sm-6 col-lg-3 mg-t-10 mg-lg-t-0">
							<div class="card card-body">
								<h6
									class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">주간 DTC 합계량</h6>
								<div class="d-flex d-lg-block d-xl-flex align-items-end">
									<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1"><fmt:parseNumber var= "sum" integerOnly= "true" value= "${chart_data.now_data.sum}"/>${sum}대</h3>
									<p class="tx-11 tx-color-03 mg-b-0">
										<span class="tx-medium ${chart_data.rate_data.sum < 0 ? 'tx-success' : 'tx-danger'}">
										<fmt:formatNumber value="${chart_data.rate_data.sum}" pattern=".0"/>% ${chart_data.rate_data.sum < 0 ? 'decrease' : 'increase'}
										</span> than last week
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-sm-12 col-xl-12 mg-t-10">
							<div class="card">
								<div class="card-body pos-relative pd-0">
									<div class="pos-absolute t-20 l-20 wd-xl-100p z-index-10">
										<div class="row">
											<div id="chart_div" class="col-sm-12 mg-t-10 mg-sm-t-0">
												<!-- 차트 빈공간 -->
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