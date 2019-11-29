<%@page import="java.util.List"%>
<%@page import="bean.PhongBan"%>
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
				<strong>Xem Phòng Ban</strong>
			</div>
			<div class="panel-body">
				<form method="get" action="" class="form">
					<div class="col-xs-3">
						<div class="form-group">
							<select name="searchType" class="form-control">
								<option value="staff">Phòng Ban</option>
							</select>
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
				<section class="content">
				<div class="clearfix"></div>
				<div class="box box-primary">
					<div class="box-body table-responsive">
						<table class="table table-responsive table-bordered"
							id="tours-table">
							<thead>
								<tr>
									<th class="text-center" colspan="1">Mã</th>
									<th class="text-center" colspan="2">Tên Phòng Ban</th>
									<th class="text-center" colspan="2">Chức Năng</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<PhongBan> listPhongBan = (List) request.getAttribute("listPhongBan");
									for (PhongBan pb : listPhongBan) {
								%>
								<tr>
									<td class="text-center" colspan="1"><%=pb.getId()%></td>
									<td class="text-center" colspan="2"><%=pb.getName()%></td>
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