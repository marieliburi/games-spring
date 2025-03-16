<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <title>Remover Plataforma</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Estilo para o corpo da página */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fb; /* Fundo suave e claro */
            color: #333; /* Texto escuro para contraste */
            margin: 0;
            padding: 0;
        }

        /* Container para o conteúdo da página */
        .container {
            margin-top: 50px;
            background-color: #ffffff; /* Fundo branco para destacar o conteúdo */
            border-radius: 8px;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Sombras suaves */
            width: 50%; /* Ajuste o tamanho para que fique bonito em telas grandes */
            margin-left: auto;
            margin-right: auto;
        }

        /* Título */
        h1 {
            text-align: center;
            font-size: 2rem;
            color: #dc3545; /* Cor vermelha para destacar a ação de exclusão */
            margin-bottom: 20px;
        }

        /* Parágrafo de confirmação */
        p {
            font-size: 1.2rem;
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        /* Botões */
        .btn {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            text-align: center;
        }

        /* Botão de Voltar */
        .btn-primary {
            background-color: #007bff;
            border: none;
            margin-bottom: 10px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Botão de Excluir */
        .btn-danger {
            background-color: #dc3545;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        /* Estilo para espaçamento entre os botões */
        .btn + .btn {
            margin-top: 10px;
        }

    </style>
</head>

<body>
    <div class="container">
        <h1>Remover Plataforma</h1>
        <p>Tem certeza que deseja remover a plataforma "${plataforma.nome}" ?</p>
        <form action="/plataforma/delete" method="post">
            <input type="hidden" name="id" value="${plataforma.id}" />
            <br />
            <a href="/plataforma/list" class="btn btn-primary">Voltar</a>
            <button type="submit" class="btn btn-danger">Excluir</button>
        </form>
    </div>
</body>

</html>