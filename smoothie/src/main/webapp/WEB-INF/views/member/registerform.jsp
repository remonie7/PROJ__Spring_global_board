<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Plugin CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

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

.panel {
	color: #808080;
	text-align: center;
	margin-bottom: 35px;
}

.panel p {
	color: #777777;
	font-size: 14px;
}

.register-out {
	display: flex;
	justify-content: center;
}

.register-in {
	border: 1px solid #ffe6f0;
	border-radius: 5px;
	width: 500px;
	height: 650px;
	margin-top: 150px;
}

.card-body {
	margin: 50px;
	width: 70%;
}

.form-group .input-group-prepend {
	background: #f7f7f7 none repeat scroll 0 0;
	opacity: 0.5;
	border: 1px solid #d4d4d4;
	font-size: 14px;
	height: 50px;
	line-height: 50px;
}

.form-group input {
	border-radius: 5px;
	opacity: 0.5;
	font-size: 14px;
}

.form-group input:focus {
	outline: none;
	box-shadow: 0 0 10px #DB7093;
	border: none;
}

.form-group .btn.btn-primary {
	background: #cc0066 none repeat scroll 0 0;
	border-color: #cc0066;
	opacity: 0.8;
	color: #ffffff;
	font-size: 14px;
	font-weight: bold;
	width: 140px;
	margin-left: 80px;
	margin-top: 20px;
}

.form-group .btn.btn.btn-primary:hover {
	background-color: #ff9900;
	border: #ff9900;
}

.text-center {
	margin-top: 5%;
}

.text-center p {
	color: #777777;
}

.text-center a {
	color: #DB7093;
}
</style>
<!--  
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
	
<script>
	function validateForm() {
		var id = $('#userId').val();
		var email = $('#userEmail').val();
		var pwd = $('#userPwd').val();
		var rePwd = $('#rePwd').val();

		var inputVal = new Array(id, email, pwd, rePwd);

		var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if (inputVal[0] === "") {
			window.alert("Id is Missing.");
		} else if (!(inputVal[0].length >= 2 && inputVal[0].length <= 10)) {
			window
					.alert("Required and must be of length 4-12 including numbers and alphabet.");
		} else if (inputVal[1] === undefined) {
			window.alert("Email address is required.");
		} else if (!inputVal[1].match(emailReg)) {
			window.alert("Must be a valid email.");
		} else if (inputVal[2] === "") {
			window
					.alert("Password is required and must be of length 4-12 including numbers and alphabet.");
		} else if (inputVal[3] === "") {
			window.alert("Repeat password.");
		} else if (inputVal[3] !== inputVal[2]) {
			window.alert("Must be same as above.")
		}

		return;
	};
</script>
-->

<!-- member register validation function -->
<script language="javascript">
	var re = /^[a-zA-Z0-9]{4,12}$/
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	function validate() {

		var id = document.getElementById("userId");
		var pw = document.getElementById("userPwd");
		var email = document.getElementById("userEmail");

		if (!check(re, id,
				"Required and must be of length 4-12 numbers and alphabet.")) {
			return false;
		}

		if (!check(re, pw,
				"Required and must be of length 4-12 including numbers and alphabet.")) {
			return false;
		}

		if (email.value == "") {
			alert("Required. Must be a valid email.");
			email.focus();
			return false;
		}

		if (!check(re2, email, "Must be a valid email.")) {
			return false;
		}

		if (join.name.value == "") {
			alert("Required and alphabets only.");
			join.name.focus();
			return false;
		}

		alert("Success. Welcome to Signal. =)");
	}

	function check(re, what, message) {
		if (re.test(what.value)) {
			return true;
		}
		alert(message);
		what.value = "";
		what.focus();
		//return false;
	}
</script>

</head>

<body> 

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="/signal">SIGNAL</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="../board/list">Board</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="./loginform">Login</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="./registerform">Sign-up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="register-out">
		<div class="register-in">
			<article class="card-body mx-auto" style="max-width: 400px;">
				<div class="panel">
					<h1>SIGN UP</h1>
					<p>Please fill in this form to create an account.</p>
				</div>
				<form>
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input name="" class="form-control" id="userId" placeholder="Id"
							type="text">
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-envelope"></i>
							</span>
						</div>
						<input name="" class="form-control" id="userEmail"
							placeholder="Email address" type="email">
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input class="form-control" id="userPwd"
							placeholder="Create password" type="password">
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input class="form-control" id="rePwd"
							placeholder="Repeat password" type="password">
					</div>
					<!-- form-group// -->
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Create
							Account</button>
					</div>
					<!-- form-group// -->
					<p class="text-center">
						Have an account? <a href="./member/loginform">Log In</a>
					</p>
				</form>
			</article>
		</div>
	</div>

</body>

</html>