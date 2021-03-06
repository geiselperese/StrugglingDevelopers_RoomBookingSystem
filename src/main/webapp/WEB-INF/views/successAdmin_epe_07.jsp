<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Success Page</title>
<link href="<c:url value="/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
</head>

<h1>Hello, ${userName}</h1>
<br>
<br>
<br>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<!--  	<a class="navbar-brand" href="#">Book Room System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button> -->
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">

				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/bookingLimitation/?id=${userId}">Booking
						Limitation</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/viewcomments/?id=${userId}">View
						Comments</a></li>

			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<table>

		<tr>
			<td colspan="2"><a
				href="${pageContext.request.contextPath}/sessionEnd">Logout</a></td>
		</tr>


	</table>

</body>
</html>