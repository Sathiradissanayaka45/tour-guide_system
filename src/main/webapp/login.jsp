<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="loginform.css">
</head>
<body>

	<div id="mainContainer">
  <div class="">
  <div class="row align-items-center">
    <div class="col-lg-6 col-md-6 col-xs-12 d-none d-lg-block d-md-block">
      <div id="mainBgn"></div>
    </div>
    <div class="col-lg-6 col-md-6 col-xs-12">
      <div class="p-4 centerOnMobile" >
        <div class="formContainer">
          <h2 class="p-2 h4 text-center"><i class="fas fa-lock me-2"></i> Login</h2>
          <form action="LoginServlet" method ="post">
            <div class="form-floating my-3">
              <label for="floatingInput">User Name</label>
              <input type="text" name = "uid" class="form-control" id="floatingInput" placeholder="User Name">
              
            </div>
            <div class="form-floating">
              <label for="floatingPassword">Password</label>
              <input type="password" name = "pass" class="form-control" id="floatingPassword" placeholder="Password">
              
            </div>
            <div id="btnHolder">
              <input type ="submit" name = "submit" value = "login" class="btn btn-lg btn-primary mt-3 w-100">
            </div>
          </form>
        </div>
        <div class="mt-2 text-center">
          <a href="customerinsert.jsp">New? signup</a><br />
          <a href="updatepassword.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>
</body>
</html>