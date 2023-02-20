<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pizza Builder</title>
	<link rel="stylesheet" href="/style.css">
</head>
<body>
	<h1>Build your own pizza</h1>
	<form action="/submit" method="post">
		<b>Size</b>
		<select name="size">
			<option value=small>Small</option>
			<option value=medium>Medium</option>
			<option value=large>Large</option>
		</select>
		<br />
		<br />
		<b>How many toppings?</b> <input name="number" type="number" />
		<ul>
			<c:forEach items="${ toppings }" var="top">
				<li> ${ top } </li>
			</c:forEach>
		</ul>
		<br />
		<input name="crust" type="checkbox"/><b>Gluten-free crust?</b>($2 extra) 
		<br />
		<br />
		<b>Special Instructions (Optional):</b>
		<br />
		<textarea name="buildcomment" rows="5"></textarea>
		<input name="buildcomment" />
		<br />
		<br />
		<button type="submit">Calculate Price</button>
		<a href="/">Never Mind</a>
	</form>
</body>
</html> 