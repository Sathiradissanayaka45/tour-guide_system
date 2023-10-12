<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
	<form action="UpdatecardServlet" method="post">
	  <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">idcard</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="idcard" value="<%= idcard %>" readonly>
                      
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">CardNumber</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CardNumber" value="<%= CardNumber %>">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">CardHolderName</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CardHolderName" value="<%= CardHolderName %>" >
                    </div>
                  </div>
                  <hr>
                 
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">CVC</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="CVC" value="<%= CVC %>" >
                    </div>
                  </div>
                                    <hr>
                 
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">ExpiredDate</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" name="ExpiredDate" value="<%= ExpiredDate %>" >
                    </div>
                  </div>
                  </div>
                  </div>
                  </div>
                  <input type="submit" name="submit" class="btn btn-info "  value="Update My Card">
	</form>

</body>
</html>