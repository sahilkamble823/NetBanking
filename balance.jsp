<%@page import="com.entity.User"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank: Balance</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${ empty userobj}">
		<c:set value="Please Login" scope="session" var="failedmsg"></c:set>
		<c:redirect url="login.jsp" />
	</c:if>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<%
						User us = (User) session.getAttribute("userobj");

						UserDAOImpl dao = new UserDAOImpl(DbConnect.getConn());
						Double bal = dao.checkBalance(us.getAccountNo());
						%>
						<h5>Name: <%=us.getFirstName()+ us.getLastName()%></h5>
						<h5>Account No: <%=us.getAccountNo()%></h5>
						<h5>Balance: <%=bal%> <i class="fas fa-rupee-sign"></i></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>