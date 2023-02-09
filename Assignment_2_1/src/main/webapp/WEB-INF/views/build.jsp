<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Builder</title>
</head>
<body>
	<h1>Build your own pizza</h1>
	<form action="/review-submit" method="post">
		<b>Size</b>
		<select name="size">
			<option value=size-id>Small</option>
			<option value=size-id>Medium</option>
			<option value=size-id>Large</option>
		</select>
		<br />
		<br />
		<b>How many toppings?</b> <input name="name" />
		<%-- Comment: <input name="comment" /> --%>
		<br />
		<br />
		<input name="crust" type="checkbox"/><b>Gluten-free crust?</b>($2 extra) 
		<br />
		<br />
		<b>Special Instructions (Optional):</b>
		<br />
		<textarea name="comment" rows="5"></textarea>
		<br />
		<br />
		<button type="submit">Calculate Price</button>
		<a href="/">Never Mind</a>
	</form>
</body>
</html> 