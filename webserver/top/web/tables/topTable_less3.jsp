<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>TeamTOP - DataTables taking</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="../assets/img/icon.ico" type="image/x-icon" />

<!-- Fonts and icons -->
<script src="../assets/js/plugin/webfont/webfont.min.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Open+Sans:300,400,600,700" ]
		},
		custom : {
			"families" : [ "Flaticon", "Font Awesome 5 Solid",
					"Font Awesome 5 Regular", "Font Awesome 5 Brands" ],
			urls : [ '../../assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>

<!-- CSS Files -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/azzara.min.css">

<!--  Custom CSS 추가  -->
<link rel="stylesheet" href="../assets/css/teamTop.css">

</head>

<body>
	<div class="wrapper">
		<!--
		Tip 1: You can change the background color of the main header using: data-background-color="blue | purple | light-blue | green | orange | red"
		-->
		<div class="main-header" data-background-color="red">
			<!-- Logo Header -->
			<div class="logo-header">
				<a href="index.html" class="logo"> <img
					src="../assets/img/topteamlogomini2.png" alt="top logo" width = "68px" !important 
					class="navbar-brand">
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="collapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"> <i class="fa fa-bars"></i>
					</span>
				</button>
				<button class="topbar-toggler more">
					<i class="fa fa-ellipsis-v"></i>
				</button>
				<div class="navbar-minimize">
					<button class="btn btn-minimize btn-rounded">
						<i class="fa fa-bars"></i>
					</button>
				</div>
			</div>
			<!-- End Logo Header -->

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg">

				<div class="container-fluid">
					<div class="collapse" id="search-nav">
						<form class="navbar-left navbar-form nav-search mr-md-3">
							<div class="input-group">
								<div class="input-group-prepend">
									<button type="submit" class="btn btn-search pr-1">
										<i class="fa fa-search search-icon"></i>
									</button>
								</div>
								<input type="text" placeholder="Search ..." class="form-control">
							</div>
						</form>
					</div>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item toggle-nav-search hidden-caret"><a
							class="nav-link" data-toggle="collapse" href="#search-nav"
							role="button" aria-expanded="false" aria-controls="search-nav">
								<i class="fa fa-search"></i>
						</a></li>
						<li class="nav-item dropdown hidden-caret"><a
							class="nav-link dropdown-toggle" href="#" id="messageDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fa fa-envelope"></i>
						</a>
							<ul class="dropdown-menu messages-notif-box animated fadeIn"
								aria-labelledby="messageDropdown">
								<li>
									<div
										class="dropdown-title d-flex justify-content-between align-items-center">
										Messages <a href="#" class="small">Mark all as read</a>
									</div>
								</li>
								<li>
									<div class="message-notif-scroll scrollbar-outer">
										<div class="notif-center">
											<a href="#">
												<div class="notif-img">
													<img src="../assets/img/jm_denis.jpg" alt="Img Profile">
												</div>
												<div class="notif-content">
													<span class="subject">Jimmy Denis</span> <span
														class="block"> How are you ? </span> <span class="time">5
														minutes ago</span>
												</div>
											</a> <a href="#">
												<div class="notif-img">
													<img src="../assets/img/chadengle.jpg" alt="Img Profile">
												</div>
												<div class="notif-content">
													<span class="subject">Chad</span> <span class="block">
														Ok, Thanks ! </span> <span class="time">12 minutes ago</span>
												</div>
											</a> <a href="#">
												<div class="notif-img">
													<img src="../assets/img/mlane.jpg" alt="Img Profile">
												</div>
												<div class="notif-content">
													<span class="subject">Jhon Doe</span> <span class="block">
														Ready for the meeting today... </span> <span class="time">12
														minutes ago</span>
												</div>
											</a> <a href="#">
												<div class="notif-img">
													<img src="../assets/img/talha.jpg" alt="Img Profile">
												</div>
												<div class="notif-content">
													<span class="subject">Talha</span> <span class="block">
														Hi, Apa Kabar ? </span> <span class="time">17 minutes ago</span>
												</div>
											</a>
										</div>
									</div>
								</li>
								<li><a class="see-all" href="javascript:void(0);">See
										all messages<i class="fa fa-angle-right"></i>
								</a></li>
							</ul></li>
						<li class="nav-item dropdown hidden-caret"><a
							class="nav-link dropdown-toggle" href="#" id="notifDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fa fa-bell"></i> <span
								class="notification">4</span>
						</a>
							<ul class="dropdown-menu notif-box animated fadeIn"
								aria-labelledby="notifDropdown">
								<li>
									<div class="dropdown-title">You have 4 new notification</div>
								</li>
								<li>
									<div class="notif-center">
										<a href="#">
											<div class="notif-icon notif-primary">
												<i class="fa fa-user-plus"></i>
											</div>
											<div class="notif-content">
												<span class="block"> New user registered </span> <span
													class="time">5 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-success">
												<i class="fa fa-comment"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Rahmad commented on Admin </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-img">
												<img src="../assets/img/profile2.jpg" alt="Img Profile">
											</div>
											<div class="notif-content">
												<span class="block"> Reza send messages to you </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-danger">
												<i class="fa fa-heart"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Farrah liked Admin </span> <span
													class="time">17 minutes ago</span>
											</div>
										</a>
									</div>
								</li>
								<li><a class="see-all" href="javascript:void(0);">See
										all notifications<i class="fa fa-angle-right"></i>
								</a></li>
							</ul></li>
						<li class="nav-item dropdown hidden-caret"><a
							class="dropdown-toggle profile-pic" data-toggle="dropdown"
							href="#" aria-expanded="false">
								<div class="avatar-sm">
									<img src="../assets/img/profile.jpg" alt="..."
										class="avatar-img rounded-circle">
								</div>
						</a>
							<ul class="dropdown-menu dropdown-user animated fadeIn">
								<li>
									<div class="user-box">
										<div class="avatar-lg">
											<img src="../assets/img/profile.jpg" alt="image profile"
												class="avatar-img rounded">
										</div>
										<div class="u-text">
											<h4>Hizrian</h4>
											<p class="text-muted">hello@example.com</p>
											<a href="profile.html"
												class="btn btn-rounded btn-danger btn-sm">View Profile</a>
										</div>
									</div>								</li>
								<li>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">My Profile</a> <a class="dropdown-item" href="#">My
										Balance</a> <a class="dropdown-item" href="#">Inbox</a>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">Account Setting</a>
									<div class="dropdown-divider"></div> <a class="dropdown-item"
									href="#">Logout</a>
								</li>
							</ul></li>

					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>
		<!-- Sidebar -->
		<div class="sidebar">

			<div class="sidebar-wrapper scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..."
								class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample"
								aria-expanded="true"> <span> TeamTOP <span
									class="user-level">Administrator</span> <span class="caret"></span>
							</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample">
								<ul class="nav">
									<li><a href="#profile"> <span class="link-collapse">My
												Profile</span>
									</a></li>
									<li><a href="#edit"> <span class="link-collapse">Edit
												Profile</span>
									</a></li>
									<li><a href="#settings"> <span class="link-collapse">Settings</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item"><a href="index.html"> <i
								class="fas fa-home"></i>
								<p>Dashboard</p> <span class="badge badge-count">5</span>
						</a></li>
						<li class="nav-section"><span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
						</span>
							<h4 class="text-section">Components</h4></li>
						<li class="nav-item"><a data-toggle="collapse" href="#base">
								<i class="fas fa-layer-group"></i>
								<p>Base</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="base">
								<ul class="nav nav-collapse">
									<li><a href="components/avatars.html"> <span
											class="sub-item">Avatars</span>
									</a></li>
									<li><a href="components/buttons.html"> <span
											class="sub-item">Buttons</span>
									</a></li>
									<li><a href="components/gridsystem.html"> <span
											class="sub-item">Grid System</span>
									</a></li>
									<li><a href="components/panels.html"> <span
											class="sub-item">Panels</span>
									</a></li>
									<li><a href="components/notifications.html"> <span
											class="sub-item">Notifications</span>
									</a></li>
									<li><a href="components/sweetalert.html"> <span
											class="sub-item">Sweet Alert</span>
									</a></li>
									<li><a href="components/font-awesome-icons.html"> <span
											class="sub-item">Font Awesome Icons</span>
									</a></li>
									<li><a href="components/flaticons.html"> <span
											class="sub-item">Flaticons</span>
									</a></li>
									<li><a href="components/typography.html"> <span
											class="sub-item">Typography</span>
									</a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-toggle="collapse" href="#forms">
								<i class="fas fa-pen-square"></i>
								<p>Forms</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="forms">
								<ul class="nav nav-collapse">
									<li><a href="forms/forms.html"> <span class="sub-item">Basic
												Form</span>
									</a></li>

								</ul>
							</div></li>
						<li class="nav-item active submenu"><a data-toggle="collapse"
							href="#tables"> <i class="fas fa-table"></i>
								<p>Tables</p> <span class="caret"></span>
						</a>
							<div class="collapse show" id="tables">
								<ul class="nav nav-collapse">
									<li><a href="tables/tables.html"> <span
											class="sub-item">Basic Table</span>
									</a></li>
									<li class="active"><a href="tables/datatables.html"> <span
											class="sub-item">Datatables</span>
									</a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-toggle="collapse" href="#maps">
								<i class="fas fa-map-marker-alt"></i>
								<p>Maps</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="maps">
								<ul class="nav nav-collapse">
									<li><a href="maps/googlemaps.html"> <span
											class="sub-item">Google Maps</span>
									</a></li>
									<li><a href="maps/fullscreenmaps.html"> <span
											class="sub-item">Full Screen Maps</span>
									</a></li>
									<li><a href="maps/jqvmap.html"> <span class="sub-item">JQVMap</span>
									</a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-toggle="collapse" href="#charts">
								<i class="far fa-chart-bar"></i>
								<p>Charts</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="charts">
								<ul class="nav nav-collapse">
									<li><a href="charts/charts.html"> <span
											class="sub-item">Chart Js</span>
									</a></li>
									<li><a href="charts/sparkline.html"> <span
											class="sub-item">Sparkline</span>
									</a></li>
								</ul>
							</div></li>

						<li class="nav-item"><a href="widgets.html"> <i
								class="fas fa-desktop"></i>
								<p>Widgets</p> <span class="badge badge-count badge-success">4</span>
						</a></li>
						<li class="nav-item"><a data-toggle="collapse"
							href="#custompages"> <i class="fas fa-paint-roller"></i>
								<p>Custom Pages</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="custompages">
								<ul class="nav nav-collapse">
									<li><a href="login.html"> <span class="sub-item">Login
												& Register 1</span>
									</a></li>
									<li><a href="login2.html"> <span class="sub-item">Login
												& Register 2</span>
									</a></li>
									<li><a href="userprofile.html"> <span class="sub-item">User
												Profile</span>
									</a></li>
									<li><a href="404.html"> <span class="sub-item">404</span>
									</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!--  sidebar, navbar 끝  메인 페이지 시작 -->
		
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<h4 class="page-title">TEAM_TOP_DataTablesTest</h4>
						<ul class="breadcrumbs">
							<li class="nav-home"><a href="#"> <i
									class="flaticon-home"></i>
							</a></li>
							<li class="separator"><i class="flaticon-right-arrow"></i></li>
							<li class="nav-item"><a href="#">Tables</a></li>
							<li class="separator"><i class="flaticon-right-arrow"></i></li>
							<li class="nav-item"><a href="#">Datatables</a></li>
						</ul>
					</div>
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">재고량이 부족한 Less3</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="multi-filter-select"
										class="display table table-striped table-hover">
										<thead>
											<tr>
												<th>제품번호</th>
												<th>제품명</th>
												<th>제품위치</th>
												<th>남은수량</th>
												<th>마지막구매일</th>
												<th>제품개당가격</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>제품번호</th>
												<th>제품명</th>
												<th>제품위치</th>
												<th>남은수량</th>
												<th>마지막구매일</th>
												<th>제품개당가격</th>
											</tr>
										</tfoot>
										<tbody>
											<tr>
												<td>TOP000001</td>
												<td>제품1(30개한묶음)</td>
												<td>물류창고1</td>
												<td>3</td>
												<td>2020/04/01</td>
												<td>&#8361;300,000</td>
											</tr>
											<tr>
												<td>TOP000002</td>
												<td>제품2(30개한묶음)</td>
												<td>물류창고2</td>
												<td>5</td>
												<td>2020/04/02</td>
												<td>&#8361;150,000</td>
											</tr>
											<tr>
												<td>TOP000003</td>
												<td>제품3(30개한묶음)</td>
												<td>물류창고3</td>
												<td>10</td>
												<td>2020/04/03</td>
												<td>&#8361;240,000</td>
											</tr>
										
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="d-flex align-items-center ">
									<h4 class="card-title">즐겨찾기(Favorites)</h4>
								
							</div>
								<div id = "customTopBookMark">
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#addRowModal">
										<i class="fa fa-plus"></i> 즐겨찾기 추가
									</button>
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#modifyRowModal">
										<i class="fa fa-plus"></i> 즐겨찾기 수정
									</button>
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#deleteRowModal">
										<i class="fa fa-plus"></i> 즐겨찾기 삭제
									</button>
								</div>
							<div class="card-body">

								<!-- Modal 즐겨찾기 추가하기-->
								<div class="modal fade" id="addRowModal" tabindex="-1"
									role="dialog" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header no-bd">
												<h5 class="modal-title">
													<span class="fw-mediumbold"> 즐겨찾기</span> <span
														class="fw-light"> 추가하기 </span>
												</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<p class="small">Create a new row using this form, make
													sure you fill them all</p>
												<form>
													<div class="row">
														<div class="col-sm-12">
															<div class="form-group form-group-default">
																<label>Name</label> <input id="addName" type="text"
																	class="form-control" placeholder="fill name">
															</div>
														</div>
														<div class="col-md-6 pr-0">
															<div class="form-group form-group-default">
																<label>Position</label> <input id="addPosition"
																	type="text" class="form-control"
																	placeholder="fill position">
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group form-group-default">
																<label>Office</label> <input id="addOffice" type="text"
																	class="form-control" placeholder="fill office">
															</div>
														</div>
													</div>
												</form>
											</div>
											<div class="modal-footer no-bd">
												<button type="button" id="addRowButton"
													class="btn btn-primary">추가</button>
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">취소</button>
											</div>
										</div>
									</div>
								</div>

								<!--  즐겨찾기 수정하기 시작  -->
								<div class="card-body">
									<!-- Modal 즐겨찾기 수정하기 -->
									<div class="modal fade" id="modifyRowModal" tabindex="-1"
										role="dialog" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header no-bd">
													<h5 class="modal-title">
														<span class="fw-mediumbold"> 즐겨찾기</span> <span
															class="fw-light"> 수정하기 </span>
													</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<p class="small">Create a new row using this form, make
														sure you fill them all</p>
													<form>
														<div class="row">
															<div class="col-sm-12">
																<div class="form-group form-group-default">
																	<label>Name</label> <input id="addName" type="text"
																		class="form-control" placeholder="fill name">
																</div>
															</div>
															<div class="col-md-6 pr-0">
																<div class="form-group form-group-default">
																	<label>Position</label> <input id="addPosition"
																		type="text" class="form-control"
																		placeholder="fill position">
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group form-group-default">
																	<label>Office</label> <input id="addOffice" type="text"
																		class="form-control" placeholder="fill office">
																</div>
															</div>
														</div>
													</form>
												</div>
												<div class="modal-footer no-bd">
													<button type="button" id="modifyRowButton"
														class="btn btn-primary">수정</button>
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">취소</button>
												</div>
											</div>
										</div>
									</div>


									<div class="card-body">
										<!-- Modal 즐겨찾기 삭제하기 -->
										<div class="modal fade" id="deleteRowModal" tabindex="-1"
											role="dialog" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header no-bd">
														<h5 class="modal-title">
															<span class="fw-mediumbold"> 즐겨찾기</span> <span
																class="fw-light"> 삭제하기 </span>
														</h5>
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">
														<p class="small">Create a new row using this form,
															make sure you fill them all</p>
														<form>
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group form-group-default">
																		<label>삭제하시겠습니까?</label>
																	</div>
																</div>
															</div>
														</form>
													</div>
													<div class="modal-footer no-bd">
														<button type="button" id="deleteRowButton"
															class="btn btn-primary">예</button>
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">취소</button>
													</div>
												</div>
											</div>
										</div>

										<div class="table-responsive">
											<table id="add-row"
												class="display table table-striped table-hover">
												<thead>
													<tr>
														<th>제품명</th>
														<th>제품위치</th>
														<th>재고량</th>
														<th style="width: 10%">기능1</th>
														<th style="width: 10%">기능2</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>제품명</th>
														<th>제품위치</th>
														<th>재고량</th>
														<th>하단기능1</th>
														<th>하단기능2</th>
													</tr>
												</tfoot>
												<tbody>
													<tr>
														<td>즐겨찾기1</td>
														<td>물류창고5</td>
														<td>5단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기2</td>
														<td>물류창고4</td>
														<td>3단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기3</td>
														<td>물류창고3</td>
														<td>3단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기4</td>
														<td>물류창고4</td>
														<td>4단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기5</td>
														<td>물류창고5</td>
														<td>5단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기6</td>
														<td>물류창고6</td>
														<td>6단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기7</td>
														<td>물류창고7</td>
														<td>7단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기8</td>
														<td>물류창고8</td>
														<td>8단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기9</td>
														<td>물류창고9</td>
														<td>9단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기10</td>
														<td>물류창고10</td>
														<td>10단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>즐겨찾기11</td>
														<td>물류창고11</td>
														<td>5단위수량</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="상세보기">
																	<i class="fa fa-edit">상세보기</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="바로구매하기">
																	<i class="fa fa-times">바로구매</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="즐겨찾기 수정">
																	<i class="fa fa-edit">항목수정</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="즐겨찾기 삭제">
																	<i class="fa fa-times">항목삭제</i>
																</button>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
				<!--  메인 페이지 끝 -->

			
		</div>
		<!--   Core JS Files   -->
		<script src="../assets/js/core/jquery.3.2.1.min.js"></script>
		<script src="../assets/js/core/popper.min.js"></script>
		<script src="../assets/js/core/bootstrap.min.js"></script>
		<!-- jQuery UI -->
		<script
			src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
		<script
			src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
		<!-- Bootstrap Toggle -->
		<script
			src="../assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
		<!-- jQuery Scrollbar -->
		<script
			src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
		<!-- Datatables -->
		<script src="../assets/js/plugin/datatables/datatables.min.js"></script>
		<!-- Azzara JS -->
		<script src="../assets/js/ready.min.js"></script>
		<!-- Azzara DEMO methods, don't include it in your project! -->
		<script src="../assets/js/setting-demo.js"></script>
		<script>
			$(document)
					.ready(
							function() {
								$('#basic-datatables').DataTable({});

								$('#multi-filter-select')
										.DataTable(
												{
													"pageLength" : 5,
													initComplete : function() {
														this
																.api()
																.columns()
																.every(
																		function() {
																			var column = this;
																			var select = $(
																					'<select class="form-control"><option value=""></option></select>')
																					.appendTo(
																							$(
																									column
																											.footer())
																									.empty())
																					.on(
																							'change',
																							function() {
																								var val = $.fn.dataTable.util
																										.escapeRegex($(
																												this)
																												.val());

																								column
																										.search(
																												val ? '^'
																														+ val
																														+ '$'
																														: '',
																												true,
																												false)
																										.draw();
																							});

																			column
																					.data()
																					.unique()
																					.sort()
																					.each(
																							function(
																									d,
																									j) {
																								select
																										.append('<option value="'+d+'">'
																												+ d
																												+ '</option>')
																							});
																		});
													}
												});

								// Add Row
								$('#add-row').DataTable({
									"pageLength" : 5,
								});

								var action = '<td> <div class="form-button-action"> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task"> <i class="fa fa-edit"></i> </button> <button type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove"> <i class="fa fa-times"></i> </button> </div> </td>';

								$('#addRowButton')
										.click(
												function() {
													$('#add-row')
															.dataTable()
															.fnAddData(
																	[
																			$(
																					"#addName")
																					.val(),
																			$(
																					"#addPosition")
																					.val(),
																			$(
																					"#addOffice")
																					.val(),
																			action ]);
													$('#addRowModal').modal(
															'hide');

												});
							});
		</script>
</body>
</html>