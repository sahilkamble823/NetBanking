<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank: Send Money</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:set value="Please Login" var="failedmsg" scope="session"></c:set>
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<form action="sendmoney" method="post">
							<h4 class="text-center">Send Money</h4>

							<c:if test="${not empty failedmsg}">
								<p class="text-center text-danger">${sessionScope.failedmsg}</p>
								<c:remove var="failedmsg" scope="session" />
							</c:if>

							<c:if test="${not empty succmsg}">
								<p class="text-center text-success">${sessionScope.succmsg}</p>
								<c:remove var="succmsg" scope="session" />
							</c:if>

							<c:if test="${not empty userobj}">
								<input type="hidden" value="${userobj.accountNo}" name="accno">
								<input type="hidden"
									value="${userobj.firstName} ${userobj.lastName}" name="uname">
							</c:if>

							<div class="form-group">
								<label for="uname">Account No:</label> <input type="number"
									class="form-control" id="uname" name="sender_accno" required>
							</div>

							<div class="form-group">
								<label for="uname">Name:</label> <input type="text"
									class="form-control" id="uname" name="name" required>
							</div>

							<div class="form-group">
								<label for="pwd">Amount:</label> <input type="number"
									class="form-control" id="pwd" name="amt" required>
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