<%@page import="com.entity.AccountTransaction"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.UserDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank: Transaction Credit</title>
<%@include file="all_component/allCss_file.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:set value="Please Login" var="failedmsg" scope="session"></c:set>
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-center">All Credit Transaction</h4>

				<hr>
				<table class="table table-striped mt-5">
					<thead class="bg-primary text-light">
						<tr>
							<th scope="col">Account No</th>
							<th scope="col">Credit / Debit</th>
							<th scope="col">Transaction Details</th>
							<th scope="col">Date</th>
							<th scope="col">Time</th>
							<th scope="col">Amount</th>

						</tr>
					</thead>
					<tbody>
						<%
						User us = (User) session.getAttribute("userobj");
						UserDAOImpl dao = new UserDAOImpl(DbConnect.getConn());
						List<AccountTransaction> trans = dao.getAllTransByCredit(us.getAccountNo());
						for (AccountTransaction tr : trans) {
						%>
						<tr>
							<th scope="row"><%=tr.getAccno()%></th>
							<td><%=tr.getTransType()%></td>
							<td><%=tr.getTransDtls()%></td>
							<td><%=tr.getTransDate()%></td>
							<td><%=tr.getTransTime()%></td>
							<td><%=tr.getBalance()%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>


			</div>
		</div>
	</div>


</body>
</html>