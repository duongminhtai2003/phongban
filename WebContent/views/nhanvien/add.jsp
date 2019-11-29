
<%@page import="service.PhongBanService"%>
<%@page import="bean.PhongBan"%>
<%@page import="java.util.List"%>
<%@page import="bean.NhanVien"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome Quản Lý Phòng Ban</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Header -->
	<jsp:include page="/inc/header.jsp"></jsp:include>
	<jsp:include page="/inc/left-bar.jsp"></jsp:include>
	<jsp:include page="/inc/right-bar.jsp"></jsp:include>
	<!-- end header -->
	<!-- Container -->
	<div class="container">

		<form class="well form-horizontal"
			action="<%=request.getContextPath()%>/nhanvien/add" method="post">
			<fieldset>

				<!-- Form Name -->
				<legend>
					<center>
						<h2>
							<b>Thêm nhân viên</b>
						</h2>
					</center>
				</legend>
				<br>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Mã nhân viên </label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="id"
								placeholder="Mã nhân viên" class="form-control" type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Họ và tên</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="name"
								placeholder="Họ và tên" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Địa chỉ</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="address"
								placeholder="Địa chỉ" class="form-control" type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Ngày Sinh:</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								className="glyphicon glyphicon-calendar"></i></span> <input type="date"
								name="birthday" placeholder="dd/mm/yyyy" class="form-control">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Tên phòng ban</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-list"></i></span> <select name="id_pb"
								class="form-control selectpicker">
								<%
									List<PhongBan> listPhongBan = (List) request.getAttribute("listPhongBan");
									for (PhongBan pb : listPhongBan) {
								%>
								<option value="<%=pb.getId()%>"><%=pb.getName()%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">Số điện thoại</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span> <input
								name="phonenumber" placeholder="Nhập số điện thoại"
								class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<br>
						<button type="submit" class="btn btn-warning">
							Thêm <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
	</div>
	<!-- /.container -->
</body>
</html>