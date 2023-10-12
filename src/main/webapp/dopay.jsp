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
<link rel="stylesheet" href="useraccount.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <c:forEach var="card" items="${cardDetails}">
      	<c:set var="idcard" value="${card.getIdcard()}"/>
	    <c:set var="CardNumber" value="${card.getCardNumber()}"/>
	    <c:set var="CardHolderName" value="${card.getCardHolderName()}"/>
	    <c:set var="CVC" value="${card.getCVC()}"/>
	    <c:set var="ExpiredDate" value="${card.getExpiredDate()}"/>
	     </c:forEach>


	     CardNumber    ${CardNumber}<br>
	     CardHolderName   ${CardHolderName}<br>
	     CVC        ${CVC}<br>
	     ExpiredDate       ${ExpiredDate}<br>
	     
	     <div class="mt-3">
                      
                      <c:url value="deletecard.jsp" var="carddelete">
		                 <c:param name="idcard" value="${idcard}"/>
		                 <c:param name="CardNumber" value="${CardNumber}"/>
		                 <c:param name="CardHolderName" value="${CardHolderName}"/>
		                 <c:param name="CVC" value="${CVC}"/>
		                 <c:param name="ExpiredDate" value="${ExpiredDate}"/>
	                  </c:url>
	                  <a href="${carddelete}">
                      <button name="delete" class="btn btn-outline-primary">Delete My Card</button>
                      
                      <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button> -->
                      </a>
           </div>
                     <c:url value="CardUpdate.jsp" var="cardupdate">
		                 <c:param name="idcard" value="${idcard}"/>
		                 <c:param name="CardNumber" value="${CardNumber}"/>
		                 <c:param name="CardHolderName" value="${CardHolderName}"/>
		                 <c:param name="CVC" value="${CVC}"/>
		                 <c:param name="ExpiredDate" value="${ExpiredDate}"/>
	                  </c:url>
	                  <a href="${cardupdate}"><button name="update" class="btn btn-outline-primary">Update Card</button></a>
                      
        </body>
        </html>