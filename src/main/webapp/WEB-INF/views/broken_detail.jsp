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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/brokencommon.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/brokendetail.js"></script>
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
							<h4 class="mg-b-0 tx-spacing--1"><a style="text-decoration: none; color: black;" href="/brokenSVC">차량 고장 모니터링 대시보드</a></h4>
						</div>

						<div class="d-none d-md-block">
							<button class="btn btn-sm pd-x-15 btn-primary btn-uppercase">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-mail wd-10 mg-r-5">
									<path
										d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
									<polyline points="22,6 12,13 2,6"></polyline></svg>
								차트보기
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
								차량 이미지 보기
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
											<div class="table_box">
												<div class="total_div">
												<fmt:parseNumber var= "listCnt" integerOnly= "true" value= "${pagination.listCnt}"/>
													<span class="total"><em>차량번호 : <c:out value = "${rmc_list[0].car_id}"/></em></span>
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
															<th>FMI</th>
															<th>FMI_NAME</th>
															<th>SPN</th>
															<th>SPN_DESCRIPTION</th>
															<th>STATUS</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="rmc" items="${rmc_list}">
															<tr class = "${rmc.car_id}" data-toggle="modal" data-target="#exampleModalCenter">
																<td class="time">${rmc.time }</td>
																<td class="car_id">${rmc.car_id }</td>
																<td class="fmi">${rmc.FMI }</td>
																<td class="fmi_name">${rmc.FMI_NAME }</td>
																<td class="spn">${rmc.SPN }</td>
																<td class="spn_description">${rmc.SPN_DESCRIPTION }</td>
																<c:set var="status" value="${rmc.status}" />
																<c:choose>
																	<c:when test="${status eq '0'}">																
																		<td class="status">고장 발생</td>
																	</c:when>
																	<c:when test="${status eq '1'}">
																		<td class="status">접수 대기중</td>
																	</c:when>
																	<c:when test="${status eq '2'}">
																		<td class="status">접수 완료</td>
																	</c:when>
																	<c:otherwise>
																		<td class="status">수리 완료</td>
																	</c:otherwise>
																</c:choose>
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

										<!-- Modal -->
											<div class="modal fade" id="exampleModalCenter" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalCenterTitle"
												aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLongTitle">상태 선택</h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
																	<a class="btn standard-btn" value="0">상태 초기화</a>
																	<a class="btn standard-btn mg-t-10" value="1">사용자에게 수리 알림</a>
																	<a class="btn standard-btn mg-t-10" value="2">수리 완료</a>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- Modal2 -->
											<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalCenterTitle"
												aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLongTitle">차량 수리 알림 신청</h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<ul class="list-group">
																<li class="list-group-item list-time">Time : <span>time</span></li>
																<li class="list-group-item list-carid">Car_ID : <span>car_id</span></li>
																<li class="list-group-item list-fmi">FMI_CODE : <span>fmi_code</span></li>
																<li class="list-group-item list-spn">SPN_CODE : <span>spn_code</span></li>
															</ul>
															<br>
															<div class="form-group">
																<label for="exampleFormControlTextarea1">간단한 메세지를 남겨주세요. (최대 200자)</label>
																<textarea class="form-control modal_textarea" id="modal_text" rows="3"></textarea>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">메세지 보내기</button>
															<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
														</div>
													</div>
												</div>
											</div>


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