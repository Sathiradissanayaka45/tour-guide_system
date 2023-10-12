<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%
          String idcard = request.getParameter("idcard");
          String CardNumber = request.getParameter("CardNumber");
          String CardHolderName = request.getParameter("CardHolderName");
          String CVC = request.getParameter("CVC");
          String ExpiredDate = request.getParameter("ExpiredDate");
	%>
	<form action="DeletecardServlet" method="post">
	  <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Card ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="idcard" value="<%= idcard %>" readonly>
                      
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Card Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CardNumber" value="<%= CardNumber %>" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Card Holder Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CardHolderName" value="<%= CardHolderName %>" readonly>
                    </div>
                  </div>
                  <hr>
                 
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">CVC</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CVC" value="<%= CVC %>" readonly>
                    </div>
                  </div>
                    <hr>
                 
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">ExpiredDate</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="ExpiredDate" value="<%= ExpiredDate %>" readonly>
                    </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  <input type="submit" name="submit" class="btn btn-info "  value="Delete My card">
	</form>

</body>
</html>