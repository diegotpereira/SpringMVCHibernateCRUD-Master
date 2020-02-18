<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Novo/Editar Contato</title>
</head>
<body>
    <div align="center">
        <h1>Novo/Editar Funcionário</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="pessoa">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Nome:</td>
                <td><form:input path="nome" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Endereço:</td>
                <td><form:input path="endereco" /></td>
            </tr>
            <tr>
                <td>Telefone:</td>
                <td><form:input path="telefone" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>