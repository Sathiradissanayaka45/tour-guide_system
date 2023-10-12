<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="useraccount.css">
<title>Insert title here</title>
</head>
<body>

    <%
		String idbooking = request.getParameter("idbooking");
		String date = request.getParameter("date");
		String destination = request.getParameter("destination");
		String requests = request.getParameter("requests");
	%>
	
	
	
	<form action="UpdateBookingServlet" method="post">
	  <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Booking ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="idbooking" value="<%= idbooking %>" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Requested date and time</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="date" value="<%= date %>">
                      
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Requested destination</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="destination" value="<%= destination %>">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Special Request</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="requests" value="<%= requests %>">
                    </div>
                  </div>
                  <hr>
                  </div>
                  </div>
                  </div>
                  <input type="submit" name="submit" class="btn btn-info " value="Update My Data">
	</form>

</body>
</html>