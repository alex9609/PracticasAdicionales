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
		<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-inner">
				    <div class="carousel-item active">
						<img src="<%=ls.get(0).getImagenpath()%>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
						<img src="<%=ls.get(1).getImagenpath()%>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
						<img src="<%=ls.get(2).getImagenpath()%>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
						<img src="<%=ls.get(3).getImagenpath()%>" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
						<img src="<%=ls.get(4).getImagenpath()%>" class="d-block w-100">
				    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
		</div>
		
		<br>
		<br>
		
		 	<a class="btn btn-primary" href="<%=request.getContextPath()%>/ListadoImagenesServlet" role="button">Guardar</a>	
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