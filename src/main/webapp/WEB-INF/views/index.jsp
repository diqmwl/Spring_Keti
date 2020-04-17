<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
	<html lang="ko">
		<head>
			<%@include file="common/meta.jsp"%>
		</head>

	<body>
	<div id="wrap">
		<div class="loginWrap">
		
			<%@include file="common/header.jsp"%>

			<div class="login_box">

				<div class="txt_box">
	            <div class="top_box">
					<div class="notice_box">
						<div class="boxarea left_box animated fadeInDown ">
							<div class="box_body">
								<div class="pop_cont">
									<button class="box_close2 close2" type="button">닫기</button>
									<img class="pop_img" alt="차량 모니터링 서비스" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/logo_mo_svc.png">
								</div>
								<div class="pop_bottom">
									<p>
										기업 차량의 운행 통계 및<br> 실시간 관리 정보를 제공해주는 서비스!
									</p>
									<a href="http://125.140.110.217:3002/" target="_blank">자세히보기</a>
								</div>
							</div>
						</div>
						<div class="boxarea aca_box animated fadeInDown delay-1">
							<div class="box_body">
								<div class="pop_cont">
									<button class="box_close close3" type="button">닫기</button>
									<img class="pop_img" alt="차량 출 도착 서비스" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/logo_arrive_svc.png">
								</div>
								<div class="pop_bottom data_bottom">
									<p>
										고품질 차량 출도착 서비스를<br> 경험하세요
									</p>
									<a href="/arrSVC">자세히보기</a>
								</div>
							</div>
						</div>

					</div>
					<div class="login_area">
						<p class="animated fadeInUp">빅데이터 분석은 Keti.pf</p>
						<span style="margin-top: 10px;" class="animated fadeInUp delay-1">차량별 / <strong>다양한 데이터 분석 서비스 제공</strong></span>
						<div class="link_box">
							<a class="btn_sign animated fadeInUp delay-2"
								href="#main_content">바로 시작하기</a>
						</div>
					</div>
					<img class="top_img" alt="" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/banner.png">
				</div>
					<div class="stn_landing">
						<p class="stn_landing_tit">
							<span>빅데이터 분석 기반의 다양한 최신 서비스</span>
						</p>
						<div id="main_content" class="stn_landing_cont">
							<ul class="clearfix">
								<li onclick="window.open('http://125.140.110.217:3002')" title="모니터링 서비스 이동">
									<div class="clear_li">
										<header	style="background-image: url(&quot;${pageContext.request.contextPath}/resources/aiaas/kr/images/logo_mo_svc.png&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>차량 모니터링 서비스</dt>
												<span>Vehicle Monitoring Service</span>
												<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
											</dl>
										</div>
									</div>
								</li>
								<li onclick="location.href='/arrSVC'" title="출 도착 서비스 이동">
									<div class="clear_li">
										<header	style="background-image: url(&quot;/resources/aiaas/kr/images/logo_arrive_svc.png&quot;);">
											<div class="icon">신규</div>
										</header>
										<div class="body">
											<dl>
												<dt>차량 출 도착 서비스</dt>
												<span>Vehicle Arrival Service</span>
												<dd>기업 차량의 출 도착 정보와 이동경로를 제공해줍니다.</dd>
											</dl>
										</div>
									</div>
								</li>								
								<li onclick="window.open('https://keti-carbigdata.org:8891/index')" title="차량 정보 시각화 대시보드 이동">
									<div class="clear_li">
										<header
											style="background-image: url(&quot;/resources/aiaas/kr/images/logo_dash_svc.png&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>차량 정보 시각화 대시보드</dt>
												<span>Vehicle Information Dashboard</span>
												<dd>차량에 대한 정보를 대시보드를 통해 자유롭게 시각화 합니다.</dd>
											</dl>
										</div>
									</div>
								</li>								
								<li onclick="window.open('https://keti-carbigdata.org:8891/index?page=1')" title="차량 고장 예측 및 분석 이동">
									<div class="clear_li">
										<header
											style="background-image: url(&quot;/resources/aiaas/kr/images/logo_dtc_svc.png&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>차량 고장 예측 및 분석 서비스</dt>
												<span>Vehicle Failure Prediction And Analysis</span>
												<dd>차량 DTC 분석을 통해 고장을 예측하고 분석하여 대시보드 형태로 제공합니다.</dd>
											</dl>
										</div>
									</div>
								</li>								
								<li onclick="location.href='/brokenSVC'" title="차량 고장 관리 서비스 이동">
									<div class="clear_li">
										<header
											style="background-image: url(&quot;/resources/aiaas/kr/images/logo_dtc_m_svc.png&quot;);">
										<div class="icon_beta">Beta</div>
										</header>
										<div class="body">
											<dl>
												<dt>차량 고장 관리 서비스</dt>
												<span>Vehicle Failure Management Service</span>
												<dd>차량의 고장 정보와 차량 목록을 관리할 수 있는 관리자용 웹 서비스 입니다.</dd>
											</dl>
										</div>
									</div>
								</li>								
								<li onclick="location.href='/habitSVC'" title="운전자 습관 분석 서비스 이동">
									<div class="clear_li">
										<header
											style="background-image: url(&quot;https://static.wanted.co.kr/images/company/1776/tvgy1xnkxve6kfkw__400_400.jpg&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>운전자 습관 분석 서비스</dt>
												<span>Driver Habit Analysis Service</span>
												<dd>운전자의 주행 습관에 기반하여 각 소속별 점수와 상세 정보를 제공합니다.</dd>
											</dl>
										</div>
									</div>
								</li>								<li>
									<div class="clear_li">
										<header
											style="background-image: url(&quot;https://static.wanted.co.kr/images/company/1776/tvgy1xnkxve6kfkw__400_400.jpg&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>서비스 미정</dt>
												<span>Vehicle Monitoring Service</span>
												<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
											</dl>
										</div>
									</div>
								</li>								<li>
									<div class="clear_li">
										<header
											style="background-image: url(&quot;https://static.wanted.co.kr/images/company/1776/tvgy1xnkxve6kfkw__400_400.jpg&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>서비스 미정</dt>
												<span>Vehicle Monitoring Service</span>
												<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
											</dl>
										</div>
									</div>
								</li>								<li>
									<div class="clear_li">
										<header
											style="background-image: url(&quot;https://static.wanted.co.kr/images/company/1776/tvgy1xnkxve6kfkw__400_400.jpg&quot;);">
										</header>
										<div class="body">
											<dl>
												<dt>서비스 미정</dt>
												<span>Vehicle Monitoring Service</span>
												<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
											</dl>
										</div>
									</div>
								</li>

							</ul>
						</div>
					</div>
			</div>
						<%@include file="common/footer.jsp"%>
				</div>
		</div>

	<script type="text/javascript">   
$(window).load(function() { 
	var errormsg = "";
	if(errormsg != '' && errormsg != null){
		alert(errormsg);
	}		
	
	$('.page_loading').addClass('pageldg_hide').delay(300).queue(function() { 
		$(this).remove(); 
	});


	// product layer popup
	$('.close2').on('click', function () {
		$('.left_box').fadeOut(300);
	});
	$('.close3').on('click', function () {
		$('.aca_box').fadeOut(300);
	});

}); 
</script>


</body>
</html>
	