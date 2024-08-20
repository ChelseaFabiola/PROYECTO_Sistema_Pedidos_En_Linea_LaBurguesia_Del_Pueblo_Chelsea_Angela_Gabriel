@include('administrar.header')

<head>
    <!-- Incluir Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Incluir Bootstrap Icons (opcional si no lo tienes ya en tu proyecto) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('css/administrador.css') }}">
</head>
<div class="container-fluid" style="margin-top: 160px;">
    <div class="row">
        <!-- Barra lateral izquierda para categorías -->
        <div class="col-lg-3">
            <div class="list-group">
                <!-- Filtros por precio -->
                <div class="list-group-item">
                    <form action="{{url('/admin/menu/crearcategoria')}}" method="POST">
                        @csrf
                        <label for="nombre">Categoria</label><br>
                        <input type="text" name="nombre" id="nombre" class="form-control">
                        <input type="submit" class="btn btn-secondary mt-2" value="Nueva categoria">
                    </form>
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if (session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif
                    



                </div>
                <div id="categoryLinks" class="list-group" style="max-height: 500px; overflow-y: auto;">
                    @foreach ($lista as $categoria)
                    <div class="d-flex justify-content-between list-group-item">
                        <a href="#" class="list-group-item list-group-item-action"
                            onclick="showCategory('{{ $categoria->nombre }}')">{{ $categoria->nombre }}</a>
                        <form class="" action="{{ route('categorias.eliminar', $categoria->id) }}"
                            method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Quieres borrar esta categoría?')">
                                <i class="fa-solid fa-trash-can"></i>
                            </button>
                        </form>
                    </div>
                    @endforeach
                </div>
            </div>
            </div>
        <!-- Contenido principal con cards -->
        <div class="col-lg-9">
            <!-- Título de la categoría seleccionada -->
             <h1>Administrar Menú</h1>
            <br>
            <div class="row">
                <div class="col-md-9">
                <h3 id="categoriaSeleccionada"></h3> 
                </div>
                <div class="col-md-3">
                    <a class="btn btn-link" href="{{ url('/admin/crearplatillo') }}" style="text-decoration: none;">
                    <i class="fas fa-plus-circle text-success" style="font-size: 20px;"></i> <span class="text-success" style="font-size: 20px; border-bottom: 2px solid green;">Agregar platillo</span>
                    </a>
                </div>
            </div>
            <br>
            <div id="menuContent">
                <!-- Aquí se mostrarán los platillos de la categoría seleccionada -->
            </div>
        </div>
    </div>
</div>

<script>
    // Define un objeto con los platillos por categoría
var menuItems = {
    @foreach ($lista as $categoria)
        '{{ $categoria->nombre }}': [ // Entradas
            @foreach ($platillos as $platillo)
                @if ($categoria->nombre == $platillo->categoria)
                    {
                        id: '{{ $platillo->id }}',
                        titulo: '{{ $platillo->nombre }}',
                        descripcion: '{{ $platillo->descripcion }}',
                        imagen: '{{ $platillo->imagen }}',
                        precio: '{{ $platillo->precio }}',
                        status: '{{ $platillo->status }}' // Incluye el estado aquí
                    },
                @endif
            @endforeach
        ],
    @endforeach
};

function showCategory(category) {
    var menuHTML = '<div class="p-3"><table class="table table-bordered table-hover ">';
    menuHTML += '<thead>';
    menuHTML += '<tr>';
    menuHTML += '<th scope="col" style="width: 200px;">Nombre</th>';
    menuHTML += '<th scope="col" style="width: 300px;">Descripción</th>';
    menuHTML += '<th scope="col">Imagen</th>';
    menuHTML += '<th scope="col">Precio</th>';
    menuHTML += '<th scope="col" style="color: green; text-align: center;">Acciones</th>';
    menuHTML += '</tr>';
    menuHTML += '</thead>';
    menuHTML += '<tbody>';

    document.getElementById('categoriaSeleccionada').innerText = getCategoryName(category);

    // Obtiene los platillos de la categoría seleccionada
    var items = menuItems[category];

    // Genera el HTML de cada fila de la tabla para cada platillo
    for (var i = 0; i < items.length; i++) {
        let id = items[i].id;
        let titulo = items[i].titulo;
        let desc = items[i].descripcion;
        let imgPath = items[i].imagen;
        let precio = items[i].precio;
        let status = items[i].status; // Asegúrate de que el estado se pase correctamente

        menuHTML += '<tr>';
        menuHTML += '<td>' + titulo + '</td>';
        menuHTML += '<td style="color: green; max-width: 360px;">' + desc + '</td>';
        menuHTML += '<td style="display: flex;justify-content: center;height: 100%;"><img src="/storage/' + imgPath + '" alt="' + titulo + '" class="rounded-circle" style="width: 44px; height: 44px;"></td>';
        menuHTML += '<td style="color: green; max-width: 300px; text-align: center;">$' + precio + '</td>';
        menuHTML += '<td style="text-align: center;">';
        menuHTML += '<div class="btn-group" role="group" aria-label="Acciones">';
        menuHTML += '<a href="/admin/menu/editar/' + id + '" class="btn btn-link" style="color: green; padding: 0; font-weight: bold;">Editar |</a>';
        menuHTML += '<form action="/admin/menu/eliminar/' + id + '" method="POST" style="display:inline;">';
    menuHTML += '@csrf';
    menuHTML += '@method('DELETE')';
    menuHTML += '<button type="submit" class="btn btn-link" style="color: green; padding: 0; font-weight: bold;" onclick="return confirm(\'¿Quieres borrar el plato ' + titulo + '?\')">Eliminar |</button>';
    menuHTML += '</form>';

        // Usa un if para decidir qué botón mostrar
        menuHTML += '<form action="/admin/menu/mostrarPlatillo/' + id + '" method="POST" style="display:inline;">';
        menuHTML += '{{ csrf_field() }}';
        if (status == 1) {
            // Si el estado es 1, muestra el botón para ocultar
            menuHTML += '<button type="submit" class="btn btn-link" style="color: green; padding: 0; font-weight: bold;">Ocultar</button>';
        } else {
            // Si el estado no es 1, muestra el botón para mostrar
            menuHTML += '<button type="submit" class="btn btn-link" style="color: green; padding: 0; font-weight: bold;">Mostrar</button>';
        }
        menuHTML += '</form>';
        menuHTML += '</div>';
        menuHTML += '</td>';
        menuHTML += '</tr>';
    }

    menuHTML += '</tbody>';
    menuHTML += '</table></div>';

    // Muestra la tabla en el contenedor correspondiente
    document.getElementById('menuContent').innerHTML = menuHTML;
}

function getCategoryName(category) {
    switch (category) {
        @foreach ($lista as $categoria)
            case '{{ $categoria->nombre }}':
            return '{{ $categoria->nombre }}';
        @endforeach
    }
}

// Llamar a showCategory con la primera categoría por defecto cuando se carga la página
window.onload = function() {
    showCategory('{{ $lista[0]->nombre }}');
}

</script>


@include('administrar.footer')
