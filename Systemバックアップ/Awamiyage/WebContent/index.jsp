<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

	<!-- トップページへの遷移 -->
	<% application.getRequestDispatcher("/PageControlFront?pg_id=101&fr_id=100").forward(request, response); %>

</body>
</html>


