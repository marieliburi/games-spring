<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Home - Gerenciador de Jogos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {

            background-color: #f8f9fa;

        }

        .hero {

            background: linear-gradient(to right, #007bff, #6610f2);

            color: white;

            padding: 60px 20px;

            text-align: center;

        }

        .hero h1 {

            font-size: 2.5rem;

        }

        .hero p {

            font-size: 1.2rem;

        }

        .btn-custom {

            margin: 10px;

            padding: 12px 25px;

            font-size: 1.2rem;

        }
    </style>
</head>

<body>

    <!-- Seção Hero -->
    <div class="hero">
        <h1>Bem-vindo ao Gerenciador de Jogos</h1>
        <p>Cadastre, edite e gerencie seus jogos, categorias e plataformas facilmente!</p>
    </div>

    <!-- Conteúdo principal -->
    <div class="container text-center mt-5">
        <h2>O que deseja fazer?</h2>
        <div class="mt-4">
            <a href="/categoria/insert" class="btn btn-primary btn-custom">Cadastrar Categoria</a>
            <a href="/jogo/insert" class="btn btn-success btn-custom">Cadastrar Jogo</a>
            <a href="/plataforma/insert" class="btn btn-warning btn-custom">Cadastrar Plataforma</a>
        </div>
    </div>

</body>

</html>