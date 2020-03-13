<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="common/meta.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/habit.css">


<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/table.css">

<script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
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
									<li class="breadcrumb-item"><a href="#">삼표</a></li>
									<li class="breadcrumb-item active" aria-current="page">운전자 습관 분석 서비스</li>
								</ol>
							</nav>
							<h4 class="mg-b-0 tx-spacing--1">운전자별 랭킹</h4>
						</div>

						<div class="d-none d-md-block">
							<button class="btn btn-sm pd-x-15 btn-white btn-uppercase">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail wd-10 mg-r-5">
									<path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
									<polyline points="22,6 12,13 2,6"></polyline></svg>
								Email
							</button>

							<button class="btn btn-sm pd-x-15 btn-white btn-uppercase mg-l-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-printer wd-10 mg-r-5">
									<polyline points="6 9 6 2 18 2 18 9"></polyline>
									<path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
									<rect x="6" y="14" width="12" height="8"></rect></svg>
								Print
							</button>

							<button class="btn btn-sm pd-x-15 btn-primary btn-uppercase mg-l-5">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file wd-10 mg-r-5">
									<path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
									<polyline points="13 2 13 9 20 9"></polyline></svg>
								Generate Report
							</button>
						</div>

					</div>

					<div class="row row-xs">
						<div class="top_div">
							<div class="col-sm-6 col-lg-6 col-mg-au">
								<div class="border card-body">
									<div class="top_left">
										<img alt="1등" src="/resources/aiaas/kr/images/gold.png">
									</div>
									<div class="top_right">
											<table class="table" cellspacing="0">
												<thead>
													<tr>
														<th>운전자 명</th>
														<th>총 점수</th>
														<th>정보</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td rowspan="3"><b>이민영</b></td>
														<td rowspan="3"><a href="#">3211</a></td>
														<td>급가속 : 2회</td>
													</tr>
													<tr>
														<td>급 좌회전: 3회</td>
													</tr>
													<tr>
														<td>급 정지: 0회</td>
													</tr>
												</tbody>
											</table>
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6 mg-t-10 col-lg-3">
								<div class="card card-body">
									<h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion Rate</h6>
									<div class="d-flex d-lg-block d-xl-flex align-items-end">
										<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
										<p class="tx-11 tx-color-03 mg-b-0">
											<span class="tx-medium tx-success">1.2% <i class="icon ion-md-arrow-up"></i></span> than last week
										</p>
									</div>
									<div class="chart-three">
										<div id="flotChart3" class="flot-chart ht-30" style="padding: 0px; position: relative;">
											<canvas class="flot-base" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
											<canvas class="flot-overlay" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
										</div>
									</div>
									<!-- chart-three -->
								</div>
							</div>
							<div class="col-sm-6 mg-t-10 col-lg-3">
								<div class="card card-body">
									<h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion Rate</h6>
									<div class="d-flex d-lg-block d-xl-flex align-items-end">
										<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
										<p class="tx-11 tx-color-03 mg-b-0">
											<span class="tx-medium tx-success">1.2% <i class="icon ion-md-arrow-up"></i></span> than last week
										</p>
									</div>
									<div class="chart-three">
										<div id="flotChart3" class="flot-chart ht-30" style="padding: 0px; position: relative;">
											<canvas class="flot-base" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
											<canvas class="flot-overlay" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
										</div>
									</div>
									<!-- chart-three -->
								</div>
							</div>
							<div class="col-sm-6 mg-t-10 col-lg-3">
								<div class="card card-body">
									<h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion Rate</h6>
									<div class="d-flex d-lg-block d-xl-flex align-items-end">
										<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
										<p class="tx-11 tx-color-03 mg-b-0">
											<span class="tx-medium tx-success">1.2% <i class="icon ion-md-arrow-up"></i></span> than last week
										</p>
									</div>
									<div class="chart-three">
										<div id="flotChart3" class="flot-chart ht-30" style="padding: 0px; position: relative;">
											<canvas class="flot-base" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
											<canvas class="flot-overlay" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
										</div>
									</div>
									<!-- chart-three -->
								</div>
							</div>
							<div class="col-sm-6 mg-t-10 col-lg-3">
								<div class="card card-body">
									<h6 class="tx-uppercase tx-11 tx-spacing-1 tx-color-02 tx-semibold mg-b-8">Conversion Rate</h6>
									<div class="d-flex d-lg-block d-xl-flex align-items-end">
										<h3 class="tx-normal tx-rubik mg-b-0 mg-r-5 lh-1">0.81%</h3>
										<p class="tx-11 tx-color-03 mg-b-0">
											<span class="tx-medium tx-success">1.2% <i class="icon ion-md-arrow-up"></i></span> than last week
										</p>
									</div>
									<div class="chart-three">
										<div id="flotChart3" class="flot-chart ht-30" style="padding: 0px; position: relative;">
											<canvas class="flot-base" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
											<canvas class="flot-overlay" width="328" height="30" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 328px; height: 30px;"></canvas>
										</div>
									</div>
									<!-- chart-three -->
								</div>
							</div>
							<!-- 전체 랭킹 tabs -->
							<section id="tabs" class="project-tab">
								<div class="col-md-12">
									<nav>
										<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">ALL</a> <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">SAMPYO</a> <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">ELEX</a>
										</div>
									</nav>
									<div class="tab-content" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
										<table id="table_id" class="tg">
    <thead>
      <tr>
        <th class="tg-c3ow">Firstname</th>
        <th class="tg-c3ow">Lastname</th>
        <th class="tg-c3ow">Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="tg-c3ow">John</td>
        <td class="tg-c3ow">Doe</td>
        <td class="tg-c3ow">john@example.com</td>
      </tr>
      <tr>
        <td class="tg-c3ow">Mary</td>
        <td class="tg-c3ow">Moe</td>
        <td class="tg-c3ow">mary@example.com</td>
      </tr>
      <tr>
        <td class="tg-c3ow">July</td>
        <td class="tg-c3ow">Dooley</td>
        <td class="tg-c3ow">july@example.com</td>
      </tr>
    </tbody>
</table>
									</div>
										<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
											<table class="table" cellspacing="0">
												<thead>
													<tr>
														<th>운전자 명</th>
														<th>총 점수</th>
														<th>랭킹</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="#">이민영</a></td>
														<td>3211</td>
														<td>1</td>
													</tr>
													<tr>
														<td><a href="#">최우정</a></td>
														<td>2998</td>
														<td>2</td>
													</tr>
													<tr>
														<td><a href="#">채철승</a></td>
														<td>800</td>
														<td>3</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
											<table class="table" cellspacing="0">
												<thead>
													<tr>
														<th>운전자 명</th>
														<th>총 점수</th>
														<th>랭킹</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="#">윤태일</a></td>
														<td>1201</td>
														<td>1</td>
													</tr>
													<tr>
														<td><a href="#">박진원</a></td>
														<td>1000</td>
														<td>2</td>
													</tr>
													<tr>
														<td><a href="#">김형ㄱ</a></td>
														<td>4025</td>
														<td>3</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</section>


							<!-- card-body -->

						</div>

					</div>
			</div>

		</div>
	</div>
</body>
</html>