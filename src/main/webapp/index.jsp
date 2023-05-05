<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <title>Health Care</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-primary ">
    <a class="navbar-brand text-white" href="#">Health Care And Fitness </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link text-white" href="#Home">User Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="Admin.jsp">Admin</a>
        </li>
      </ul>

    </div>
  </nav>

  <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/pres1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5>What is health care?</h5>
          <p> the improvement of health via the prevention, diagnosis, treatment, amelioration or cure of disease,
            illness, injury, and other physical and mental impairments in people.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/pres2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5>What is the importance of health care system?
          </h5>
          <p>Health care is conventionally regarded as an important determinant in promoting the general physical,
            mental and social well-being of people around the world and can contribute to a significant part of a
            country's economy, development and industrialisation when efficient.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/pres3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block text-warning">
          <h5>
            What are benefits of healthcare?</h5>
          <p>Studies confirm that coverage improves access to care; supports positive health outcomes, including an
            individual's sense of their own health and well-being; incentivizes appropriate use of health care
            resources; and reduces financial strain on individuals, families and communities.</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <div class="card text-center my-4">
    <div class="card-header">
      Login
    </div>
    <div class="card-body" id="Home">
      <h5 class="card-title">If you have already account please login</h5>
      <p class="card-text">If you do not have any account then select register option</p>
      <a href="login.jsp" class="btn btn-primary">Login</a>
    </div>
    <div class="card-footer text-muted">
      Thanks
    </div>
  </div>

  <div class="card text-center  my-4">
    <div class="card-header">
      Register
    </div>
    <div class="card-body">
      <h5 class="card-title">If you have already account please select login option</h5>
      <p class="card-text">If you do not have any account then select register option</p>
      <a href="register.jsp" class="btn btn-primary">Register</a>
    </div>
    <div class="card-footer text-muted">
      Thanks
    </div>
  </div>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
</body>

</html>