<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Meat Lover's Pizza</title>
	<link rel="stylesheet" href="/style.css">
</head>
<body>
	<h1>Specialty Pizza: Meat  Lover's</h1>
	<p>
		Name: ${ name }
		<br />
		Price: <fmt:formatNumber value="${ price }" type="currency" />
	</p>
	<a href="/">Back to Homepage</a>

</body>
</html>