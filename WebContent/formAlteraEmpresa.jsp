<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa" />




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Altera��o Cadastro</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="post">
		Id: <input type="text" name="id" value="${empresa.id }" readonly="readonly">
		Nome: <input type="text" name="nome" value="${empresa.nome}" /> Data
		Abertura: <input type="text" name="data"
			value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" />" />
		<input type="submit" />
	</form>

</body>
</html>