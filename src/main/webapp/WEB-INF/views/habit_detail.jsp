<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/meta.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/habit_common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/habit_detail.css">
</head>
<body>

	<div class="page-profile">
		<div class="loginWrap">
			<%@include file="common/header.jsp"%>
			<div class="content content-fixed">
				<div class="container pd-x-0 pd-lg-x-10 pd-xl-x-0">

					<div class="d-sm-flex align-items-center justify-content-between mg-b-20 mg-lg-b-25 mg-xl-b-30">

						<div>
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb breadcrumb-style1 mg-b-10">
									<li class="breadcrumb-item"><a href="#">상세페이지</a></li>
									<li class="breadcrumb-item active" aria-current="page">운전자 습관 분석 서비스</li>
								</ol>
							</nav>
							<h4 class="mg-b-0 tx-spacing--1">운전자 상세 페이지</h4>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-body">
									<span class="card-title">나의 운전 점수</span>
									<a class="open-modal">자세히보기</a>
									<div class="score_div">
										<div class="score">
											<div class="score_num">
												<h1 style="font-weight: 900">93</h1>점
											</div>
											<div class="score_per">상위 3%</div>
										</div>
										<div class="score_detail">
											<div class="score_container">
												<div class="circleBase best">
													<span>모범</span>
												</div>
												<div class="mg-t-10">급 가속</div>
											</div>
											<div class="score_container">
												<div class="circleBase best">
													<span>모범</span>
												</div>
												<div class="mg-t-10">급 감속</div>
											</div>
											<div class="score_container">
												<div class="circleBase best">
													<span>모범</span>
												</div>
												<div class="mg-t-10">급 출발</div>
											</div>
											<div class="score_container">
												<div class="circleBase good">
													<span>양호</span>
												</div>
												<div class="mg-t-10">급 정지</div>
											</div>
											<div class="score_container">
												<div class="circleBase bad">
													<span>위험</span>
												</div>
												<div class="mg-t-10">급 유턴</div>
											</div>
										</div>
									</div>
									<div class="score_graph">
										<span>월별 그래프</span>
										<div id="month_chart">
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row mg-t-15">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-body">
								<div class="place-container">
									<span class="card-title">주행 이력</span>
									<span class="card-title place-date">2020-06-03 12:11:22</span>
								</div>
									<div class="place-name mg-t-5">글로벌 R&D 센터 방문<a class="open-modal">자세히보기</a></div>
									<div id="map" class="mg-t-5" style="width:100%;height: 400px;"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mg-t-15">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="card">
								<div class="card-body">
									<span class="card-title">보험료 예측</span>
								</div>
							</div>						
						</div>
					</div>
					
				</div>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/habit_detail.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b40d0ca1587123c7c621e51a6845c4b"></script>
</html>