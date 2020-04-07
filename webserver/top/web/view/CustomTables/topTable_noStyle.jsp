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

<!--  Custom CSS �߰�  -->
<link rel="stylesheet" href="../assets/css/teamTop.css">

</head>

<body>
		<!--  sidebar, navbar ��  ���� ������ ���� -->
		
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
								<h4 class="card-title">����� ������ Less3</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="multi-filter-select"
										class="display table table-striped table-hover">
										<thead>
											<tr>
												<th>��ǰ��ȣ</th>
												<th>��ǰ��</th>
												<th>��ǰ��ġ</th>
												<th>��������</th>
												<th>������������</th>
												<th>��ǰ���簡��</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>��ǰ��ȣ</th>
												<th>��ǰ��</th>
												<th>��ǰ��ġ</th>
												<th>��������</th>
												<th>������������</th>
												<th>��ǰ���簡��</th>
											</tr>
										</tfoot>
										<tbody>
											<tr>
												<td>TOP000001</td>
												<td>��ǰ1(30���ѹ���)</td>
												<td>����â��1</td>
												<td>3</td>
												<td>2020/04/01</td>
												<td>&#8361;300,000</td>
											</tr>
											<tr>
												<td>TOP000002</td>
												<td>��ǰ2(30���ѹ���)</td>
												<td>����â��2</td>
												<td>5</td>
												<td>2020/04/02</td>
												<td>&#8361;150,000</td>
											</tr>
											<tr>
												<td>TOP000003</td>
												<td>��ǰ3(30���ѹ���)</td>
												<td>����â��3</td>
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
									<h4 class="card-title">���ã��(Favorites)</h4>
								
							</div>
								<div id = "customTopBookMark">
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#addRowModal">
										<i class="fa fa-plus"></i> ���ã�� �߰�
									</button>
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#modifyRowModal">
										<i class="fa fa-plus"></i> ���ã�� ����
									</button>
									<button class="btn btn-primary btn-round ml-auto"
										data-toggle="modal" data-target="#deleteRowModal">
										<i class="fa fa-plus"></i> ���ã�� ����
									</button>
								</div>
							<div class="card-body">

								<!-- Modal ���ã�� �߰��ϱ�-->
								<div class="modal fade" id="addRowModal" tabindex="-1"
									role="dialog" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header no-bd">
												<h5 class="modal-title">
													<span class="fw-mediumbold"> ���ã��</span> <span
														class="fw-light"> �߰��ϱ� </span>
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
													class="btn btn-primary">�߰�</button>
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">���</button>
											</div>
										</div>
									</div>
								</div>

								<!--  ���ã�� �����ϱ� ����  -->
								<div class="card-body">
									<!-- Modal ���ã�� �����ϱ� -->
									<div class="modal fade" id="modifyRowModal" tabindex="-1"
										role="dialog" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header no-bd">
													<h5 class="modal-title">
														<span class="fw-mediumbold"> ���ã��</span> <span
															class="fw-light"> �����ϱ� </span>
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
														class="btn btn-primary">����</button>
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">���</button>
												</div>
											</div>
										</div>
									</div>


									<div class="card-body">
										<!-- Modal ���ã�� �����ϱ� -->
										<div class="modal fade" id="deleteRowModal" tabindex="-1"
											role="dialog" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header no-bd">
														<h5 class="modal-title">
															<span class="fw-mediumbold"> ���ã��</span> <span
																class="fw-light"> �����ϱ� </span>
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
																		<label>�����Ͻðڽ��ϱ�?</label>
																	</div>
																</div>
															</div>
														</form>
													</div>
													<div class="modal-footer no-bd">
														<button type="button" id="deleteRowButton"
															class="btn btn-primary">��</button>
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">���</button>
													</div>
												</div>
											</div>
										</div>

										<div class="table-responsive">
											<table id="add-row"
												class="display table table-striped table-hover">
												<thead>
													<tr>
														<th>��ǰ��</th>
														<th>��ǰ��ġ</th>
														<th>���</th>
														<th style="width: 10%">���1</th>
														<th style="width: 10%">���2</th>
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>��ǰ��</th>
														<th>��ǰ��ġ</th>
														<th>���</th>
														<th>�ϴܱ��1</th>
														<th>�ϴܱ��2</th>
													</tr>
												</tfoot>
												<tbody>
													<tr>
														<td>���ã��1</td>
														<td>����â��5</td>
														<td>5��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��2</td>
														<td>����â��4</td>
														<td>3��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��3</td>
														<td>����â��3</td>
														<td>3��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��4</td>
														<td>����â��4</td>
														<td>4��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��5</td>
														<td>����â��5</td>
														<td>5��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��6</td>
														<td>����â��6</td>
														<td>6��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��7</td>
														<td>����â��7</td>
														<td>7��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��8</td>
														<td>����â��8</td>
														<td>8��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��9</td>
														<td>����â��9</td>
														<td>9��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��10</td>
														<td>����â��10</td>
														<td>10��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
																</button>
															</div>
														</td>
													</tr>
													<tr>
														<td>���ã��11</td>
														<td>����â��11</td>
														<td>5��������</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="�󼼺���">
																	<i class="fa fa-edit">�󼼺���</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="�ٷα����ϱ�">
																	<i class="fa fa-times">�ٷα���</i>
																</button>
															</div>
														</td>
														<td>
															<div class="form-button-action">
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-primary btn-lg"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-edit">�׸����</i>
																</button>
																<button type="button" data-toggle="tooltip" title=""
																	class="btn btn-link btn-danger"
																	data-original-title="���ã�� ����">
																	<i class="fa fa-times">�׸����</i>
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
				<!--  ���� ������ �� -->

			
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