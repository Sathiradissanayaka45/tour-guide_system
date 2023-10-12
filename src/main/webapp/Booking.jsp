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

<title>Insert title here</title>
<link rel="stylesheet" href="useraccount.css">
</head>
<body>

        <c:forEach var="book" items="${bookDetails}">
      
      	<c:set var="idbooking" value="${book.id}"/>
	    <c:set var="date" value="${book.date}"/>
	    <c:set var="destination" value="${book.destination}"/>
	    <c:set var="requests" value="${book.requests}"/>

	     </c:forEach>
	     
	                <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Booking ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${idbooking}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Requested date and time</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${date}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Requested destination</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${destination}
                    </div>
                  </div>
                  <hr>
                 <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Special Request</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${requests}
                    </div>
                  </div>
                  <hr>
                 
                
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                    <c:url value="updatebooking.jsp" var="bookingupdate">
		                 <c:param name="idbooking" value="${idbooking}"/>
		                 <c:param name="date" value="${date}"/>
		                 <c:param name="destination" value="${destination}"/>
		                 <c:param name="requests" value="${requests}"/>
		         
	                </c:url>
                          
                      <a href="${bookingupdate}" type="button" class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit Booking</a>
                    </div>
                  </div>
                  <div class="mt-3">
                      
                      <c:url value="deletebooking.jsp" var="bookingdelete">
		                 <c:param name="idbooking" value="${idbooking}"/>
		                 <c:param name="date" value="${date}"/>
		                 <c:param name="destination" value="${destination}"/>
		                 <c:param name="requests" value="${requests}"/>
	                  </c:url>
	                  <a href="${bookingdelete}">
                      <button name="delete" class="btn btn-outline-primary">Delete Request Booking</button>
                      
                      <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button> -->
                      </a>
                    </div>
                </div>
              </div>




            </div> 

</body>
</html>