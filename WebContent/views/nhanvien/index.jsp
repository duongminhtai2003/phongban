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
	<div class="container text-center" style="margin-top: 6px;">
		<!-- Container -->
		<div class="panel panel-info">
			<div class="panel-heading">
				<strong>Thông tin nhân viên </strong>
			</div>
			<div class="panel-body">
				<form method="get" action="" class="form">
					<div class="col-xs-3">
						<div class="form-group">
							<a href="<%=request.getContextPath()%>/nhanvien/add">Thêm
								nhân viên</a>
						</div>
					</div>
					<div class="col-xs-9">
						<div class="input-group">
							<input type="text" name="key" value="" class="form-control"
								value=""> <span class="input-group-btn"> <input
								type="submit" value="Tìm kiếm" class="btn btn-success">
							</span>
						</div>
					</div>
				</form>
				<%
					if (request.getParameter("msg") != null) {
						if ("addsuccess".equals(request.getParameter("msg"))) {
				%>
				<h3 style="color: RED">THÊM THÀNH CÔNG</h3>
				<%
					}
					}
				%>
				<section class="content">
				<div class="box box-primary">
					<div class="container"
						style="margin-left: 120px; margin-top: 150px;">
						<table class="table-responsive table-bordered" id="tours-table">
							<thead>
								<tr>
									<th class="text-center" width="100px" colspan="1">Mã</th>
									<th class="text-center" width="200px" colspan="2">Tên Nhân
										Viên</th>
									<th class="text-center" width="150px" colspan="1">Địa Chỉ</th>
									<th class="text-center" width="100px" colspan="1">Số Điện
										Thoại</th>
									<th class="text-center" width="100px" colspan="1">Ngày
										Sinh</th>
									<th class="text-center" width="100px" colspan="1">Mã Phòng
										Ban</th>
									<th class="text-center" width="100px" colspan="2">Chức
										Năng</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<NhanVien> listNhanVien = (List) request.getAttribute("listNhanVien");
									for (NhanVien nv : listNhanVien) {
								%>
								<tr>
									<td class="text-center" colspan="1"><%=nv.getId()%></td>
									<td class="text-center" colspan="2"><%=nv.getName()%></td>
									<td class="text-center" colspan="1"><%=nv.getAddress()%></td>
									<td class="text-center" colspan="1"><%=nv.getPhonenumber()%></td>
									<td class="text-center" colspan="1"><%=nv.getBirthday()%></td>
									<td class="text-center" colspan="1"><%=nv.getPhongban().getName()%></td>
									<td class="text-center" colspan="2">
										<div class="btn-group">
											<a href="detail.php?id=<?php echo $arrayPhong['id'] ?>"
												class="btn btn-default btn-xs"><i
												class="glyphicon glyphicon-eye-open"></i></a> <a href=""
												class="btn btn-default btn-xs"><i
												class="glyphicon glyphicon-edit"></i></a> <a href=""
												class="btn btn-danger btn-xs"
												onclick="return confirm('Are you sure?')"><i
												class="glyphicon glyphicon-trash"></i></a>
										</div>
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
</body>
</html>