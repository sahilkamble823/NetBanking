<%-- <%@page import="java.sql.Connection"%>
<%@page import="com.db.DbConnect"%> --%>
<%@page import="com.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.carousel-item:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.4);
}

.carousel-caption {
	color: #fff;
	top: 50%;
}
</style>
<%@include file="all_component/allCss_file.jsp"%>
<meta charset="ISO-8859-1">
<title>Bank: Home</title>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	
	<!-- <div class="container-fluid back-img"></div> -->

	<!-- <div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">

		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div> -->


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="carousel-caption">
					<h1 class=" text-white">
						Welcome to <br>Banking Management System
					</h1>
				</div>
				<img class="d-block w-100" src="img/p2.jpg" alt="First slide"
					style="width: 100%; height: 350px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/p3.jpg" alt="Second slide"
					style="width: 100%; height: 350px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/b3.jpg" alt="Third slide"
					style="width: 100%; height: 350px;">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>


	<div class="container p-3">
		<div class="row">
			<div class="col-md-3">
				<div class="card" style="height: 230px;">
					<div class="card-body ">
						<h5 class="text-center">Banking</h5>
						<ul>
							<li>Savings and Deposits</li>
							<li>Consultancy Services</li>
							<li>Accounts and Deposits</li>
							<li>Card Services</li>
							<li>Digital Products</li>
							<li>Online Banking</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card" style="height: 230px;">
					<div class="card-body ">
						<h5 class="text-center">Credit Facilites</h5>
						<ul>
							<li>Loans & Advances</li>
							<li>Apply for Retail Loans</li>
							<li>DRI Loans</li>
							<li>Educational Loan</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card" style="height: 230px;">
					<div class="card-body ">
						<h5 class="text-center">Invest and Insurance</h5>
						<ul>
							<li>Life Insurance</li>
							<li>Health Insurance</li>
							<li>General Insurance</li>
							<li>Mutual Funds</li>
							<li>Depository Services</li>
						</ul>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card" style="height: 230px;">
					<div class="card-body ">
						<h5 class="text-center">Offers</h5>
						<ul>
							<li>Emergency Credit Line</li>
							<li>Guarantee Scheme</li>
						</ul>
					</div>
				</div>
			</div>


		</div>
	</div>



	<%@include file="all_component/footer.jsp"%>
</body>
</html>