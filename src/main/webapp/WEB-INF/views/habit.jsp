<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="common/meta.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/habit.css">
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/pagination.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/habit.js"></script>
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
					</div>

					<div class="row">
						<c:forEach items="${top_list}" var="top" varStatus="status">
							<div class="col-sm-4 col-lg-4">
								<div class="border">
									<div class="rank_spn">
										<span class="rank">${status.index+1}</span>
									</div>
									<div class="body">
										<div class="top_head">
											<div class="top_img2">
												<c:choose>
													<c:when test="${status.index+1 eq 1}">
														<c:set var="image" value="gold" />
														<c:set var="alias" value="환경 1등 공신" />
													</c:when>
													<c:when test="${status.index+1 eq 2}">
														<c:set var="image" value="silver" />
														<c:set var="alias" value="환경 마스터 운전자" />
													</c:when>
													<c:otherwise>
														<c:set var="image" value="bronze" />
														<c:set var="alias" value="환경 지킴이 운전자" />
													</c:otherwise>
												</c:choose>
												<img alt="${status.index+1}등" src="/resources/aiaas/kr/images/${image}.png">
											</div>
										</div>
										<div class="top_bttm">
											<div class="top_id">
												<p>
													<span class="id_spn">${top.car_id}</span>
												</p>
											</div>
											<div class="top_alias">
											
												<p>
													<span class="alias_spn">${alias}</span>
												</p>
											</div>
											<div class="top_distance">
												<p>
													<span class="distance_spn">이동거리 <fmt:formatNumber value="${top.drive_length }" pattern=".0" /> km
													</span>
												</p>
											</div>
											<div class="top_id">
												<p class="information_section_item">
													<strong class="category_title">상대 랭킹</strong> <span class="category_content type_number"> <span class="ellis">${total_count - top.rank_relative + 1}등 </span>
													</span>
												</p>
											</div>
										</div>
									</div>
									<div class="footer">
										<div class="foot_inner">
											<img class="foot_img" alt="score" src="/resources/aiaas/kr/images/score.png"> <span class="score_spn">${top.total_danger }점</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<div class="row">
						<!-- 전체 랭킹 tabs -->
						<section id="tabs" class="project-tab">
							<div class="col-md-12">
								<nav>
									<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
										<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">ALL</a> <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">SAMPYO</a> <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">ELEX</a>
									</div>
								</nav>
								<div class="total_div">
									<div class="select_num">
										<select class="form-control" id="sel1">
											<option <c:out value="${pagination.listSize == '10' ? 'selected' : ''}"/>>10개씩</option>
											<option <c:out value="${pagination.listSize == '25' ? 'selected' : ''}"/>>25개씩</option>
											<option <c:out value="${pagination.listSize == '50' ? 'selected' : ''}"/>>50개씩</option>
											<option <c:out value="${pagination.listSize == '100' ? 'selected' : ''}"/>>100개씩</option>
										</select>
									</div>
									<div class="search_div">
										<form class="navbar-form" role="search" action="/habitSVC/user">
											<div class="input-group">
												<input type="text" class="form-control search_in" placeholder="Search" name="question">
												<div class="input-group-btn">
													<button class="btn btn-default search_btn" type="submit">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</div>
										</form>
									</div>

								</div>
								<div class="tab-content" id="nav-tabContent">
									<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
										<div class="table_box">
											<table id="rank_table" class="table table-hover" style="width: 100%">
												<thead>
													<tr class="rank_info">
														<th scope="col">순위</th>
														<th scope="col">차량 번호</th>
														<th scope="col">위험 점수</th>
														<th scope="col">정보</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="rank" items="${rank_list}">
														<tr id="${rank.car_id}" scope="row">
															<td style="font-size: 16px; font-weight: bold">${total_count - rank.rank + 1}</td>
															<td>${rank.car_id }</td>
															<td>${rank.total_danger }</td>
															<td>
																<div class="rank_detail" style="margin-right: 1%;">
																	<ul class="list-group list-group-flush">
																		<li class="list-group-item">급 가속 횟수 : ${rank.a}</li>
																		<li class="list-group-item">급 출발 횟수 : ${rank.q}</li>
																		<li class="list-group-item">급 감속 횟수 : ${rank.d}</li>
																		<li class="list-group-item">급 정지 횟수 : ${rank.s}</li>
																	</ul>
																</div>
																<div class="rank_detail" style="margin-left: 1%;">
																	<ul class="list-group list-group-flush">
																		<li class="list-group-item">급 유턴(좌) : ${rank.UL}</li>
																		<li class="list-group-item">급 유턴(우) : ${rank.UR}</li>
																		<li class="list-group-item">급 진로변경 횟수 : ${rank.SL}</li>
																		<li class="list-group-item">급 앞지르기 횟수 : ${rank.o}</li>
																	</ul>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

											<div class="paginationBox">
												<ul class="pagination">
													<c:if test="${pagination.prev}">
														<li class="page-item "><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}')">이전</a></li>
													</c:if>

													<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
														<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}' ,'${pagination.listSize}')">${idx}</a></li>

													</c:forEach>

													<c:if test="${pagination.next}">
														<li class="next-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.listSize}')">다음</a></li>
													</c:if>

												</ul>

											</div>
										</div>
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