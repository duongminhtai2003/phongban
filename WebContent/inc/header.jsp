<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/css/reset.css" type="text/css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/style.css" type="text/css"
	rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<%
				User userInfo = (User) session.getAttribute("userInfo");
			%>
			<h3 style="color: green;">
				Wellcome :
				<%=userInfo.getUsername()%></h3>
			<a href="<%=request.getContextPath()%>/auth/logout">Đăng xuất</a>
			<table border="1">
				<tr>
					<td><img alt="1.jpg"
						src="<%=request.getContextPath()%>/images/1jpg.jpg" /></td>
					<td><marquee width="940px" bgcolor="#baaaad">
							<p>CHƯƠNG TRÌNH QUẢN LÝ PHÒNG BAN</p>
						</marquee></td>
					<td><img alt="2.jpg"
						src="<%=request.getContextPath()%>/images/2.jpg" /></td>
				</tr>
			</table>
		</div>