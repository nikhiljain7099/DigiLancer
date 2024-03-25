<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
			padding:0px !important;
		}
		#dc2751:#dc2751;
$black:#dc2751;
$grey:#dc2751;


body {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 14px;
	background: #f2f2f2;
}
.clearfix {
	&:after {
		content: "";
		display: block;
		clear: both;
		visibility: hidden;
		height: 0;
	}
}
.form_wrapper {
	background: #fff;
	width: 900px;
	max-width: 100%;
	box-sizing: border-box;
	padding: 25px;
	margin: 55px auto;
	position: relative;
	z-index: 1;
	border-top: 5px solid #dc2751;
	-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	-moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
    -webkit-transform-origin: 50% 0%;
    transform-origin: 50% 0%;
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
    -webkit-transition: none;
    transition: none;
    -webkit-animation: expand 0.8s 0.6s ease-out forwards;
    animation: expand 0.8s 0.6s ease-out forwards;
    opacity: 0;
	h2 {
		font-size: 1.5em;
		line-height: 1.5em;
		margin: 0;
	}
	.title_container {
		text-align: center;
		padding-bottom: 15px;
	}
	h3 {
		font-size: 1.1em;
		font-weight: normal;
		line-height: 1.5em;
		margin: 0;
	}
    label {
        font-size: 12px;
    }
	.row {
		
		>div {
			padding: 0 15px;
			box-sizing: border-box;
		}
	}
	.col_half {
		width: 50%;
		float: left;
	}
	.input_field {
		position: relative;
		margin-bottom: 20px;
        -webkit-animation: bounce 0.6s ease-out;
  	     animation: bounce 0.6s ease-out;
		>span {
			position: absolute;
			left: 0;
			top: 0;
			color: #333;
			height: 100%;
			border-right: 1px solid $grey;
			text-align: center;
			width: 30px;
			>i {
				padding-top: 10px;
			}
		}
	}
	.textarea_field {
		>span {
			>i {
				padding-top: 10px;
			}
		}
	}
	input {
    &[type="text"], &[type="email"], &[type="password"] {
      width: 100%;
      padding: 8px 10px 9px 35px;
      height: 35px;
      border: 1px solid $grey;
      box-sizing: border-box;
      outline: none;
      -webkit-transition: all 0.30s ease-in-out;
      -moz-transition: all 0.30s ease-in-out;
      -ms-transition: all 0.30s ease-in-out;
      transition: all 0.30s ease-in-out;
    }
    &[type="text"]:hover, &[type="email"]:hover, &[type="password"]:hover {
      background: #fafafa;
    }
    &[type="text"]:focus, &[type="email"]:focus, &[type="password"]:focus {
      -webkit-box-shadow: 0 0 2px 1px rgba(202, 59, 84, 0.5);
      -moz-box-shadow: 0 0 2px 1px rgba(202, 59, 84, 0.5);
      box-shadow: 0 0 2px 1px rgba(202, 59, 84, 0.5);
      border: 1px solid #dc2751;
    }
    &[type="submit"] {
		background: #dc2751;
		height: 35px;
		line-height: 35px;
		width: 100%;
		border: none;
		outline: none;
		cursor: pointer;
		color: #fff;
		font-size: 1.1em;
		margin-bottom: 10px;
		-webkit-transition: all 0.30s ease-in-out;
		-moz-transition: all 0.30s ease-in-out;
		-ms-transition: all 0.30s ease-in-out;
		transition: all 0.30s ease-in-out;
		&:hover {
			background: darken(#dc2751,7%);
		}
		&:focus {
			background: darken(#dc2751,7%);
		}
	}    
    
  }
}
.form_container {
	.row {
		.col_half.last {
			border-left: 1px solid $grey;
		}
	}
}

    input {
    &:hover + label:before {
      border-color: $black;
    }
    &:checked + label {
      &:before {
        border-color: $black;
      }
      &:after {
        -moz-animation: check 0.8s ease 0s running;
        -webkit-animation: check 0.8s ease 0s running;
        animation: check 0.8s ease 0s running;
        display: block;
        width: 7px;
        height: 20px;
        border-color: $black;
      }
    }
  }
}
.radio_option {
  label {
      margin-right: 1em;
    &:before {
      content: "";
      display: inline-block;
      width: 0.5em;
      height: 0.5em;
      margin-right: 0.5em;
      border-radius: 100%;
      vertical-align: -3px;
      border: 2px solid $grey;
      padding: 0.15em;
      background-color: transparent;
      background-clip: content-box;
      transition: all 0.2s ease;
    }
  }
  input {
    &:hover + label:before {
      border-color: $black;
    }
    &:checked + label:before {
      background-color: $black;
      border-color: $black;
    }
  }
}
.select_option {
  position: relative;
  width: 100%;
  select {
    display: inline-block;
    width: 100%;
    height: 35px;
    padding: 0px 15px;
    cursor: pointer;
    color: #7b7b7b;
    border: 1px solid $grey;
    border-radius: 0;
    background: #fff;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    transition: all 0.2s ease;
    &::-ms-expand {
      display: none;
    }
    &:hover, &:focus {
      color: $black;
      background: #fafafa;
      border-color: $black;
      outline: none;
    }
  }
}
.select_arrow {
  position: absolute;
  top: calc(50% - 4px);
  right: 15px;
  width: 0;
  height: 0;
  pointer-events: none;
  border-width: 8px 5px 0 5px;
  border-style: solid;
  border-color: #7b7b7b transparent transparent transparent;
}

.select_option select {
  &:hover + .select_arrow, &:focus + .select_arrow {
    border-top-color: $black;
  }
}
.credit {
	position: relative;
	z-index: 1;
	text-align: center;
	padding: 15px;
	color: #dc2751;
	a {
		color: darken(#dc2751,7%);
	}
}
#cb2{
	width:15px !important;
	height: 15px !important;
}
@-webkit-keyframes check {
  0% { height: 0; width: 0; }
  25% { height: 0; width: 7px; }
  50% { height: 20px; width: 7px; }
}

@keyframes check {
  0% { height: 0; width: 0; }
  25% { height: 0; width: 7px; }
  50% { height: 20px; width: 7px; }
}

@-webkit-keyframes expand { 
	0% { -webkit-transform: scale3d(1,0,1); opacity:0; }
	25% { -webkit-transform: scale3d(1,1.2,1); }
	50% { -webkit-transform: scale3d(1,0.85,1); }
	75% { -webkit-transform: scale3d(1,1.05,1); }
	100% { -webkit-transform: scale3d(1,1,1);  opacity:1; }
}

@keyframes expand { 
	0% { -webkit-transform: scale3d(1,0,1); transform: scale3d(1,0,1);  opacity:0; }
	25% { -webkit-transform: scale3d(1,1.2,1); transform: scale3d(1,1.2,1); }
	50% { -webkit-transform: scale3d(1,0.85,1); transform: scale3d(1,0.85,1); }
	75% { -webkit-transform: scale3d(1,1.05,1); transform: scale3d(1,1.05,1); }
	100% { -webkit-transform: scale3d(1,1,1); transform: scale3d(1,1,1);  opacity:1; }
}


@-webkit-keyframes bounce { 
	0% { -webkit-transform: translate3d(0,-25px,0); opacity:0; }
	25% { -webkit-transform: translate3d(0,10px,0); }
	50% { -webkit-transform: translate3d(0,-6px,0); }
	75% { -webkit-transform: translate3d(0,2px,0); }
	100% { -webkit-transform: translate3d(0,0,0); opacity: 1; }
}

@keyframes bounce { 
	0% { -webkit-transform: translate3d(0,-25px,0); transform: translate3d(0,-25px,0); opacity:0; }
	25% { -webkit-transform: translate3d(0,10px,0); transform: translate3d(0,10px,0); }
	50% { -webkit-transform: translate3d(0,-6px,0); transform: translate3d(0,-6px,0); }
	75% { -webkit-transform: translate3d(0,2px,0); transform: translate3d(0,2px,0); }
	100% { -webkit-transform: translate3d(0,0,0); transform: translate3d(0,0,0); opacity: 1; }
}
@media (max-width: 600px) {
	.form_wrapper {
		.col_half {
			width: 100%;
			float: none;
		}
	}
	.bottom_row {
		.col_half {
			width: 50%;
			float: left;
		}
	}
	.form_container {
		.row {
			.col_half.last {
				border-left: none;
			}
		}
	}
	.remember_me {
		padding-bottom: 20px;
	}
}
.login{
	display:inline-block;
		background: #dc2751;
			height: 35px;
			text-align:center;
			line-height: 35px;
			width: 100%;
			border: none;
			outline: none;
			cursor: pointer;
			color: #fff;
			font-size: 1.1em;
			margin-bottom: 10px;
			-webkit-transition: all 0.30s ease-in-out;
			-moz-transition: all 0.30s ease-in-out;
			-ms-transition: all 0.30s ease-in-out;
			transition: all 0.30s ease-in-out;
	}
	.login:hover{
		color:white;
		text-decoration:none;
	}
	.education input{
		width:100% !important;
	}
	textarea{
	width:100%;
	padding: 8px 10px 9px 35px;
	height: 140px !important;
	border: 1px solid $grey;	
	margin-bottom:18px !important;
}
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<!-- navbar -->
	<%@ include file="../components/navbar.jsp" %>
	
	<!-- registration-form -->
	<div class="form_wrapper">
  <div class="form_container">
    <div class="title_container">
      <h2>Freelancer Registration Form</h2>
    </div>
    <div class="row clearfix">
      <div class="">
      <p class="text-danger text-center">${msg }</p>
        <form enctype="multipart/form-data" action="../FreelancerController" method="post" style="width:840px;">
        <div class="row clearfix">
            <div class="col_half">
              <div class="input_field"> 
                <input type="text" name="firstname" placeholder="First Name" />
                <p class="text-danger fname-error"></p>
              </div>
            </div>
            <div class="col_half">
              <div class="input_field"> 
                <input type="text" name="lastname" placeholder="Last Name" required />
                <p class="text-danger lname-error"></p>
              </div>
            </div>
          </div>
          <div class="input_field"> 
            <input type="email" name="email" placeholder="Email" required />
          </div>
          <div class="input_field"> 
            <input type="password" name="password" placeholder="Password" required />
            <p class="text-danger password-error"></p>
          </div>
          <div class="input_field"> 
            <input type="password" name="confirmpassword" placeholder="Re-type Password" required />
            <p class="text-danger confirmpassword-error"></p>
          </div>
          <div class="textarea_field"> 
            <textarea class="w-100 mb-0" name="bio" placeholder="Bio" required></textarea>
            <p class="text-danger bio-error"></p>
          </div>
          <div class="input_field education">
          	<label style="color:#dc2751; font-size:18px; font-weight:600; padding:0px 10px;">UnderGrad Education: </label>
          	<div class="row">
    			<div class="col-md-6">
		             <div class="input_field"> 
		            	<input type="text" name="ugprogramme" placeholder="Undergrad Programme" required />
		            	<p class="text-danger ugprogramme-error"></p>
		          	</div>
		          	<div class="input_field mb-0"> 
		            	<input type="text" name="uguniversity" placeholder="Undergrad University" required />
		            	<p class="text-danger uguniversity-error"></p>
		          	</div>
          		</div>
          		<div class="col-md-6">
          			<div class="input_field"> 
				        <div class="select_option">
				            <select name="ugfrom" required>
				                <option value="">Select From</option>
				                <!-- JavaScript loop to populate options -->
				                <script>
				                    for (var year = 2010; year <= 2026; year++) {
				                        document.write('<option value="' + year + '">' + year + '</option>');
				                    }
				                </script>
				            </select>
				            <div class="select_arrow"></div>
				        </div>
				    </div>
		          	<div class="input_field mb-0"> 
				        <div class="select_option">
				            <select name="ugto" required>
				                <option value="">Select To</option>
				                <!-- JavaScript loop to populate options -->
				                <script>
				                    for (var year = 2010; year <= 2026; year++) {
				                        document.write('<option value="' + year + '">' + year + '</option>');
				                    }
				                </script>
				            </select>
				            <div class="select_arrow"></div>
				        </div>
				    </div>
          		</div>
			</div>
          </div>
          <div class="input_field education">
          	<label style="color:#dc2751; font-size:18px; font-weight:600; padding:0px 10px;">PostGrad Education: </label>
          	<div class="row">
    			<div class="col-md-6">
		             <div class="input_field"> 
		            	<input type="text" name="pgprogramme" placeholder="Postgrad Programme" required />
		            	<p class="text-danger pgprogramme-error"></p>
		          	</div>
		          	<div class="input_field mb-0"> 
		            	<input type="text" name="pguniversity" placeholder="Postgrad University" required />
		            	<p class="text-danger pguniversity-error"></p>
		          	</div>
          		</div>
          		<div class="col-md-6">
          			<div class="input_field"> 
				        <div class="select_option">
				            <select name="pgfrom" required>
				                <option value="">Select From</option>
				                <!-- JavaScript loop to populate options -->
				                <script>
				                    for (var year = 2010; year <= 2026; year++) {
				                        document.write('<option value="' + year + '">' + year + '</option>');
				                    }
				                </script>
				            </select>
				            <div class="select_arrow"></div>
				        </div>
				    </div>
		          	<div class="input_field mb-0"> 
				        <div class="select_option">
				            <select name="pgto" required>
				                <option value="">Select To</option>
				                <!-- JavaScript loop to populate options -->
				                <script>
				                    for (var year = 2010; year <= 2026; year++) {
				                        document.write('<option value="' + year + '">' + year + '</option>');
				                    }
				                </script>
				            </select>
				            <div class="select_arrow"></div>
				        </div>
				    </div>
          		</div>
			</div>
          </div>
          <div class="input_field education">
          	<label style="color:#dc2751; font-size:18px; font-weight:600; padding:0px 10px;">Porfolio: </label>
          	<div class="row">
    			<div class="col-md-6">
		             <div class="input_field"> 
		            	<input type="text" name="portfolioplatform" placeholder="Portfolio Platform Name" required />
		          	</div>
		          	
          		</div>
          		<div class="col-md-6">
		          	<div class="input_field mb-0"> 
		            	<input type="text" name="portfoliolink" placeholder="Portfolio Platform Link" required />
		          	</div>
          		</div>
          </div>
          </div>
          <div class="input_field">
          	<label style="color:#dc2751; font-size:18px; font-weight:600; padding:0px 10px;">Skills: </label>
            <div class="skills ml-2">
            	<input type="checkbox" name="skill" id="cb1" value="Website Development">
    			<label for="cb1" style=" font-size:15px;">Website Development</label><br>
    			<input type="checkbox" name="skill" id="cb2" value="Graphic Design">
    			<label for="cb2" style=" font-size:15px;">Graphic Design</label><br>
    			<input type="checkbox" name="skill" id="cb3" value="SEO">
    			<label for="cb3" style=" font-size:15px;">SEO</label><br>
    			<input type="checkbox" name="skill" id="cb4" value="Video Editing">
    			<label for="cb4" style=" font-size:15px;">Video Editing</label><br>
    			<input type="checkbox" name="skill" id="cb5" value="Content Writing">
    			<label for="cb5" style=" font-size:15px;">Content Writing</label><br>
    			<input type="checkbox" name="skill" id="cb6" value="Social Media Marketing">
    			<label for="cb6" style=" font-size:15px;">Social Media Marketing</label>
          </div>
          </div>
          
          <div class="input_field">
          	<label style="color:#dc2751; font-size:18px; font-weight:600; padding:0px 10px;">Profile Picture: </label>
            <input type="file" name="profileimage" placeholder="upload file" required />
          </div>
          <input class="button" name="action" type="submit" value="Register" />
          <hr style="border-top:2px solid black">
         <a href="login.jsp" class="login">Already Have an Account</a>
        </form>
      </div>
    </div>
  </div>
</div>
	
	
	
	<!-- footer -->
	<%@ include file="../components/footer.jsp" %>
	
	<script>
	// Validate first name
	function validateFirstName() {
	    var firstName = document.getElementsByName("firstname")[0].value;
	    var regex = /^[a-zA-Z]+$/;
	    var fname = document.querySelector(".fname-error");

	    if (firstName.length > 0 && firstName.length <= 10 && regex.test(firstName)) {
	        fname.textContent = "";
	        return true;
	    } else {
	        fname.textContent = "Use alphabets and length should be less than 10";
	        return false;
	    }
	}

	// Event listener
	var firstNameInput = document.getElementsByName("firstname")[0];
	firstNameInput.addEventListener("keyup", validateFirstName);
	firstNameInput.addEventListener("blur", function(){
		if(document.getElementsByName("firstname")[0].value.length==0)
		document.querySelector(".fname-error").textContent="";
	});

	// Validate last name
	function validateLastName() {
	    var lastName = document.getElementsByName("lastname")[0].value;
	    var regex = /^[a-zA-Z]+$/;
	    var lname = document.querySelector(".lname-error");

	    if (lastName.length > 0 && lastName.length <= 10 && regex.test(lastName)) {
	        lname.textContent = "";
	        return true;
	    } else {
	        lname.textContent = "Use alphabets and length should be less than 10";
	        return false;
	    }
	}

	// Event listener
	var lastNameInput = document.getElementsByName("lastname")[0];
	lastNameInput.addEventListener("keyup", validateLastName);
	lastNameInput.addEventListener("blur", function(){
		if(document.getElementsByName("lastname")[0].value.length==0)
		document.querySelector(".lname-error").textContent="";
	});
	
	//Validate Password
	function validatePassword() {
	    var password = document.getElementsByName("password")[0].value;
	    var passwordError = document.querySelector(".password-error");
	    var regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;

	    if (regex.test(password)) {
	        passwordError.textContent = "";
	        return true;
	    } else {
	        passwordError.textContent = "Password must contain at least 1 capital letter, 1 digit, 1 special character, and at least 8 or max 20 characters long ";
	        return false;
	    }
	}

	// Event listener for password field
	var passwordInput = document.getElementsByName("password")[0];
	passwordInput.addEventListener("keyup", validatePassword);
	passwordInput.addEventListener("blur", function() {
	    if (document.getElementsByName("password")[0].value.length == 0)
	        document.querySelector(".password-error").textContent = "";
	});

	// Validate confirm password
	function validateConfirmPassword() {
	    var confirmPassword = document.getElementsByName("confirmpassword")[0].value;
	    var password = document.getElementsByName("password")[0].value;
	    var confirmError = document.querySelector(".confirmpassword-error");

	    if (confirmPassword === password) {
	        confirmError.textContent = "";
	        return true;
	    } else {
	        confirmError.textContent = "Passwords do not match";
	        return false;
	    }
	}

	// Event listener for confirm password field
	var confirmPasswordInput = document.getElementsByName("confirmpassword")[0];
	confirmPasswordInput.addEventListener("keyup", validateConfirmPassword);
	confirmPasswordInput.addEventListener("blur", function() {
	    if (document.getElementsByName("confirmpassword")[0].value.length == 0)
	        document.querySelector(".confirmpassword-error").textContent = "";
	});
	// Validate bio 
	function validateBio() {
	    var bio = document.getElementsByName("bio")[0].value;
	    var errorMessage = document.querySelector(".bio-error");
	    var words = bio.split(' ').length;

	    if (words >= 2 && words <= 100) {
	        errorMessage.textContent = "";
	        return true;
	    } else {
	        if (words < 2) {
	            errorMessage.textContent = "Bio should contain at least 2 words";
	        } else {
	            errorMessage.textContent = "Bio should contain less than 50 words";
	        }
	        return false;
	    }
	}

	// Event listener
	var bioInput = document.getElementsByName("bio")[0];
	bioInput.addEventListener("keyup", validateBio);
	bioInput.addEventListener("blur", function(){
		if(document.getElementsByName("bio")[0].value.length==0)
		document.querySelector(".bio-error").textContent="";
	});
	
	// Validate undergrad programme
	function validateUndergradProgramme() {
	    var programme = document.getElementsByName("ugprogramme")[0].value;
	    var programmeError = document.querySelector(".ugprogramme-error");
	    var regex = /^[a-zA-Z\s]*$/; // Regular expression to allow only alphabets and spaces

	    if (programme.length > 1 && programme.length <= 30 && regex.test(programme)) {
	        programmeError.textContent = "";
	        return true;
	    } else {
	        programmeError.textContent = "Enter a correct degree";
	        return false;
	    }
	}

	// Event listener for undergrad programme field
	var programmeInput = document.getElementsByName("ugprogramme")[0];
	programmeInput.addEventListener("keyup", validateUndergradProgramme);
	programmeInput.addEventListener("blur", function() {
	    if (document.getElementsByName("ugprogramme")[0].value.length == 0)
	        document.querySelector(".ugprogramme-error").textContent = "";
	});
	
	// Validate postgrad programme
	function validatePostgradProgramme() {
	    var programme = document.getElementsByName("pgprogramme")[0].value;
	    var programmeError = document.querySelector(".pgprogramme-error");
	    var regex = /^[a-zA-Z\s]*$/; // Regular expression to allow only alphabets and spaces

	    if (programme.length > 1 && programme.length <= 30 && regex.test(programme)) {
	        programmeError.textContent = "";
	        return true;
	    } else {
	        programmeError.textContent = "Enter a correct degree";
	        return false;
	    }
	}

	// Event listener for postgrad programme field
	var programmeInput = document.getElementsByName("pgprogramme")[0];
	programmeInput.addEventListener("keyup", validatePostgradProgramme);
	programmeInput.addEventListener("blur", function() {
	    if (document.getElementsByName("pgprogramme")[0].value.length == 0)
	        document.querySelector(".pgprogramme-error").textContent = "";
	});
	
	// Validate undergrad university
	function validateUndergradUniversity() {
	    var university = document.getElementsByName("uguniversity")[0].value;
	    var universityError = document.querySelector(".uguniversity-error");
	    var regex = /^[a-zA-Z\s]*$/; // Regular expression to allow only alphabets and spaces

	    if (university.length > 0 && university.length <= 20 && regex.test(university)) {
	        universityError.textContent = "";
	        return true;
	    } else {
	        universityError.textContent = "Enter a correct university name";
	        return false;
	    }
	}

	// Event listener for undergrad university field
	var universityInput = document.getElementsByName("uguniversity")[0];
	universityInput.addEventListener("keyup", validateUndergradUniversity);
	universityInput.addEventListener("blur", function() {
	    if (document.getElementsByName("uguniversity")[0].value.length == 0)
	        document.querySelector(".uguniversity-error").textContent = "";
	});

	// Validate postgrad university
	function validatePostgradUniversity() {
	    var university = document.getElementsByName("pguniversity")[0].value;
	    var universityError = document.querySelector(".pguniversity-error");
	    var regex = /^[a-zA-Z\s]*$/; // Regular expression to allow only alphabets and spaces

	    if (university.length > 0 && university.length <= 20 && regex.test(university)) {
	        universityError.textContent = "";
	        return true;
	    } else {
	        universityError.textContent = "Enter a correct university name";
	        return false;
	    }
	}

	// Event listener for postgrad university field
	var universityInput = document.getElementsByName("pguniversity")[0];
	universityInput.addEventListener("keyup", validatePostgradUniversity);
	universityInput.addEventListener("blur", function() {
	    if (document.getElementsByName("pguniversity")[0].value.length == 0)
	        document.querySelector(".pguniversity-error").textContent = "";
	});
	</script>
</body>
</html>