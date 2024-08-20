<style>
    .custom-btn {
        background-color: #9CA64E;
        border-color: #9CA64E;
    }
    .custom-btn:hover {
        background-color: #87983D;
        border-color: #87983D;
    }
    .form-control, .form-control-file, .form-control-select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
        margin: 0 auto;
    }
    table {
        width: 60%;
        margin: 0 auto;
        border-collapse: collapse;
        border: 1px solid #ddd;
        box-shadow: 0 2px 3px rgba(0,0,0,0.1);
    }
    td, th {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
    .img-preview {
        border: 3px solid #9F625B;
        border-radius: 5px;
        margin-bottom: 10px;
    }
</style>

<div class="text-center">
    @csrf
    <table>
        <tr>
            <th colspan="2">Formulario de Entrada</th>
        </tr>
        <tr>
            <td><label for="nombre">Nombre:</label></td>
            <td>
                <input required type="text" class="form-control" id="nombre" name="nombre" value="{{ isset($datosplatillo->nombre) ? $datosplatillo->nombre : '' }}">
            </td>
        </tr>
        <tr>
            <td><label for="imagen">Imagen:</label></td>
            <td>
                @if(isset($datosplatillo->imagen))
                    <img src="{{ asset('storage/' . $datosplatillo->imagen) }}" alt="" width="100" class="img-preview">
                    <br>
                @endif
                <input  type="file" class="form-control-file" id="imagen" name="imagen">
            </td>
        </tr>
        <tr>
            <td><label for="descripcion">Descripción:</label></td>
            <td>
                <textarea required class="form-control" id="descripcion" name="descripcion">{{ isset($datosplatillo->descripcion) ? $datosplatillo->descripcion : '' }}</textarea>
            </td>
        </tr>
        <tr>
            <td><label for="precio">Precio:</label></td>
            <td>
                <input required type="text" class="form-control" id="precio" name="precio" value="{{ isset($datosplatillo->precio) ? $datosplatillo->precio : '' }}">
            </td>
        </tr>
        <tr>
            <td><label for="categoria">Categoría:</label></td>
            <td>
                <select class="form-control" id="categoria" name="categoria">
                    @if(isset($datosplatillo->categoria))
                        <option value="{{ $datosplatillo->categoria }}">{{ $datosplatillo->categoria }}</option>
                    @endif
                    @foreach($lista as $categoria)
                        <option value="{{ $categoria->nombre }}">{{ $categoria->nombre }}</option>
                    @endforeach
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <button type="submit" class="btn btn-outline-success custom-btn">Enviar</button>
            </td>
        </tr>
    </table>
</div>