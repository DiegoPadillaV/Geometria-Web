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

		<form method="get" action="calculo-rectangulo">

			<div class="mb-3">
				<select name="operacion" class="form-select">
					<option selected>Seleccione una operacion</option>
					<option value="area">Calcular el Area</option>
					<option value="perimetro">Calcular el Perimetro</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="base" class="form-label">Base</label> <input type="text"
					class="form-control" id="base" name="base">
			</div>
			<div class="mb-3">
				<label for="altura" class="form-label">Altura</label> <input
					type="text" class="form-control" id="altura" name="altura">
			</div>
			<button class="btn btn-primary" type="submit">Calcular</button>
		</form>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>