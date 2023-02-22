<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank:View Profile</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #f7e7e6;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<c:if test="${empty userobj}">
						<c:set value="Please Login" var="failedmsg" scope="session"></c:set>
						<c:redirect url="login.jsp"></c:redirect>
					</c:if>

					<c:if test="${not empty userobj}">
						<div class="card-body">
							<div
								class="container d-flex justify-content-center align-items-center">
								<div
									style="width: 100px; height: 100px; border: 1px black solid;">
									<img alt="" src="img/pf.png"
										style="width: 100px; height: 100px">
								</div>
							</div>


							<form action="">
								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">Account</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.accountNo}"
											readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">Username</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.userid }"
											readonly="readonly">
									</div>

								</div>


								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">First
										Name</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.firstName }"
											readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">Last
										Name</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.lastName }"
											readonly="readonly">
									</div>

								</div>


								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">Email</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.email }"
											readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">Phone
										No</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.number}"
											readonly="readonly">
									</div>

								</div>


								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">Date
										Of Birth</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.dob}" readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">Aadhar
										No</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.adhar}"
											readonly="readonly">
									</div>

								</div>

								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">Address</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.address}"
											readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">City</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.city}" readonly="readonly">
									</div>
								</div>
								
								<div class="form-group row mt-3">
									<label for="colFormLabel"
										class="col-sm-2 offset-sm-1 col-form-label col-form-label">State</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.state}"
											readonly="readonly">
									</div>

									<label for="colFormLabel"
										class="col-sm-2  col-form-label col-form-label">Status</label>
									<div class="col-sm-3">
										<input type="email" class="form-control form-control"
											id="colFormLabel" value="${userobj.status}" readonly="readonly">
									</div>
								</div>
								
							</form>
						</div>
					</c:if>
					<!--  -->

				</div>
			</div>
		</div>
	</div>
</body>
</html>