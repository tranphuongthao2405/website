<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/view/client/static" var="url"></c:url>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/noUiSlider/jquery.nouislider.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
					<h1>Lọc sản phẩm với</h1>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> Tên <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
									
									
										<form action="${pageContext.request.contextPath}/product/search" method="get">
											<input type="text" name="name" />
											<input type="submit" value="Seach" >
											

										</form>





									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2"
										href="#collapseTwo"> Thể Loại <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<a href="${pageContext.request.contextPath}/product/category?cate_id=1" > Khoa học thường thức</a>
										<br>
										<a href="${pageContext.request.contextPath}/product/category?cate_id=2" > Văn học</a>
										<br>
										<a href="${pageContext.request.contextPath}/product/category?cate_id=3" > Truyện tranh</a>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v3"
										href="#collapseThree"> Kích cỡ <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseThree" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<li><label class="checkbox"> <input
												type="checkbox" name="checkbox" /> <i></i> 20cmx27cm<small><a
													href="#">(23)</a></small>
										</label></li>
										<li><label class="checkbox"> <input
												type="checkbox" name="checkbox" checked /> <i></i> 24cmx27cm <small><a
													href="#">(4)</a></small>
										</label></li>
										<li><label class="checkbox"> <input
												type="checkbox" name="checkbox" /> <i></i> 40cmx20cm <small><a
													href="#">(11)</a></small>
										</label></li>
										<li><label class="checkbox"> <input
												type="checkbox" name="checkbox" /> <i></i> 25,5cmx28,5cm <small><a
													href="#">(3)</a></small>
										</label></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v4">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v4"
										href="#collapseFour"> Giá <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseFour" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="slider-snap"></div>
									<p class="slider-snap-text">
										<span class="slider-snap-value-lower"></span> <span
											class="slider-snap-value-upper"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v5">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v5"
										href="#collapseFive"> Color <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseFive" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-inline product-color-list">
										<li><a href="#"><img src="${url}/img/colors/01.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/02.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/03.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/04.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/05.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/06.jpg"
												alt=""></a></li>
										<li><a href="#"><img src="${url}/img/colors/07.jpg"
												alt=""></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group margin-bottom-30" id="accordion-v6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v6"
										href="#collapseSix"> Rating <i class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseSix" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="stars-ratings stars-ratings-label">
										<input type="radio" name="stars-rating" id="stars-rating-5">
										<label for="stars-rating-5"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-4">
										<label for="stars-rating-4"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-3">
										<label for="stars-rating-3"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-2">
										<label for="stars-rating-2"><i class="fa fa-star"></i></label>
										<input type="radio" name="stars-rating" id="stars-rating-1">
										<label for="stars-rating-1"><i class="fa fa-star"></i></label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
					<button type="button"
						class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Reset</button>
				</div>
				
</body>
</html>