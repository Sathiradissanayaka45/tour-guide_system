<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>

<!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/styleUpdate.css" rel="stylesheet">
    <link rel="stylesheet" href="loginform.css">
    <link rel="stylesheet" href="customerinsert.css">
    
    
</head>
<body>
<div class="register-photo">
    <div class="form-container">
        <div class="image-holder"></div>
        <form action="ForgetPasswordServlet" method="post">
            <h2 class="text-center"><strong>Reset Password</strong></h2>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" required ></div>
               <div class="form-group"><input class="form-control" type="text" name="user_id" placeholder="New password" required></div>
            <div class="form-group"><input class="form-control" type="password" name="new_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" id="myInput" placeholder="Repeat-New Password" required></div>
             <!-- An element to toggle between password visibility -->
              Show Password<input type="checkbox" onclick="myFunction()">
               <div class="form-group"><input class="form-control" type="password" name="confirm_password" placeholder="Confirm Password" required></div>
            <div class="form-group">
                <div class="d-flex justify-content-between">
            </div>
              
            <div class="form-group"><button class="btn btn-success btn-block btn-info" type="submit">Reset Password</button></div>
        </form>
    </div>
</div>
</body>
</html>
