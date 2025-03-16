<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Home - Gerenciador de Jogos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet"> <!-- Font Awesome para ícones -->
    <style>
        /* Fundo da página */
        body {
            background-image: url('https://img.freepik.com/fotos-premium/sala-de-jogos-futurista-com-quadro-vermelho-de-neon-e-estetica-cyberpunk_1209340-1961.jpg?semt=ais_hybrid'); 
            background-size: cover;
            background-position: center center;
            background-attachment: fixed;
            color: white;
            font-family: Arial, sans-serif;
        }

        /* Estilo da seção hero */
        .hero {
            background: rgba(0, 0, 0, 0.5); /* Fundo escuro com opacidade */
            color: white;
            padding: 70px 20px;
            text-align: center;
            margin-bottom: 50px;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        .hero p {
            font-size: 1.2rem;
        }

        /* Botões principais */
        .btn-custom {
            margin: 10px;
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 25px; 
            transition: background-color 0.3s ease;
        }


        /* Estilo do rodapé */
        footer {
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 5px 0;
            text-align: center;
            position: fixed;
            width: 100%;
            bottom: 0;
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
            <a href="/categoria/list" class="btn btn-primary btn-custom">Categorias</a>
            <a href="/jogo/list" class="btn btn-success btn-custom">Jogos</a>
            <a href="/plataforma/list" class="btn btn-warning btn-custom">Plataformas</a>
        </div>
    </div>

    <!-- Rodapé -->
    <footer>
        <p>&copy; 2025 Marieli Buri</p>
    </footer>

</body>

</html>
