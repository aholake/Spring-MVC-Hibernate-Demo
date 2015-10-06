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

<script src="js/angular.min.js"></script>

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
			<div class="container-left col-md-3 hidden-xs">
				<div class="menu-left col-md-12 border">
					<h4>Điện Thoại</h4>
					<p>
						<a href="#">xem tất cả</a>
					</p>
					<p>
						<a href="#" class="a-black">Iphone</a>
					</p>
					<p>
						<a href="#" class="a-black">Sony</a>
					</p>
					<p>
						<a href="#" class="a-black">Asus</a>
					</p>
				</div>

			</div>
			<div class="container-right col-md-9">
				<div class="wrapper-header-posts col-md-12 overflow-auto">
					<div
						class="wrapper-avatar col-md-2 col-sm-2 col-xs-2 margin padding">
						<img src="images/account/nguyentuananh.jpg"
							class="img-responsive img">
					</div>
					<div class="wrapper-avatar col-md-10 col-sm-10 col-xs-10">
						<h4 class="h4">
							<a href=""><b>Nguyen Tuan Anh</b></a>
						</h4>
						<p class="margin-top-10px">
							<span class="glyphicon glyphicon-eye-open"></span> 500 <span
								class="glyphicon glyphicon-comment"></span> 100
						</p>
						<p>Posts: 100</p>
						<p>Join Date: 13/4/2015</p>
					</div>
				</div>
				<br />
				<hr class="hr" />
				<div class="wrapper-posts col-md-12 overflow-auto">
					<h4>
						<a href="" class="a-black"><b><span
								class="glyphicon glyphicon-pushpin span"></span> Bán xe hơi bão
								hành còn 1 năm gía bất ngờ!!!</b></a>
					</h4>
					<p>
						<span class="glyphicon glyphicon-calendar span"></span> 13/4/2015
					</p>
					<p>Viet cai quai gi bay gio</p>
					<p class="pull-right">
						<a href="" class="a-black margin-right-5px"><span
							class="glyphicon glyphicon-hand-right"></span> 100</a> <a href=""
							class="a-black"><span class="glyphicon glyphicon-thumbs-down"></span>
							100</a>
					</p>
				</div>
				<div class="type-show col-md-12 margin padding">
					<div class="dropdown">
						<a class="btn dropdown-toggle" type="button" id="dropdownMenú"
							data-toggle="dropdown" aria-expanded="true"> Sắp xếp <span
							class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenú">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Theo ngày</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">Theo bình chọn</a></li>
						</ul>
					</div>
				</div>
				<div class="wrapper-comment col-md-12 margin padding overflow-auto">
					<div
						class="comment-item col-md-12 margin padding overflow-auto margin-top-5px">
						<div
							class="col-md-12 border border-radius padding-top-10px overflow-auto">
							<div class="col-md-12 overflow-auto margin padding ">
								<div class="col-md-6 col-sm-6 col-xs-6 margin padding ">
									<div
										class="wrapper-avatar col-md-2 col-sm-2 col-xs-2 margin padding">
										<img src="images/account/nguyentuananh.jpg"
											class="img-responsive img">
									</div>
									<div class="wrapper-avatar col-md-10 col-sm-10 col-xs-10">
										<h4 class="h4">
											<a href=""><b>Nguyen Tuan Anh</b></a>
										</h4>
										<p class="p">Posts: 100</p>
										<p class="p">Join Date: 13/4/2015</p>
									</div>
								</div>
								<div
									class="col-md-6 col-sm-6 col-xs-6 text-align-right margin padding ">
									#1</div>
							</div>
							<hr class="hr" />
							<h6>
								<a href="" class="a-black"><b><span
										class="glyphicon glyphicon-pushpin span"></span> Bán xe hơi
										bão hành còn 1 năm gía bất ngờ!!!</b></a>
							</h6>
							<p>binh luan</p>
							<p class="pull-right">
								<a href="" class="a-black margin-right-5px"><span
									class="glyphicon glyphicon-hand-right"></span> 100</a> <a href=""
									class="a-black"><span
									class="glyphicon glyphicon-thumbs-down"></span> 100</a>
							</p>
						</div>
					</div>
					<div
						class="comment-item col-md-12 margin padding overflow-auto margin-top-5px">
						<div
							class="col-md-12 border border-radius padding-top-10px overflow-auto">
							<div class="col-md-12 overflow-auto margin padding ">
								<div class="col-md-6 col-sm-6 col-xs-6 margin padding ">
									<div
										class="wrapper-avatar col-md-2 col-sm-2 col-xs-2 margin padding">
										<img src="images/account/nguyentuananh.jpg"
											class="img-responsive img">
									</div>
									<div class="wrapper-avatar col-md-10 col-sm-10 col-xs-10">
										<h4 class="h4">
											<a href=""><b>Nguyen Tuan Anh</b></a>
										</h4>
										<p class="p">Posts: 100</p>
										<p class="p">Join Date: 13/4/2015</p>
									</div>
								</div>
								<div
									class="col-md-6 col-sm-6 col-xs-6 text-align-right margin padding ">
									#2</div>
							</div>
							<hr class="hr" />
							<h6>
								<a href="" class="a-black"><b><span
										class="glyphicon glyphicon-pushpin span"></span> Bán xe hơi
										bão hành còn 1 năm gía bất ngờ!!!</b></a>
							</h6>
							<p>binh luan</p>
							<p class="pull-right">
								<a href="" class="a-black margin-right-5px"><span
									class="glyphicon glyphicon-hand-right"></span> 100</a> <a href=""
									class="a-black"><span
									class="glyphicon glyphicon-thumbs-down"></span> 100</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end .container -->
	<!-- start .menu-footer-->
	<div class="container menu-footer">
		<div class="row">
			<div class="wrapper-menu-footer overflow-auto border-top">
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Mua Bán Đồ Cũ</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-phone menu-icon" aria-hidden="true"></span>Điện
							thoại - Viễn thông</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-floppy-disk menu-icon"
							aria-hidden="true"></span>Máy tính - Linh kiện</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-tree-deciduous menu-icon"
							aria-hidden="true"></span>Điện tử - Điện lạnh</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-bed menu-icon" aria-hidden="true"></span>Ô
							tô - Xe máy - Xe đạp</a>
					</p>
				</div>
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Nhà Đất</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
							mặt tiền</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-calendar menu-icon" aria-hidden="true"></span>Chung
							cư</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
							trọ</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
							nhượng quán</a>
					</p>
				</div>
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Nhà Đất</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
							mặt tiền</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-calendar menu-icon" aria-hidden="true"></span>Chung
							cư</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
							trọ</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
							nhượng quán</a>
					</p>
				</div>
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Nhà Đất</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
							mặt tiền</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-calendar menu-icon" aria-hidden="true"></span>Chung
							cư</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
							trọ</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
							nhượng quán</a>
					</p>
				</div>
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Nhà Đất</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
							mặt tiền</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-calendar menu-icon" aria-hidden="true"></span>Chung
							cư</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
							trọ</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
							nhượng quán</a>
					</p>
				</div>
				<div class="col-md-2 col-xs-6 col-menu-footer-item">
					<h4>
						<b>Nhà Đất</b>
					</h4>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-road menu-icon" aria-hidden="true"></span>Nhà
							mặt tiền</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-calendar menu-icon" aria-hidden="true"></span>Chung
							cư</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Phòng
							trọ</a>
					</p>
					<p>
						<a href="#" class="a-black"><span
							class="glyphicon glyphicon-home menu-icon" aria-hidden="true"></span>Sang
							nhượng quán</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer footer-border-top" ng-controller="TitleFooter">
		{{data.title}}</div>
	<script src="js/my-angular.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/my-file.js"></script>
</body>
</html>