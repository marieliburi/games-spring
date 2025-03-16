<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <title>Editar Categoria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Estilo do corpo da página */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fb; /* Fundo suave e claro */
            color: #333; /* Texto escuro para contraste */
            margin: 0;
            padding: 0;
        }

        /* Container do formulário */
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
            color: #000000; /* Cor azul para o título */
            margin-bottom: 20px;
        }

        /* Estilo para os campos de formulário */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc; /* Borda leve */
            background-color: #f9f9f9; /* Fundo claro para o campo */
            transition: border-color 0.3s ease;
        }

        /* Estilo para os campos de input ao receber foco */
        input[type="text"]:focus {
            border-color: #007bff; /* Azul quando o campo recebe foco */
            outline: none;
        }

        /* Botões */
        .btn {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        /* Ajuste do botão "Voltar" */
        .btn-primary {
            margin-bottom: 10px;
        }


    </style>
</head>

<body>
    <div class="container">
        <h1>Editar Categoria</h1>
        <form action="/categoria/update" method="post">
            <input type="hidden" name="id" value="${categoria.id}" />
            <div class="form-group">
                <label for="nome">Nome: </label>
                <input type="text" name="nome" class="form-control" value="${categoria.nome}" />
            </div>
            <br />
            <a href="/categoria/list" class="btn btn-primary">Voltar</a>
            <button type="submit" class="btn btn-success">Salvar</button>
        </form>
    </div>
</body>

</html>