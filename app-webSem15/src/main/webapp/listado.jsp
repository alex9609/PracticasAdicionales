<%@page import="co.com.entregas.semana15.carrousel.Carrousel"%>
<%@page import="java.util.List"%>
<%@page import="co.com.entregas.semana15.dao.CarrouselDao"%>
<%
List<Carrousel> ls = (List<Carrousel>)request.getAttribute("lista");
String msj = (String) request.getAttribute("error");
%>

<html>
<head>
<title>Semana 15</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
</head>
<body>
	<main>
		<h1 class="text-secondary text-center">Carrousel</h1>
	<div class="container col-6">
		<%if(ls != null){%>
		<table class="table">
	<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">Imagen</th>
			<th scope="col">Acción</th>
		</tr>
	</thead>
	<tbody>
		<%
		for (Carrousel img : ls) {
		%>
		<tr>
			<th scope="row"></th>
			<td><img src="<%=img.getImagenpath()%>" class="d-block w-100"></td>
			<td> <a class="btn btn-primary">Editar url</a></td>
		</tr>
		<%
		}
		%>
	</tbody>
	</div>
	<%}else{%>
	<h2><%=msj%></h2>
	<%} %>
	

	</main>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</body>
</html>