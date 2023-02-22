<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank: Change Password</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj}">
		<c:set value="Please Login" var="failedmsg" scope="session"></c:set>
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="/all_component/navbar.jsp"%>
	<div class="container">
		<div class="row m-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center text-primary">Change Password</h5>
						<c:if test="${not empty sucessmsg}">
							<p class="text-center text-success">${sessionScope.sucessmsg}</p>
							<c:remove var="sucessmsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedmsg}">
							<p class="text-center text-danger">${sessionScope.failedmsg}</p>
							<c:remove var="failedmsg" scope="session" />
						</c:if>


						<form action="changepassword" method="post"
							oninput='cp.setCustomValidity(cp.value != psw.value ? "Passwords do not match." : "")'>

							<c:if test="${not empty userobj}">
								<input type="hidden" value="${userobj.accountNo}" name="accno">
							</c:if>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Old Password</label> <input
									type="text" class="form-control" name="oldPwd"
									required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter New Password</label> <input
									type="text" class="form-control" name=psw required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Confirm Password</label> <input
									type="password" class="form-control" name=cp
									required="required">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>