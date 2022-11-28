<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css"
	integrity="sha384-z4tVnCr80ZcL0iufVdGQSUzNvJsKjEtqYZjiQrrYKlpGow+btDHDfQWkFjoaz/Zr"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
	integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/javascript" href="style.js">
<title>QuadWave</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img
				src="https://quadwave.com/wp-content/uploads/2017/07/Quadwave-Logo1.png" /></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">About Us</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container employees">
		<div class="d-flex searchbar">
			<div class="col-md-6">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success search" type="submit">Search</button>
				</form>
			</div>
			<div class="col-md-6">
				<button class="btn btn-outline-success addemp" id="show-page">ADD EMPLOYEE</button>
				<div class="container popup">
					<div class="d-flex head-popup">
						<h2 class="heading-emp">Enter the Details</h2>
						<i class='bx bx-window-close bx-tada close' ></i>
					</div>
					<div class="form-element">
						<form action="AddEmployee.jsp" method="POST">
							<div class="row register-form">
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" placeholder="Enter Employee ID"
											name="Eid" value="" required />
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Enter Employee Name" name="EName" value=""
											required />
									</div>
									<div class="form-group">
										<input type="date" class="form-control" name="DOJ"
											value="" required />
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" placeholder="Year of Experience"
											name="YOE" value="" required />
									</div>
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Designation" name="Designation" value=""
											required />
									</div>
									<input type="submit" class="btnRegister" name="submit"
										value="Save" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="main-div">
			<h1>Employees</h1>
			<div class="center-div">
				<div class="table-responsive">
					<table>
						<thead>
							<tr>
								<th>Eid</th>
								<th>EName</th>
								<th>DOJ</th>
								<th>YOE</th>
								<th>Designation</th>
							</tr>
						</thead>

						<tbody>
							<%
							String url = "jdbc:mysql://localhost:3306/quadwave";
							String username = "root";
							String password = "Rajat#123#";
							String sql = "select * from employee";
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection(url, username, password);

							Statement st = con.createStatement();

							ResultSet rs = st.executeQuery(sql);
							while(rs.next()){
							%>
							<tr>
								<td><%=rs.getString(1)%></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!--------------------------------- footer ------------------------------------------>
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>QUADWAVE : BPM & Technology Solutions Company</h3>
						<p>
							Quadwave, office 146-151<br> 1st Floor, Teerth Technospace,<br>
							C Wing, Baner, Pune - 411045<br> <br> <strong>Phone:</strong>
							+918586884955<br> <strong>Email:</strong> info@quadwave.com<br>
						</p>
					</div>

				</div>
				<div class="social-links text-center text-md-right pt-3 pt-md-0">
					<a href="" class="twitter" target="_blank"><i
						class="bx bxl-twitter"></i></a> <a href="" class="facebook"
						target="_blank"><i class="bx bxl-facebook"></i></a> <a href=""
						class="instagram" target="_blank"><i class="bx bxl-instagram"></i></a>
					<a href="" class="google-plus" target="_blank"><i
						class="bx bxl-youtube"></i></a> <a href="" class="linkedin"
						target="_blank"><i class="bx bxl-linkedin"></i></a>
				</div>
			</div>
		</div>
	</footer>
	
</body>
</html>