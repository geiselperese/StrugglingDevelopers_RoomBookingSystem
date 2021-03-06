<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Photos</title>
<link href="<c:url value="/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>

</head>
<body>
	<!--<h1>Room Photos</h1><BR>-->
	
	<section class="breadcrumbs-section">
		<div class="container pl-3 p-sm-3">
			<div class="row">
				<div class="col-12">
					<h2>Room Photos</h2>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/bookRoom/?id=${userId}">Home</a></li>
						<li class="breadcrumb-item active">Room</li>
					</ol>
				</div>
			</div>
		</div>

	</section>
	
	<h5>There are four types of rooms offered for students and faculty to book. They are regular classrooms, conference rooms, labs and study rooms.</h5>
	<table>
		<tr>
			<td><img src="<c:url value='/resources/${roomPhotos.regularClassroom}'/>"
				alt="Regular classroom photo" width="800" height="600" /></td>
			<td>
		</tr>
		<tr>
			<td>Classroom photo</td>
		</tr>
	</table>
	
	<p id="txtGroup" name="txtGroup">The regular classrooms are the most common rooms that can be booked. Each classroom has a difference in equipments that they offer, but the layout looks pretty much like the picture above.</p>
	<BR>
	<table>
		<tr>
			<td><img src="<c:url value='/resources/${roomPhotos.conference}'/>"
				alt="Conference room photo" width="800" height="600" /></td>
			<td>
		</tr>
		<tr>
			<td>Conference room photo</td>
		</tr>
	</table>
	
	<p id="txtGroup" name="txtGroup">The Conference rooms are used as good rooms for presentations and exhibitions. They are the rooms that can take the largest amount of people.</p>
	<BR>
	<table>
		<tr>
			<td><img src="<c:url value='/resources/${roomPhotos.lab}'/>"
				alt="Lab room photo" width="800" height="600" /></td>
			<td>
		</tr>
		<tr>
			<td>Lab room photo</td>
		</tr>
	</table>
	
	<p id="txtGroup" name="txtGroup">The labs are usually used for smaller groups. There are a few labs available in the building.</p>
	<BR>
	<table>
		<tr>
			<td><img src="<c:url value='/resources/${roomPhotos.studyRoom}'/>"
				alt="Study room photo" width="800" height="500" /></td>
			<td>
		</tr>
		<tr>
			<td>Study room photo</td>
		</tr>
	</table>
	
	<p id="txtGroup" name="txtGroup">Study rooms are smaller rooms for smaller groups, with the goal of making it better and quieter for studying.</p>

</body>
</html>