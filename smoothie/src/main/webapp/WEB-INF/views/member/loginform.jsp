<html>

<head>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="vendor/simple-line-icons/css/simple-line-icons.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">

<!-- Plugin CSS -->
<link rel="stylesheet" href="device-mockups/device-mockups.min.css">

<!-- Custom styles for this template -->
<link href="css/new-age.min.css" rel="stylesheet">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
body {
	background-image:
		url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	padding: 10px;
}

.form-heading {
	color: #fff;
	font-size: 23px;
}

.panel h2 {
	color: #444444;
	font-size: 18px;
	margin: 0 0 8px 0;
}

.panel p {
	color: #777777;
	font-size: 14px;
	margin-bottom: 30px;
	line-height: 24px;
}

.login-form {
	margin-top: 150px;
}

.login-form .form-control {
	background: #f7f7f7 none repeat scroll 0 0;
	opacity: 0.5;
	border: 1px solid #d4d4d4;
	border-radius: 4px;
	font-size: 14px;
	height: 50px;
	line-height: 50px;
}

.main-div {
	background: none repeat scroll 0 0;
	border: solid 1px #ffe6f0;
	border-radius: 5px;
	margin: 10px auto 30px;
	max-width: 38%;
	padding: 50px 70px 70px 71px;
}

.login-form .form-group {
	margin-bottom: 10px;
}

.login-form {
	text-align: center;
}

.login-form .btn.btn-primary {
	background: #cc0066 none repeat scroll 0 0;
	border-color: #cc0066;
	opacity: 0.8;
	color: #ffffff;
	font-size: 14px;
	font-weight: bold;
	width: 100%;
	height: 50px;
	line-height: 50px;
	padding: 0;
}

.login-form .btn.btn-primary.reset {
	background: #ff9900 none repeat scroll 0 0;
}

.login-form .btn.btn.btn-primary:hover {
	background-color: #ff9900;
	border: #ff9900;
}

.form-group input:focus {
	outline: none;
	box-shadow: 0 0 10px #DB7093;
	border: none;
}
</style>
</head>

<body id="LoginForm">
	<div class="container">

		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-light fixed-top"
			id="mainNav">
			<div class="container">
				<a class="navbar-brand js-scroll-trigger" href="/signal">SIGNAL</a>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="./board/list">Board</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="./loginform">Login</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="./member/registerform">Sign-up</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<p>Please enter your id and password</p>
				</div>
				<form id="Login">
					<div class="form-group">
						<input type="text" class="form-control" id="inputEmail"
							placeholder="Id">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="inputPassword"
							placeholder="Password">
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>
			</div>
		</div>
	</div>

</body>

</html>