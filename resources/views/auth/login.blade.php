<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Burguesía</title>
    <link rel="shortcut icon" href="img/iconoBurguesia.jpg" type="image/x-icon">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('css/administrador.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background: #f7f7f7;
            font-family: 'Poppins', sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        #header {
            border-bottom: 2px solid #DDDDDD;
            background-color: #ffffff;
        }
        .login-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 100px; /* Ajusta este valor para bajar el formulario */
        }
        .login-box {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        .login-box h2 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            color: #444;
            font-weight: 700;
        }
        .form-label {
            text-align: left;
            width: 100%;
            font-size: 0.9rem;
            color: #666;
            margin-bottom: 0.5rem;
        }
        .form-control {
            border-radius: 8px;
            padding: 0.75rem 1rem;
            border: 1px solid #ddd;
            margin-bottom: 1rem;
            font-size: 1rem;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .form-control:focus {
            border-color: #9CA64E;
            box-shadow: 0 0 0 0.2rem rgba(156, 166, 78, 0.25);
        }
        .btn-primary {
            background-color: #9CA64E;
            border: none;
            border-radius: 8px;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            font-weight: 600;
            width: 100%;
            color: #ffffff;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #879652;
        }
        .text-center p {
            margin-top: 1.5rem;
            font-size: 0.9rem;
            color: #777;
        }
        .text-center a {
            color: #9CA64E;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }
        .text-center a:hover {
            color: #879652;
        }
        .invalid-feedback {
            color: #e3342f;
            font-weight: 500;
            text-align: left;
            margin-top: -0.5rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav id="header" class="navbar navbar-expand-lg navbar-light bg-white navbar-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand dropdown-center d-flex" href="{{url('/admin/bienvenida')}}" style="color:#000000;">
                <img src="../img/logonegor.png" alt="BP La Burguesía del Pueblo" width="60" height="90">
                <div class="justify-content-center text-center" style="line-height: 1.1;">
                    <span style="white-space: nowrap; font-size: 0.8em;">____ La ____</span><br>
                    <span style="white-space: nowrap; font-size: 1.3em;"><b>Burguesía</b></span><br>
                    <span style="white-space: nowrap; font-size: 0.8em;">del Pueblo</span>
                </div>
            </a>
        </div>
    </nav>

    <!-- Formulario de Inicio de Sesión -->
    <div class="login-container">
        <div class="login-box">
            <h2>Iniciar Sesión</h2>
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="mb-3">
                    <label for="email" class="form-label">Correo Electrónico</label>
                    <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" required autocomplete="email" autofocus>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Contraseña</label>
                    <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" required autocomplete="current-password">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary">Entrar</button>
            </form>
            <div class="text-center mt-3">
                <p>¿No tienes una cuenta? <a href="{{ route('register') }}">Regístrate</a></p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer  style="background-color: white" class="container-fluid">
        <div class="text-center" style="line-height: 0.2; margin-left: 350px; margin-top: 15px; margin-bottom: 15px; color: #5E8C6E;">
            <!--<br><br>-->
            <p style="font-size: 14px;color: #5E8C6E;">Copyright © 2024 Todos los derechos reservados</p>
            <p style="font-size: 12px;color: #5E8C6E;">Realizado por la Universidad Politecnica de Bacalar</p>
        </div>
    </footer>

</body>
</html>
