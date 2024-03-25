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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
	<style>
		body{
			font-family: 'Poppins', sans-serif;
			background-color:rgb(23,23,23);
		}
		/* heading-css */
        /* Parallax section */
        #promo {
            background: url('images/contact.jpg') fixed center no-repeat;
            background-size: cover;
            position: relative;
            color: #fff;
            text-align: center;
            padding: 100px 0; /* Adjust padding as needed */
        }

        /* Black overlay */
        #promo::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Adjust the overlay color and opacity */
        }

        /* Container styles */
        #promo .container {
            position: relative;
            z-index: 1;
        }

        /* Text styles */
        #promo h5,
        #promo h1 {
            margin: 0;
            font-size: 40px; /* Adjust the font size */
        }

        #promo h1 {
            margin-top: 10px;
            font-size: 70px; /* Adjust the font size */
        }
        
        /* CONTACT US */
        
		*, *:before, *:after {
		  box-sizing: border-box;
		  -webkit-font-smoothing: antialiased;
		  -moz-osx-font-smoothing: grayscale;
		}
		
		
		button, input {
		  font-family: 'Montserrat', sans-serif;
		  font-weight: 700;
		  letter-spacing: 1.4px;
		}
		
		.background {
		  display: flex;
		  min-height: 100vh;
		}
		
		.container {
		  flex: 0 1 700px;
		  margin: auto;
		  padding: 10px;
		}
		
		.screen {
		    position: relative;
		    background: rgb(23,23,23);
		    border-radius: 15px;
		    padding: 50px; /* Adjust padding for the screen */
		    width:80vw;
		    box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
		  }
		
		.screen:after {
		  content: '';
		  display: block;
		  position: absolute;
		  top: 0;
		  left: 20px;
		  right: 20px;
		  bottom: 0;
		  border-radius: 15px;
		  box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
		  z-index: -1;
		}
		
		
		
		
		
		
		
		
		
		.screen-body {
		    display: flex;
		  }
		
		.screen-body-item {
		    flex: 1;
		    padding: 30px; /* Adjust padding for each body item */
		  }
		
		.screen-body-item.left {
		  display: flex;
		  flex-direction: column;
		}
		
		.app-title {
		  display: flex;
		  flex-direction: column;
		  position: relative;
		  color: #ea1d6f;
		  font-size: 26px;
		}
		
		.app-title {
		    display: flex;
		    flex-direction: column;
		    position: relative;
		    color: #ea1d6f;
		    font-size: 36px; /* Adjust the font size */
		    font-weight:500;
		  }
		
		.app-contact {
		    margin-top: auto;
		    font-size: 18px; /* Adjust the font size */
		    color: #888;
		  }
		
		.app-form-group {
		    margin-bottom: 20px; /* Adjust margin for each form group */
		  }
		
		.app-form-group.message {
		  margin-top: 40px;
		}
		
		.app-form-group.buttons {
		  margin-bottom: 0;
		  text-align: right;
		}
		
		.app-form-control {
		    width: 100%;
		    padding: 15px 0; /* Adjust padding for the form controls */
		    background: none;
		    border: none;
		    border-bottom: 1px solid #666;
		    color: #ddd;
		    font-size: 18px; /* Adjust the font size */
		    outline: none;
		    transition: border-color .2s;
		  }
		
		.app-form-control::placeholder {
		  color: #666;
		}
		
		.app-form-control:focus {
		  border-bottom-color: #ddd;
		}
		
		.app-form-button {
		    background: none;
		    border: none;
		    color: #ea1d6f;
		    font-size: 18px; /* Adjust the font size */
		    cursor: pointer;
		    outline: none;
		  }
		
		.app-form-button:hover {
		  color: #b9134f;
		}
		
		.credits {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  margin-top: 20px;
		  color: #ffa4bd;
		  font-family: 'Roboto Condensed', sans-serif;
		  font-size: 16px;
		  font-weight: normal;
		}
		
		.credits-link {
		  display: flex;
		  align-items: center;
		  color: #fff;
		  font-weight: bold;
		  text-decoration: none;
		}
		
		.dribbble {
		  width: 20px;
		  height: 20px;
		  margin: 0 5px;
		}
		
		@media screen and (max-width: 520px) {
		  .screen-body {
		    flex-direction: column;
		  }
		
		  .screen-body-item.left {
		    margin-bottom: 30px;
		  }
		
		  .app-title {
		    flex-direction: row;
		  }
		
		  .app-title span {
		    margin-right: 12px;
		  }
		
		  .app-title:after {
		    display: none;
		  }
		}
		
		@media screen and (max-width: 600px) {
		  .screen-body {
		    padding: 40px;
		  }
		
		  .screen-body-item {
		    padding: 0;
		  }
		}

		
	</style>
    <title>DigiLancer</title>
  </head>
<body>
	<!-- navbar-html -->
   <%@ include file="components/navbar.jsp" %>
    <!-- heading -->
    <section id="promo" class="parallax-one parallax">
        <div class="container">
            <h1>Contact Us</h1>
        </div>
    </section>
    <!-- CONTACT US FORM -->
    <div class="background">
	  <div class="container">
	    <div class="screen">
	      
	      <div class="screen-body">
	        <div class="screen-body-item left">
	          <div class="app-title">
	            <span>GET IN TOUCH</span>
	          </div>
	          <div class="app-contact">CONTACT INFO : +91 95588 34372</div>
	        </div>
	        <div class="screen-body-item">
	          <div class="app-form">
	            <div class="app-form-group">
	              <input class="app-form-control" placeholder="NAME" >
	            </div>
	            <div class="app-form-group">
	              <input class="app-form-control" placeholder="EMAIL">
	            </div>
	            <div class="app-form-group">
	              <input class="app-form-control" placeholder="CONTACT NO">
	            </div>
	            <div class="app-form-group message">
	              <input class="app-form-control" placeholder="MESSAGE">
	            </div>
	            <div class="app-form-group buttons">
	              <button class="app-form-button">SEND</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>

	    
   <!-- footer -->
    <%@ include file="../components/footer.jsp" %>
	
</body>
</html>