<%@page import="co.com.entregas.semana15.carrousel.Carrousel"%>
<%@page import="java.util.List"%>
<%@page import="co.com.entregas.semana15.dao.CarrouselDao"%>
<%
List<Carrousel> ls = (List<Carrousel>) request.getAttribute("lista");
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
			<th scope="col">Imagen</th>
			<th scope="col">Acción</th>
		</tr>
	</thead>
	<tbody>
		<%
		for (Carrousel img : ls) {
		%>
		<tr>
			<td><img src="<%=img.getImagenpath()%>" class="d-block w-100"></td>
			<td>
			<form action="<%=request.getContextPath()%>/ListadoImagenesServlet" method="POST"
			onKeyPress="if(event.keyCode == 13) event.returnValue = false;">
				<label for="inputImage" class="form-label">URL email</label>
				<input type="hidden" id="data" name="data">
				<input type="text" class="form-control" id="<%=img.getId()%>">
				<a class="btn btn-primary" onclick="sendImage(<%=img.getId()%>)" role="button">Cambiar imagen</a>
				</td>				
			</form>
		</tr>
		<%
		}
		%>
	</tbody>
	<tfoot>
		<tr>
			<td>
				<a class="btn btn-primary" href="<%=request.getContextPath()%>/index.jsp" role="button">Volver a carrousel</a>
			</td>
		</tr>
	</tfoot>
	</div>
	<%}else{%>
	<h2><%=msj%></h2>
	<%} %>
	

	</main>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</body>
<script>

	function sendImage(str){
		const form = document.forms[0]; //Me devuelve el primer formulario dal html
		const object = {
			id: str,
			image: document.getElementById(str).value	
		}
		
		document.getElementById('data').value = JSON.stringify(object);
		
		//Invocar al submit del formulario
		form.submit();
	}

</script>
</html>