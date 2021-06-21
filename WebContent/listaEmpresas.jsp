<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard TagLib</title>
</head>
<body>
	Lista de empresas:
	<br />

	<table border="1" style="border-color: orange">
		<tr>
			<td>ID</td>
			<td>Empresa</td>
			<td>Data Abertura</td>
			<td>Ação</td>
		</tr>
		<c:forEach items="${empresas}" var="empresa">
			<tr>
				<td>${empresa.id }</td>
				<td>${empresa.nome }</td>
				<td><fmt:formatDate value="${empresa.dataAbertura }"
						pattern="dd/MM/yyyy" /></td>
				<td>
				<button><a href="/gerenciador/removeEmpresa?id=${empresa.id }">Remover<br></a></button>
				<button><a href="/gerenciador/mostraEmpresa?id=${empresa.id }">Editar<br></a></button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<button><a href="/gerenciador/formNovaEmpresa.jsp">Cadastrar Nova</a></button>


</body>
</html>