<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank: Forgot Password</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #DCDCDC;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<form class="needs-validation" novalidate method="post"
							action="forgot">
							<h3 class="text-center">Forgot Password</h3>

							<c:if test="${not empty failedmsg}">
								<p class="text-center text-danger">${failedmsg}</p>
								<c:remove var="failedmsg" scope="session" />
							</c:if>

							<c:if test="${not empty succmsg}">
								<p class="text-center text-success">${succmsg}</p>
								<c:remove var="succmsg" scope="session" />
							</c:if>

							<div class="form-group">
								<label for="uname">Account No</label> <input type="number"
									class="form-control" id="accno"
									name="accno" required>
							</div>
							<div class="form-group">
								<label for="pwd">Username</label> <input type="text"
									class="form-control" id="pwd"
									name="uname" required>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary btn-lg">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div style="margin-top: 60px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>