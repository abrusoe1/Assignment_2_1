<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
</head>
<body>
	<h1>Leave a Review</h1>
	<form action="/review-submit" method="post">
		<b>Your Name:</b> <input name="name" />
		<br />
		<br />
		<b>Comment:</b>
		<br />
		<textarea name="comment" rows="5"></textarea>
		<%-- Comment: <input name="comment" /> --%>
		<br />
		<br />
		<b>Rating:</b>
		<br />
		5 <input name="rating" type=radio value=5/>
		4 <input name="rating" type=radio value=4 />
		3 <input name="rating" type=radio value=3 />
		2 <input name="rating" type=radio value=2 />
		1 <input name="rating" type=radio value=1 />
		<br />
		<br />
		<button type="submit">Submit</button>
		<a href="/">Never Mind</a>
	</form>
</body>
</html> 