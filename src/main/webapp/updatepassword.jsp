<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="loginform.css">
<link rel="stylesheet" href="customerinsert.css">
<script src="customerinsert.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Forget Password</h3>
           <form action="UpdatePasswordServlet" method="post">
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <label class="form-label" for="form3Example1m">Email</label>
                      <input type="email" name="email" id="form3Example1m" class="form-control form-control-lg" placeholder="Email" required />
                      
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">New Password</label>
                  <input type="password" name="passwordnew" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" id="myInput" required id="myInput" class="form-control form-control-lg" placeholder="New password" />
                  
                </div>
                <!-- An element to toggle between password visibility -->
                  Show Password<input type="checkbox" onclick="myFunction()">

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example90">Again Type New Password</label>
                  <input type="password" name="passwordnew1" required id="form3Example90" class="form-control form-control-lg" placeholder="Repeat New password" />
                  
                </div>
                <div class="d-flex justify-content-end pt-3">
                  <button type="Submit" name = "submit" value="Create Customer" class="btn btn-warning btn-lg ms-2">Submit form</button>
                </div>
</form>
              </div>
            </div>
          </div>
        </div>            
      </div>
    </div>
  </div>
</section>



</body>
</html>