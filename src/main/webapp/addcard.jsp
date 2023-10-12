<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="CardinsertServlet" method="post">

 <label for="card_number">Card Number:</label>
  <input type="text" id="card_number" name="card_number"><br>
  <label for="cardholder_name">Name of Card holder:</label>
  <input type="text" id="cardholder_name" name="cardholder_name"><br>

 <label for="cvc">CVC:</label>
  <input type="text" id="cvc" name="CVC"><br>

  <label for="expiry_date">Expired Date:</label>
  <input type="text" id="expiry_date" name="expiry_date"><br>

  

  <button type="Submit" name = "submit" value="Add Card" class="btn btn-warning btn-lg ms-2">Add Card</button>
</form>

</body>
</html>