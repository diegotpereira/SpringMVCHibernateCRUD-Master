<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tela de Gerenciamento de funcionários</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div align="center">
		<h1>Lista de Funcionários</h1>
		
		<table border="1">

			<th>NOME</th>
			<th>EMAIL</th>
			<th>ENDEREÇO</th>
			<th>TELEFONE</th>
			<th>AÇÃO</th>

			<c:forEach var="pessoa" items="${listPessoa}">
				<tr>

					<td>${pessoa.nome}</td>
					<td>${pessoa.email}</td>
					<td>${pessoa.endereco}</td>
					<td>${pessoa.telefone}</td>
					<td><a href="editEmployee?id=${pessoa.id}">Editar</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteEmployee?id=${pessoa.id}">Deletar</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			Registrar um novo funcionário <a href="newEmployee">Clique Aqui</a>
		</h4>
	</div>
</body>
</html>