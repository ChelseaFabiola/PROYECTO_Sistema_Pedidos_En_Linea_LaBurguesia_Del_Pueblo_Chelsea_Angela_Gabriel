@include('administrar.header')
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Burguesía del Pueblo</title>
    <link rel="stylesheet" href="styles.css">
</head>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<body style="background-color: white; color: black; ">
    <div class="container">
        <h2>Hola {{ Auth::user()->name }}</h2>
        <h1 class="welcome">¡Bienvenido a la Burguesia del pueblo!</h1>
        <h5 class="description">¡Hola y bienvenido al panel del administrador 
            de "La Burguesía del Pueblo"! Aquí podrás gestionar todas las secciones
             de nuestro sitio web.</h5>
    </div>
</body>
</html>
<div style=" margin-top: 200px;">
    @include('administrar.footer')
</div>