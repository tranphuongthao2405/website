<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--
	$(document).ready(function() {

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$(".file-upload").on('change', function() {
			readURL(this);
		});
	});
//-->

<!DOCTYPE html>
<html>
<head>
<title>Thông tin tài khoản</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>


	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>User name</h1>
			</div>
			<div class="col-sm-2">
				<a href="${pageContext.request.contextPath }" class="pull-right"><img
					title="profile image" class="img-circle img-responsive"
					src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->
				<c:url value="/member/myaccount" var="myaccount"></c:url>
				<form class="form" action="${myaccount }" method="post"
					id="registrationForm" enctype="multipart/form-data">
					<input name="role" value="${sessionScope.account.roleId }" hidden="" >
					<input name="id" value="${sessionScope.account.id }" hidden="">
					<div class="text-center">
						<c:url value="/image?fname=${sessionScope.account.avatar }"
							var="imgUrl"></c:url>
						<img src="${imgUrl }" class="avatar img-circle img-thumbnail"
							alt="avatar">
						<h6>Upload a different photo...</h6>
						<input type="file" name="avatar" class="text-center center-block file-upload">
					</div>
				</form>
					<br>
			</div>
			<!--/col-3-->
			<div class="col-sm-9">



				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<hr>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name">User Name:</label> <input
									type="text" class="form-control" name="username"
									id="first_name" value="${sessionScope.account.username }"
									title="enter your first name if any.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name">Email:</label> <input
									type="text" class="form-control" name="email" id="first_name"
									value="${sessionScope.account.email }"
									title="enter your first name if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="phone">Password</label> <input
									type="password" class="form-control" name="password" id="phone"
									value="${sessionScope.account.password }"
									title="enter your phone number if any.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name">Website</label> <input
									type="text" class="form-control" name="website" id="last_name"
									value="http://website.com" title="enter your last name if any."
									disabled="disabled">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Lưu
								</button>
								<button class="btn btn-lg" type="reset">
									<i class="glyphicon glyphicon-repeat"></i> Đặt lại
								</button>
							</div>
						</div>
				<hr>

				</div>
					<!--/tab-pane-->
					<div class="tab-pane" id="messages">

						<h2></h2>

						<hr>


					</div>
					<!--/tab-pane-->
					<div class="tab-pane" id="settings">


						<hr>
						<form class="form" action="" method="post" id="registrationForm">
							<div class="form-group">

								<div class="col-xs-6">
									<label for="first_name">First name</label> <input
										type="text" class="form-control" name="first_name"
										id="first_name" placeholder="first name"
										title="enter your first name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name">Last name</label> <input
										type="text" class="form-control" name="last_name"
										id="last_name" placeholder="last name"
										title="enter your last name if any.">
								</div>
							</div>

							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone">Phone</label> <input type="text"
										class="form-control" name="phone" id="phone"
										placeholder="enter phone"
										title="enter your phone number if any.">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-6">
									<label for="mobile">Mobile</label> <input type="text"
										class="form-control" name="mobile" id="mobile"
										placeholder="enter mobile number"
										title="enter your mobile number if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email">Email</label> <input type="email"
										class="form-control" name="email" id="email"
										placeholder="you@email.com" title="enter your email.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="email">Location</label> <input
										type="email" class="form-control" id="location"
										placeholder="somewhere" title="enter a location">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="password">Password</label> <input
										type="password" class="form-control" name="password"
										id="password" placeholder="password"
										title="enter your password.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="password2">Verify</label> <input
										type="password" class="form-control" name="password2"
										id="password2" placeholder="password2"
										title="enter your password2.">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success pull-right" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Lưu
									</button>
									<!--<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>-->
								</div>
							</div>
						</form>
					</div>

				</div>
				<!--/tab-pane-->
			</div>
			<!--/tab-content-->

		</div>
		<!--/col-9-->
	</div>
	<!--/row-->

</body>
</html>