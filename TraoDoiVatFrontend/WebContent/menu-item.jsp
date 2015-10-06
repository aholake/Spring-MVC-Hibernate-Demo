<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link href="css/scroll.css" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">

</head>
<body ng-app="myapp">
	<div class="menu-top">
		<nav class="navbar navbar-inverse navbar-static-top navbar-fixed-top">
		<div class="container">
			<div class="navbar-header" ng-controller="BrandController">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#menu">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="" class="navbar-brand"><b class="brand">{{data.brand}}</b></a>



			</div>

			<div class="navbar-collapse collapse" id="menu">
				<ul class="nav navbar-nav">
					<li class="menu-hover"><a href="">Trang chủ</a></li>
					<li class="=dropdown menu-hover"><a data-toggle="dropdown"
						href="">Mua bán đồ cũ <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href=""><span
									class="glyphicon glyphicon-phone menu-icon" aria-hidden="true"></span>Điện
									thoại - Viễn thông</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-floppy-disk menu-icon"
									aria-hidden="true"></span>Máy tính - Linh kiện</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-tree-deciduous menu-icon"
									aria-hidden="true"></span>Điện tử - Điện lạnh</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-bed menu-icon" aria-hidden="true"></span>Ô
									tô - Xe máy - Xe đạp</a></li>

						</ul></li>
					<li class="=dropdown menu-hover"><a data-toggle="dropdown"
						href="">Nhà đất <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href=""><span
									class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
									mặt tiền</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-calendar menu-icon"
									aria-hidden="true"></span>Chung cư</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
									trọ</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
									nhượng quán</a></li>

						</ul></li>
					<li class="=dropdown menu-hover"><a data-toggle="dropdown"
						href="">Dịch vụ <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href=""><span
									class="glyphicon glyphicon-euro menu-icon" aria-hidden="true"></span>Thu
									mua đổ cũ</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Thanh
									lý tỗn kho</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-tag menu-icon" aria-hidden="true"></span>Đấu
									giá</a></li>
						</ul></li>
					<li class="=dropdown menu-hover"><a data-toggle="dropdown"
						href="">Giải trí <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href=""><span
									class="glyphicon glyphicon-user menu-icon" aria-hidden="true"></span>Chia
									sẻ - Hỏi đáp - Hướng dẫn</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-list-alt menu-icon"
									aria-hidden="true"></span>Tin tức - Tin mới - Tin hay - Tin vui</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-music menu-icon" aria-hidden="true"></span>Nhạc
									- Phim - Giải trí - Ăn uống</a></li>
						</ul></li>
					<li class="deopdown menu-hover"><a data-toggle="dropdown"
						href="">Khác <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="" data-toggle="modal" data-target="#introduce"><span
									class="glyphicon glyphicon-star menu-icon" aria-hidden="true"></span>Giới
									thiệu</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal"
								data-target="#sendMessage"><span
									class="glyphicon glyphicon-envelope menu-icon"
									aria-hidden="true"></span>Liên hệ</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal" data-target="#provisions"><span
									class="glyphicon glyphicon-duplicate menu-icon"
									aria-hidden="true"></span>Quy định sử dụng</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="=dropdown menu-hover"><a data-toggle="dropdown"
						href="">Tài khoản <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="" data-toggle="modal" data-target="#login"><span
									class="glyphicon glyphicon-user menu-icon" aria-hidden="true"></span>Đăng
									nhập</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal" data-target="#registry"><span
									class="glyphicon glyphicon-lock menu-icon" aria-hidden="true"></span>Đăng
									ký</a></li>
							<div class="divider"></div>
							<li><a href=""><span
									class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Trang
									cá nhân</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal"
								data-target="#settingAccount"><span
									class="glyphicon glyphicon-envelope menu-icon"
									aria-hidden="true"></span>Hòm thư</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal"
								data-target="#information"><span
									class="glyphicon glyphicon-info-sign menu-icon"
									aria-hidden="true"></span>Thông tin cá nhân</a></li>
							<div class="divider"></div>
							<li><a href="" data-toggle="modal"
								data-target="#settingAccount"><span
									class="glyphicon glyphicon-wrench menu-icon" aria-hidden="true"></span>Thiết
									lập tài khoản</a></li>
						</ul></li>
				</ul>
				<!--<form action="" class="navbar-form navbar-right" method="post">
				            	<div class="form-group">
						            <input type="text" class="form-control" placeholder="Nhập thông tin tìm kiếm">
						        </div>
						        <div class="form-group">
						            <button type="submit" class="btn btn-default">Tìm Kiếm</button>
						        </div>
				            </form>-->
			</div>
		</div>
		</nav>
	</div>

	<!-- ========================= dialog login ==============================-->

	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labeledby="loginModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="loginModal">
						<span class="glyphicon glyphicon-user menu-icon"
							aria-hidden="true"></span>Đăng Nhập
					</h4>
				</div>
				<div class="modal-body">
					<p>
						<font color="red">Thông tin bắt buộc!</font>
					</p>
					<form>
						<div class="form-group">
							<label for="recipient-txtUsername" class="control-label">Tài
								khoản:</label> <input type="text" class="form-control"
								id="recipient-txtUsername">
						</div>
						<div class="form-group">
							<label for="recipient-txtPassword" class="control-label">Mật
								khẩu:</label> <input type="password" class="form-control"
								id="recipient-txtPassword">
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" id="cbSaveAccount"
								value=""> Ghi nhớ tài khoản.
							</label>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary" id="btnLogin">Đăng
						nhập</button>
					<script type="text/javascript">
       						$('#btnLogin').click(function(){
				        		 <!-- TODO: sendMessage -->
				        	});
       					</script>
				</div>
			</div>
		</div>
	</div>

	<!-- ========================= dialog registry ==============================-->

	<div class="modal fade bs-example-modal-lg" id="registry" tabindex="-1"
		role="dialog" aria-labeledby="registryModal" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="registryModal">
						<span class="glyphicon glyphicon-lock menu-icon"
							aria-hidden="true"></span>Đăng ký tài khoản
					</h4>
				</div>
				<div class="modal-body overflow-auto">
					<p class="margin-left-10px">
						<font color="red">Thông tin bắt buộc!</font>
					</p>
					<form>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<label for="recipient-txtRUsername" class="control-label">Tài
									khoản:</label> <input type="text" class="form-control"
									id="recipient-txtRUsername">
							</div>
							<div class="form-group">
								<label for="recipient-txtRPassword" class="control-label">Mật
									khẩu:</label> <input type="password" class="form-control"
									id="recipient-txtRPassword">
							</div>
							<div class="form-group">
								<label for="recipient-txtRRPassword" class="control-label">Nhập
									lại mật khẩu:</label> <input type="password" class="form-control"
									id="recipient-txtRRPassword">
							</div>
							<div class="form-group">
								<label for="recipient-txtRName" class="control-label">Họ
									tên:</label> <input type="text" class="form-control"
									id="recipient-txtRName">
							</div>
							<div class="form-group">
								<label for="recipient-txtREmail" class="control-label">Email:</label>
								<input type="text" class="form-control" id="recipient-txtREmail">
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<label for="recipient-txtRPhone" class="control-label">Số
									điện thoại:</label> <input type="text" class="form-control"
									id="recipient-txtRPhone">
							</div>
							<div class="form-group">
								<label for="recipient-txtRBirthday" class="control-label">Số
									điện thoại:</label> <input type="text" class="form-control"
									id="recipient-txtRPhone">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary" id="btnLogin">Đăng
						nhập</button>
					<script type="text/javascript">
       						$('#btnLogin').click(function(){
				        		 <!-- TODO: sendMessage -->
				        	});
       					</script>
				</div>
			</div>
		</div>
	</div>

	<!-- ========================= dialog information user ==============================-->

	<div class="modal fade bs-example-modal-lg" id="information"
		tabindex="-1" role="dialog" aria-labeledby="informationModal"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="informationModal">
						<span class="glyphicon glyphicon-user menu-icon"
							aria-hidden="true"></span>Thông tin cá nhân
					</h4>
				</div>
				<div class="modal-body overflow-auto">
					<div class="col-md-4 hidden-xs">
						<div class="wrapper-avatar">
							<img src="images/account/tuananh.jpg" class="img-responsive img">
						</div>
					</div>
					<div class="col-md-8 col-xs-12">a</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ========================= dialog introduce ==============================-->

	<div class="modal fade" id="introduce" tabindex="-1" role="dialog"
		aria-labelledby="introduceModal" aira-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="trye">&times;</span>
					</button>
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-star menu-icon"
							aria-hidden="true"></span><a href="#"><b>TraoDoiVat.DH12DT</b></a>
					</h4>
				</div>
				<div class="modal-body">
					<p>.......</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ========================= dialog send message ==============================-->

	<div class="modal fade" id="sendMessage" tabindex="-1" role="dialog"
		aria-labeledby="sendMessageModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="sendMessageModal">
						<span class="glyphicon glyphicon-envelope menu-icon"
							aria-hidden="true"></span>Gửi thông tin liên hệ
					</h4>
				</div>
				<div class="modal-body">
					<p>
						<font color="red">Thông tin bắt buộc!</font>
					</p>
					<form>
						<div class="form-group">
							<label for="recipient-name" class="control-label">Email:</label>
							<input type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">Nội dung:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary" id="btnSendMessage">Gửi
						tin</button>
					<script type="text/javascript">
       						$('#btnSendMessage').click(function(){
				        		 <!-- TODO: sendMessage -->
				        	});
       					</script>
				</div>
			</div>
		</div>
	</div>

	<!-- ========================= dialog quy dinh su dung ==============================-->

	<div class="modal fade" id="provisions" tabindex="-1" role="dialog"
		aria-labelledby="privisionsModal" aira-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="trye">&times;</span>
					</button>
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-duplicate menu-icon"
							aria-hidden="true"></span>Quy định sử dụng của <a href="#"><b>TraoDoiVat.DH12DT</b></a>
					</h4>
				</div>
				<div class="modal-body">
					<p>.......</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ======================== container - center ==========================-->

	<!--end sticky menu-->
	<div class="container margin-top-30px">
		<div class="row">
			<div class="wrapper-header overflow-auto">
				<div class="col-md-3 col-xs-12">
					<img src="images/logo.png">
				</div>
				<div class="col-md-6 col-xs-12">
					<div class="col-md-3 margin padding">
						<select class="form-control">
							<option>Điện thoại</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
					<div class="col-md-9 margin padding">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Search!</button>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-xs-12">
					<h4 class="h4">
						<b>Liên hệ quảng cáo</b> <a class="btn" data-toggle="collapse"
							href="#collapse" aria-expanded="false" aria-controls="collapse"><span
							class="glyphicon glyphicon-chevron-down"></span></a>
					</h4>
					<div class="collapse" id="collapse">
						<div class="well">
							<p>
								1. <b class="color-red">01653.164.732</b> gặp anh <b
									class="color-red">Lộc</b>
							</p>
							<p>
								2. <b class="color-red">01653.354.390</b> gặp anh <b
									class="color-red">Mạnh</b>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="wrapper-slider overflow-auto">
				<h2 class="text-align-center h2 wow fadeInDown"
					data-wow-duration="2s">
					Đăng tin dể dàng và nhanh chóng
					</h1>
					<div class="slider hidden-xs overflow-auto">
						<div class="col-md-3 wow fadeInLeft" data-wow-duration="2s"
							data-wow-delay="1s">
							<div class="circle">
								<img src="images/images/work.png" class="img-reponsive">
							</div>
							<div class="text-align-center">
								<div class="stt">1</div>
								<p>
									<b>Đăng việc</b>
								</p>
							</div>
						</div>
						<div class="col-md-3 wow fadeInLeft" data-wow-duration="2s"
							data-wow-delay="2s">
							<div class="circle">
								<img src="images/images/search.png" class="img-reponsive">
							</div>
							<div class="text-align-center">
								<div class="stt">2</div>
								<p>
									<b>Tìm kiếm</b>
								</p>
							</div>
						</div>
						<div class="col-md-3 wow fadeInLeft" data-wow-duration="2s"
							data-wow-delay="3s">
							<div class="circle">
								<img src="images/images/vip.png" class="img-reponsive">
							</div>
							<div class="text-align-center">
								<div class="stt">3</div>
								<p>
									<b>Đăng ký VIP</b>
								</p>
							</div>
						</div>
						<div class="col-md-3 wow fadeInLeft" data-wow-duration="2s"
							data-wow-delay="4s">
							<div class="circle">
								<img src="images/images/time.png" class="img-reponsive">
							</div>
							<div class="text-align-center">
								<div class="stt">4</div>
								<p>
									<b>Quản lý</b>
								</p>
							</div>
						</div>
					</div>
					<div
						class="wrapper-btn-posts text-align-center margin-top-10px wow fadeInDown"
						data-wow-deration="2s" data-wow-delay="5s">
						<p style="color: red;">Bạn muốn đăng tin ngay bây giờ?</p>
						<div class="btn-posts">
							<button type="button" class="btn btn-info btn-lg btn-block">Đăng
								Tin Nhanh</button>
						</div>
					</div>
			</div>
		</div>
	</div>
	<hr class="hr" />
	<div class="container">
		<div class="row">
			<h2 class="h2 margin padding item-div-bg wow slideInDown"
				data-wow-deration="2s">
				<span class="glyphicon glyphicon-tag span"></span> Mua bán đồ cũ <font
					size="4" color="black"><span
					class="glyphicon glyphicon-envelope span"></span> 444, <span
					class="glyphicon glyphicon-comment span"></span> 1000</font>
				</h4>
				<div class="wrapper-menu-item overflow-auto">
					<div class="col-md-12 col-xs-12 margin padding">
						<h4 class="title wow slideInDown" data-wow-deration="2s">
							<a href="" class="a-black"><span
								class="glyphicon glyphicon-phone menu-icon span"
								aria-hidden="true"></span>Điện thoại - Viễn thông </a><font size="2"
								color="black"><span
								class="glyphicon glyphicon-envelope span"></span> 444, <span
								class="glyphicon glyphicon-comment span"></span> 1000</font>
						</h4>
						<table class="table margin padding">
							<thead>
								<tr class="border-bottom">
									<td class="col-md-8 col-xs-8 margin padding wow slideInDown"
										data-wow-deration="2s"><span
										class="glyphicon glyphicon-list-alt span"></span> Bài đăng mới</td>
									<td class="col-md-2 col-xs-2 margin padding wow slideInDown"
										data-wow-deration="2s"><span
										class="glyphicon glyphicon-time span"></span> Thời gian</td>
									<td class="col-md-1 col-xs-1 margin padding wow slideInDown"
										ddata-wow-deration="2s"><span
										class="glyphicon glyphicon-comment span"></span> Trả lời</td>
									<td class="col-md-1 col-xs-1 margin padding wow slideInDown"
										data-wow-deration="2s"><span
										class="glyphicon glyphicon-eye-open span"></span> Lần xem</td>
								</tr>
							</thead>
							<body>
							<tr class="wrapper-item wow slideInLeft" data-wow-deration="2s"
								data-wow-delay="1s">
								<td class="margin padding">
									<p>
										<a class="a-black" href=""><b>Nơi các thành viên có
												thể đấu giá sản phẩm của mình</b></a>
									</p>
									<p>Các thành viên có thể mua bán, trao đổi các loại cây
										cảnh, hoa cảnh và các vật dụng có liên quan</p>
									<p class="pull-right">
										<span class="glyphicon glyphicon-star star margin-right-5px"></span><span
											class="glyphicon glyphicon-star star margin-right-5px"></span>
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-map-marker span"></span> [Hà
										Nội]
									</p>
									<p>
										bởi <a>A6terabyte.NTA</a>
									</p>
									<p>
										<span class="glyphicon glyphicon-calendar"></span> 07-10-2014
										09:20
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-comment span"></span><b>
											100</b>
									</p>
								</td>
								<td class="margin paddings">
									<p>
										<span class="glyphicon glyphicon-eye-open span"></span><b>
											100</b>
									</p>
								</td>
							</tr>
							<tr class="wrapper-item wow slideInLeft" data-wow-deration="2s"
								data-wow-delay="1.5s">
								<td class="margin padding">
									<p>
										<a class="a-black" href=""><b>Nơi các thành viên có
												thể đấu giá sản phẩm của mình</b></a>
									</p>
									<p>Các thành viên có thể mua bán, trao đổi các loại cây
										cảnh, hoa cảnh và các vật dụng có liên quan</p>
									<p class="pull-right">
										<span class="glyphicon glyphicon-star star margin-right-5px"></span><span
											class="glyphicon glyphicon-star star margin-right-5px"></span>
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-map-marker span"></span> [Hà
										Nội]
									</p>
									<p>
										bởi <a>A6terabyte.NTA</a>
									</p>
									<p>
										<span class="glyphicon glyphicon-calendar"></span> 07-10-2014
										09:20
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-comment span"></span><b>
											100</b>
									</p>
								</td>
								<td class="margin paddings">
									<p>
										<span class="glyphicon glyphicon-eye-open span"></span><b>
											100</b>
									</p>
								</td>
							</tr>
							<tr class="wrapper-item wow slideInLeft" data-wow-deration="2s"
								data-wow-delay="2s">
								<td class="margin padding">
									<p>
										<a class="a-black" href=""><b>Nơi các thành viên có
												thể đấu giá sản phẩm của mình</b></a>
									</p>
									<p>Các thành viên có thể mua bán, trao đổi các loại cây
										cảnh, hoa cảnh và các vật dụng có liên quan</p>
									<p class="pull-right">
										<span class="glyphicon glyphicon-star star margin-right-5px"></span><span
											class="glyphicon glyphicon-star star margin-right-5px"></span>
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-map-marker span"></span> [Hà
										Nội]
									</p>
									<p>
										bởi <a>A6terabyte.NTA</a>
									</p>
									<p>
										<span class="glyphicon glyphicon-calendar"></span> 07-10-2014
										09:20
									</p>
								</td>
								<td class="margin padding">
									<p>
										<span class="glyphicon glyphicon-comment span"></span><b>
											100</b>
									</p>
								</td>
								<td class="margin paddings">
									<p>
										<span class="glyphicon glyphicon-eye-open span"></span><b>
											100</b>
									</p>
								</td>
							</tr>
</body>
</table>
<div class="page col-md-12 margin padding">
	<nav>
	<ul class="pagination">
		<li><a href="#" aria-label="Previous"> <span
				aria-hidden="true">&laquo;</span>
		</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
		</a></li>
	</ul>
	</nav>
</div>
</div>
</div>
<hr class="hr-footer" />
</div>
</div>
<hr />
<!-- end .container -->

<!-- start .menu-footer-->
<div class="container menu-footer">
	<div class="row">
		<div class="wrapper-menu-footer overflow-auto border-top">
			<div class="col-md-2 col-xs-6 col-menu-footer-item wow slideInDown"
				data-wow-deration="2s">
				<h4>
					<b>Mua Bán Đồ Cũ</b>
				</h4>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-phone menu-icon span"
						aria-hidden="true"></span>Điện thoại - Viễn thông</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-floppy-disk menu-icon span"
						aria-hidden="true"></span>Máy tính - Linh kiện</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-tree-deciduous menu-icon span"
						aria-hidden="true"></span>Điện tử - Điện lạnh</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-bed menu-icon span" aria-hidden="true"></span>Ô
						tô - Xe máy - Xe đạp</a>
				</p>
			</div>
			<div class="col-md-2 col-xs-6 col-menu-footer-item wow slideInDown"
				data-wow-deration="2s" data-wow-delay="1s">
				<h4>
					<b>Nhà Đất</b>
				</h4>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-road menu-icon span" aria-hidden="true"></span>Nhà
						mặt tiền</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-calendar menu-icon span"
						aria-hidden="true"></span>Chung cư</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Phòng
						trọ</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Sang
						nhượng quán</a>
				</p>
			</div>
			<div class="col-md-2 col-xs-6 col-menu-footer-item wow slideInDown"
				data-wow-deration="2s" data-wow-delay="2s">
				<h4>
					<b>Nhà Đất</b>
				</h4>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-road menu-icon span" aria-hidden="true"></span>Nhà
						mặt tiền</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-calendar menu-icon span"
						aria-hidden="true"></span>Chung cư</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Phòng
						trọ</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Sang
						nhượng quán</a>
				</p>
			</div>
			<div class="col-md-2 col-xs-6 col-menu-footer-item wow slideInDown"
				data-wow-deration="2s" data-wow-delay="3s">
				<h4>
					<b>Nhà Đất</b>
				</h4>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-road menu-icon span" aria-hidden="true"></span>Nhà
						mặt tiền</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-calendar menu-icon span"
						aria-hidden="true"></span>Chung cư</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Phòng
						trọ</a>
				</p>
				<p>
					<a href="#" class="a-black"><span
						class="glyphicon glyphicon-home menu-icon span" aria-hidden="true"></span>Sang
						nhượng quán</a>
				</p>
			</div>
			<div class="col-md-4 col-xs-12 col-menu-footer-item wow slideInDown"
				data-wow-deration="2s" data-wow-delay="4s">
				<h4>
					<b>Chúng tôi trên mạng xã hội</b>
				</h4>
				<div id="fb-root"></div>
				<script>(function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
				<div class="fb-follow"
					data-href="https://www.facebook.com/pages/H%E1%BB%99i-Mua-B%C3%A1n-Rao-V%E1%BA%B7t-Trao-%C4%90%E1%BB%95i-L%E1%BB%9Bn-Nh%E1%BA%A5t-S%C3%A0i-G%C3%B2n-Hu%E1%BB%B3nh-H%E1%BB%93ng-Qu%C3%A2n-/1502816679946913?fref=ts"
					data-colorscheme="light" data-layout="standard"
					data-show-faces="true"></div>
			</div>
		</div>
	</div>
</div>
<div class="footer footer-border-top" ng-controller="TitleFooter">
	---------- <img src="images/logo.png" /> ----------
	<p>----------</p>
	<p>{{data.copyright}}</p>
	<p>{{data.address}}</p>
	<p>{{data.email}} - {{data.phone}}</p>
</div>
<script src="js/angular.min.js"></script>
<script src="js/my-angular.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/my-file.js"></script>
<script src="js/wow.min.js"></script>
<script>
        new WOW().init();
    </script>
</body>
</html>