<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Net Banking</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #DCDCDC">
	<%@include file="/all_component/navbar.jsp"%>
	<div class="container">
		<div class="row m-3">
			<div class="col-md-4 offset-md-4 bg-white">
				<div class="card border-0">
					<div class="card-body">
						<h5 class="text-center text-primary">Netbanking Register</h5>
						<c:if test="${not empty sucessmsg}">
							<p class="text-center text-success">${sessionScope.sucessmsg}</p>
							<c:remove var="sucessmsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedmsg}">
							<p class="text-center text-danger">${sessionScope.failedmsg}</p>
							<c:remove var="failedmsg" scope="session" />
						</c:if>


						<form action="netbanking" method="post"
							oninput='cp.setCustomValidity(cp.value != psw.value ? "Passwords do not match." : "")'>

							<div class="form-group">
								<label for="exampleInputEmail1">Account No</label> <input
									type="number" class="form-control form-control-sm" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="acno" required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">User name</label> <input
									type="text" class="form-control form-control-sm" name="usname"
									required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="text" class="form-control form-control-sm" name=psw required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Confirm Password</label> <input
									type="password" class="form-control form-control-sm" name=cp
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