@include('administrar.header')  
<br><br><br><br><br>
<h1 class="text-center">Editar un Entrada</h1>
<br>



<form action="{{url('/admin/menu/editar/'.$datosplatillo->id)}}" method="POST" enctype="multipart/form-data">

    {{method_field('PATCH')}}
    
    @include('administrar.formularioplatillo ')
</form>




@include('administrar.footer')      

