<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<title>Health Care</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
		<a class="navbar-brand text-white" href="#">Health Care And
			Fitness </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link text-white"
					href="indexx.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="about.jsp">AboutUs</a></li>
					<li class="nav-item"><a class="nav-link text-white"
					href="userstore.jsp">User Store</a></li>
					<li class="nav-item"><a class="nav-link text-white"
					href="Admin.jsp">Admin</a></li>
					
			</ul>

		</div>
	</nav>


	<div class="container mt-5">
		<div class="row mb-2">
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-primary">Medicine</strong>
						<h3 class="mb-0">Store Medicine</h3>
						<div class="mb-1 text-muted">2023</div>
						<p class="card-text mb-auto">Do you always forgot your
							prescription ? Let's Store it !</p>
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target=".bd-example-modal-xl">Store Your medicine</button>

						<div class="modal fade bd-example-modal-xl" tabindex="-1"
							role="dialog" aria-labelledby="myExtraLargeModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-xl" role="document">

								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title h4" id="myExtraLargeModalLabel">Enter
											Your Medicine</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">X</span>
										</button>
									</div>
									<div class="modal-body">
										<form action="Storemedicine" method="Post">
											<table class="table">
												<thead class="thead-dark">
													<tr>
														<th scope="col">Medicine name</th>
														<th scope="col">User Name</th>
														<th scope="col">Medicine Quantity</th>
														<th scope="col">Time</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><input type="text" name="Mname"
															class="form-control" placeholder="Medicine name"
															required="" autofocus=""></td>
															<td><input type="text" name="name"
															class="form-control" placeholder="User name"
															required="" autofocus=""></td>
														<td><input type="number" name="Qnumber"
															class="form-control" placeholder="Quantity" required=""
															autofocus=""></td>
														<td><input type="time" name="time"
															class="form-control" placeholder="" required=""
															autofocus=""></td>
													</tr>
													<tr>
														<td colspan="3">
															<button class="btn btn-lg btn-primary btn-block mt-4"
																type="submit"
																>Save</button>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
									</div>
								</div>

							</div>
						</div>

					</div>
					<div class="col-auto d-none d-lg-block">
						<div class="col-auto d-none d-lg-block">
							<img
								class="bd-placeholder-img bd-placeholder-img-lg featurette-image mx-auto h-237"
								width="200" height="250" src="images/prees5.jpg">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div
					class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-success">Fitness</strong>
						<h3 class="mb-0">BMI Calculator</h3>
						<div class="mb-1 text-muted">2023</div>
						<p class="mb-auto">Do you know your BMI Report ? Let's Know !</p>
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target=".bd-example-modal-lg">Calculate BMI</button>

						<div class="modal fade bd-example-modal-lg" tabindex="-1"
							role="dialog" aria-labelledby="myLargeModalLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title h4" id="myExtraLargeModalLabel">BMI
											Calculator</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">Ã</span>
										</button>
									</div>
									<div class="modal-body">
										<table class="table">
											<tbody>
												<tr>
													<td>Enter height in (Cm)</td>
													<td><input type="number"
														class="form-control bmi_height" placeholder="Height"
														required="" autofocus=""></td>
												</tr>
												<tr>
													<td>Weight in (Kg)</td>
													<td><input type="number"
														class="form-control bmi_weight" placeholder="Weight"
														required="" autofocus=""></td>
												</tr>
												<tr>
													<td colspan="2">
														<button
															class="btn btn-sm btn-primary btn-block mt-4 bmi_calculate_btn"
															type="submit">Calculate</button>
													</td>
												</tr>
												<tr>
													<td colspan="3">
														<div class="bmi_result"></div>
													</td>
												</tr>
												<script>
                                                    $(document).ready(function () {
                                                        $(".bmi_calculate_btn").click(function () {
                                                            var bmi_height = $(".bmi_height").val();
                                                            var bmi_weight = $(".bmi_weight").val();
                                                            var bmi_calculate = 0;
                                                            var result_string="";

                                                            if (bmi_height == "" && bmi_weight == "") {
                                                                alert("please enter height and weight");
                                                                return;
                                                            }
                                                            if (bmi_height == "") {
                                                                alert("please enter height")
                                                                return;
                                                            }
                                                            if (bmi_weight == "") {
                                                                alert("please enter weight");
                                                                return;
                                                            }
                                                            bmi_calculate = (bmi_weight / ((bmi_height * bmi_height) / 10000)).toFixed(2);

                                                            if (bmi_calculate < 18.6) {
                                                                result_string=" Under Weight : "+bmi_calculate;
                                                            }
                                                            else if (bmi_calculate >= 18.6 && bmi_calculate < 24.9){
                                                                result_string=" Normal : "+bmi_calculate;

                                                            }
                                                            else{
                                                                result_string=" Over weight : "+bmi_calculate;

                                                            }
                                                            $(".bmi_result").html(result_string);

                                                        });
                                                    });
                                                </script>

											</tbody>
											</thead>
										</table>

									</div>
								</div>

							</div>
						</div>

					</div>
					<div class="col-auto d-none d-lg-block">
						<img
							class="bd-placeholder-img bd-placeholder-img-lg featurette-image mx-auto h-237"
							width="200" height="250" src="images/bmi1.jpg">
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>

</html>