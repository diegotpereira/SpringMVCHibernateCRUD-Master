<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tela de Gerenciamento de funcionários</title>

<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div align="center">
		<h1>Lista de Funcionários</h1>
		
		<table border="1">

			<th>NOME</th>
			<th>CPF</th>
			<th>EMAIL</th>
			<th>ENDEREÇO</th>
			<th>TELEFONE</th>
			<th>AÇÃO</th>

			<c:forEach var="pessoa" items="${listPessoa}">
				<tr>

					<td>${pessoa.nome}</td>
					<td>${pessoa.cpf}</td>
					<td>${pessoa.email}</td>
					<td>${pessoa.endereco}</td>
					<td>${pessoa.telefone}</td>
					<td><a href="editPessoa?id=${pessoa.id}">Editar</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deletePessoa?id=${pessoa.id}">Deletar</a></td>

				</tr>
			</c:forEach>
		</table>
		<h4>
			Novo funcionário <a href="newPessoa">Clique Aqui</a>
		</h4>
	</div>
</body>
</html>