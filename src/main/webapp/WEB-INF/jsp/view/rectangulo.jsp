<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rectangulo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="/WEB-INF/jsp/includes/header.jsp" %>
	<div class="container">
		<h1>Rectangulo</h1>
		<p>
			<!-- comentario HTML -->
			<%-- comentario JSP --%>

			<%-- ${area} mostrara el valor seteado en request.setAttribute("area", area) en el Servlet --%>
			<%-- sintaxis de Expression Language(EL) --%>
			Al calcular el ${operacion} el resultado es ${resultado}.
		</p>
	</div>
</body>
</html>