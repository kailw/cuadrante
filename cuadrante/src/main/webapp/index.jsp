<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ejercicio 3</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="container">
		<%
			try {
				Integer ancho = Integer.parseInt(request.getParameter("ancho"));
				Integer largo = Integer.parseInt(request.getParameter("largo"));
				Integer c, f, total;
		%>
		<div class="table-responsive">
			<table class="table table-bordered">
				<h1 class="header">Tabla de multiplicaar</h1>
				<%
					for (c = 1; c <= largo; c++) {
							out.println("<tr>");
							for (f = 1; f <= ancho; f++) {
								total = c * f;
								out.println("<td>" + total + "</td>");

							}
							out.println("</tr>");
						}
				%>
			</table>
		</div>
		<%
			} catch (NumberFormatException exepcion) {
		%>
		<h4>Debes rellenar los campos de ancho y alto</h4>
		<%
			}
		%>
		<a href="index.html"><button type="button" class="btn btn-primary">Regresar
				al formulario</button></a>

				
	</div>
</body>
</html>
