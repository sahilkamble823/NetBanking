<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss_file.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
}

.back-img {
	background: url("img/b3.jpg");
	width: 100%;
	height: 600px;
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${ empty userobj}">
		<c:set value="Please Login" scope="session" var="failedmsg"></c:set>
		<c:redirect url="login.jsp" />
	</c:if>

	<div class="container-fluid text-center">
		<img src="img/b4.jpeg" style="width: 300px; height: 200px;">
		<h1 class="text-center text-primary">Welcome to My Bank</h1>
	</div>


	<div style="margin-top: 120px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>