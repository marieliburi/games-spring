<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <title>Jogos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet"> 
<style>
    /* Fundo da página */
    body {
        background-image: url('URL-DA-SUA-IMAGEM'); /* Substitua pela URL da sua imagem */
        background-size: cover;
        background-position: center center;
        background-attachment: fixed;
        color: white;
        font-family: Arial, sans-serif;
    }

    /* Estilo do container principal */
    .container {
        margin-top: 30px;
        background-color: rgba(0, 0, 0, 0.5); /* Adiciona uma camada semitransparente para melhorar a legibilidade */
        padding: 20px;
        border-radius: 10px;
    }

    /* Estilo do botão de home */
    .btn-home {
        background-color: #36963a;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 16px;
        text-decoration: none; /* Remover sublinhado do link */
        transition: background-color 0.3s ease;
    }

    .btn-home i {
        font-size: 20px; /* Aumenta o tamanho do ícone */
        margin-right: 8px; /* Espaçamento entre o ícone e o texto */
    }

    .btn-home:hover {
        background-color: #2b7a29; /* Muda a cor ao passar o mouse */
    }

    /* Estilo da tabela */
    table {
        width: 100%;
        margin-top: 20px;
        background-color: rgba(0, 0, 0, 0.7); /* Fundo mais escuro para a tabela */
        border-radius: 10px;
        color: white;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background-color: #007bff;
    }


</style>
</head>

<body>
    <div class="container">
        <h1>Jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th>Plataformas</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${jogos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria.nome}</td>
                    <td>
                        <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                            ${s.getCount() > 1 ? ", " : ""}
                            ${p.nome}
                        </c:forEach>
                    </td>
                    <td>
                        <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                        <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="/" class="btn-home" title="Voltar ao Home">
            <i class="fas fa-home"></i> Voltar ao Home
        </a>
    </div>
</body>
</html>
