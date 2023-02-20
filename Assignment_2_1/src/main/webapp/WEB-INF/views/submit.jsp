<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/style.css">
	<meta charset="UTF-8">
	<title>Pizza Submitted</title>
</head>
<body>
	<h1>Thank you for your order!</h1>
	<p>
		<b>Size:</b> ${ size }
		<br />
		<b>Toppings:</b> ${ number }
		<br />
		<b>Gluten free crust:</b> ${ crust }
		<br />
		<b>Special instructions:</b>
		<c:out value="${ buildcomment }" />
		<br />
		<b>Total for this pizza:</b> <fmt:formatNumber value="${ price }" type="currency" />
	</p>
	<c:if test="${ price >= 15 }">
		<p style="color:red; font-size:125%"> As your order exceeds $15, you get free delivery on this order! </p>
	</c:if>
	
</body>
</html>