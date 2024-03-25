<%@page import="com.model.ClientModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DigiLancer</title>
<style>
	body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
			padding:0px !important;
		}
		#dc2751:#dc2751;
		$black:#dc2751;
		$grey:#dc2751;
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
		margin: 50px auto;
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
	    &[type="checkbox"], &[type="radio"] {
	      border: 0;
	      clip: rect(0 0 0 0);
	      height: 1px;
	      margin: -1px;
	      overflow: hidden;
	      padding: 0;
	      position: absolute;
	      width: 1px;
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
	.checkbox_option{
	    label{
	        margin-right: 1em;
	        position: relative;
	        &:before {
	          content: "";
	          display: inline-block;
	          width: 0.5em;
	          height: 0.5em;
	          margin-right: 0.5em;
	          vertical-align: -2px;
	          border: 2px solid $grey;
	          padding: 0.12em;
	          background-color: transparent;
	          background-clip: content-box;
	          transition: all 0.2s ease;
	        }
	        &:after {
	          border-right: 2px solid $black;
	          border-top: 2px solid $black;
	          content: "";
	          height: 20px;
	          left: 2px;
	          position: absolute;
	          top: 7px;
	          transform: scaleX(-1) rotate(135deg);
	          transform-origin: left top;
	          width: 7px;
	          display: none;
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
</style>
</head>
<body>
	<%
		HttpSession session1 = request.getSession();
	  String category = session1.getAttribute("category").toString();
	%>
	<!-- navbar-html -->
   <%@ include file="navbar.jsp" %>
   
   <!-- projectform -->
	<div class="form_wrapper">
	  <div class="form_container">
	    <div class="title_container">
	      <h2>Post <%= category %> Project</h2>
	      <% 
	      Object msgAttribute = request.getAttribute("msg");
	      if (msgAttribute != null) {%>
	      <% String msg = msgAttribute.toString();
	          if (msg.equals("failed")) {
	      %>
	      <div class="alert alert-danger mb-0" id="successAlert" role="alert">
		  	Invalid Project Details
		  </div>
		   <% }	
	      	}
	      else{%>
	      <script>
	   			console.log(msgAttribute);
	   		</script>
	      <%} %>
	    </div>
	    <div class="row clearfix">
	      <div class="">
	      <!-- action="congratulations.jsp" -->
	      <% ClientModel cmodel = (ClientModel) session.getAttribute("cmodel"); 
	      	if(cmodel==null){
	      		request.getRequestDispatcher("login.jsp").forward(request, response);
	      	}
	      %>
	        <form action="../ProjectController?action=postproject&userid=<%= cmodel.getclientId() %>" method="post" style="width:840px;">
	          <div class="input_field"> 
	            <input type="text" name="projectname" id="projectname" placeholder="Project Name" required />
	            <p class="text-danger pname-error"></p>
	          </div>
	          <div class="input_field"> 
	            <input disabled=true type="text" name="category" placeholder="Category" value="<%= category %>" required />
	          </div>
	          <div class="input_field"> 
	            <textarea style="padding:3px 10px 0px 35px; height:100px;" class="w-100" row="30" col="30" type="text" name="pdescription" placeholder="Project Description" required></textarea>
	            <p class="text-danger pdescription-error"></p>
	          </div>
	          <div class="input_field"> 
	            <input type="text" name="min" placeholder="Minimum Project Amout" required />
	            <p class="text-danger min-error"></p>
	          </div>
	          <div class="input_field"> 
	            <input type="text" name="max" placeholder="Maximum Project Amount" required />
	            <p class="text-danger max-error"></p>
	          </div>
	          <div class="input_field"> 
	            <input type="text" name="deadline" placeholder="Deadline" required />
	            <p class="text-danger deadline-error"></p>
	          </div>
	          <input class="button" type="submit" value="Post" />
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- footer -->
	<%@ include file="../components/footer.jsp" %>
   <script>
	// Validate Project name
	function validateProjectName() {
	    var projectName = document.getElementsByName("projectname")[0].value;
	    var regex = /^[a-zA-Z ]+$/;
	    var pname = document.querySelector(".pname-error");
		
	    if (projectName.length > 0 && projectName.length <= 30 && regex.test(projectName)) {
	        pname.textContent = "";
	        return true;
	    } else {
	        pname.textContent = "Use alphabets and length should be less than 30";
	        return false;
	    }
	}

	// Event listener
	var projectNameInput = document.getElementsByName("projectname")[0];
	projectNameInput.addEventListener("keyup", validateProjectName);
	projectNameInput.addEventListener("blur", function(){
		if(document.getElementsByName("projectname")[0].value.length==0)
		document.querySelector(".pname-error").textContent="";
	});
	
	// Validate project description 
	function validatePDescription() {
	    var pdescription = document.getElementsByName("pdescription")[0].value;
	    var errorMessage = document.querySelector(".pdescription-error");
	    var words = pdescription.split(' ').length;

	    if (words >= 5 && words <= 100) {
	        errorMessage.textContent = "";
	        return true;
	    } else {
	        if (words < 5) {
	            errorMessage.textContent = "About should contain at least 5 words";
	        } else {
	            errorMessage.textContent = "About should contain less than 50 words";
	        }
	        return false;
	    }
	}

	// Event listener
	var pdescriptionInput = document.getElementsByName("pdescription")[0];
	pdescriptionInput.addEventListener("keyup", validatePDescription);
	pdescriptionInput.addEventListener("blur", function(){
		if(document.getElementsByName("pdescription")[0].value.length==0)
		document.querySelector(".pdescription-error").textContent="";
	});
	
	// Validate Minimum Amount
	function validateMin() {
	    var min = document.getElementsByName("min")[0].value;
	    var regex = /^[0-9]+$/;
	    var minerror = document.querySelector(".min-error");
	    if (min.length > 0 && min.length <= 10 && regex.test(min)) {
	        minerror.textContent = "";
	        return true;
	    } else {
	    	minerror.textContent = "Use numbers and length should be less than 10";
	        return false;
	    }
	}

	// Event listener
	var minInput = document.getElementsByName("min")[0];
	minInput.addEventListener("keyup", validateMin);
	minInput.addEventListener("blur", function(){
		if(document.getElementsByName("min")[0].value.length==0)
		document.querySelector(".min-error").textContent="";
	});
	
	// Validate Maximum Amount
	function validateMax() {
		var min = document.getElementsByName("min")[0].value;
	    var max = document.getElementsByName("max")[0].value;
	    var regex = /^[0-9]+$/;
	    var maxerror = document.querySelector(".max-error");
	    if ((max.length > 0 && max.length <= 10 && regex.test(max))&& parseInt(min)<parseInt(max)) {
	        maxerror.textContent = "";
	        return true;
	    }
	    else if(parseInt(min)>parseInt(max)){
	    	maxerror.textContent = "Maximum Amount should be bigger than Minimum Amount";
	        return false;
	    }
	    else {
	    	maxerror.textContent = "Use numbers and length should be less than 10";
	        return false;
	    }
	}

	// Event listener
	var maxInput = document.getElementsByName("max")[0];
	maxInput.addEventListener("keyup", validateMax);
	maxInput.addEventListener("blur", function(){
		if(document.getElementsByName("max")[0].value.length==0)
		document.querySelector(".max-error").textContent="";
	});
	
	// Validate Deadline
	function validateDeadline() {
	    var deadline = document.getElementsByName("deadline")[0].value;
	    var regex = /^\d+$/;
	    var deadlineError = document.querySelector(".deadline-error");
	    if (deadline.length > 0 && deadline.length <= 3 && regex.test(deadline) && parseInt(deadline) <= 365) {
	        deadlineError.textContent = "";
	        return true;
	    } else if (parseInt(deadline) > 365) {
	        deadlineError.textContent = "Deadline cannot exceed 365 days";
	        return false;
	    } else {
	        deadlineError.textContent = "Please enter a valid deadline (up to 365 days)";
	        return false;
	    }
	}

	// Event listener
	var deadlineInput = document.getElementsByName("deadline")[0];
	deadlineInput.addEventListener("keyup", validateDeadline);
	deadlineInput.addEventListener("blur", function(){
	    if (document.getElementsByName("deadline")[0].value.length == 0)
	        document.querySelector(".deadline-error").textContent = "";
	});

	
	//Alert
	function hideAlert() {
        var alert = document.getElementById('successAlert');
        setTimeout(function(){
        	console.log(alert);
        	if(alert) {
                alert.style.display = 'none';
            }
        }, 2000);
    }
	<% 
		int id = cmodel.getclientId();
		int num=1;
	%>
	console.log(<%= id %>+" "+<%= num %>)
   </script>
	
</body>
</html>