<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>

    <!-- Agregar la referencia a Bootstrap (puedes utilizar un CDN o descargarlo) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('viewsresources/login/login.css')}}">
    
</head>
<body>
    <form id="frmLogin" class="mt-5" action="{{url('login/login')}}" method="post">
        @csrf
        <div class="container">
            <div class="row align-items-center">
                <div class="row">
                    <div class="col-3">
                        <img src="{{ asset('plugins/adminlte/dist/img/sis/logo-01.png') }}" alt="Logo" style="width: 60px; height: auto;">
                    </div>
                    <div class="col-9">
                        <h2 class="mb-4">Iniciar Sesión</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label for="txtUser" class="form-label">Usuario:</label>
            <input type="text" class="form-control" id="txtUser" name="txtUser" required>
        </div>
        <div class="mb-3">
            <label for="txtPassword" class="form-label">Contraseña:</label>
            <input type="password" class="form-control" id="txtPassword" name="txtPassword" required>
        </div>
        <div>
            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
        </div>
        @if(isset($error))
        <div class="alert alerth-danger" role="alerrt">
            {{$error}}
        </div>
        @endif
    </form>
    <script>
        setTimeout(function(){
            document.getElementById('alert').style.display = 'none';
        }, 50); // 5000 milisegundos = 5 segundos
    </script>

    <!-- Agregar la referencia a FormValidation JS -->
    <script src="{{asset('plugins/formvalidation/formValidation.min.js')}}"></script>
    <script src="{{asset('plugins/formvalidation/bootstrap.validation.min.js')}}"></script>
    
    
    <!-- Agregar la referencia a Bootstrap JS (opcional, pero necesario para algunos componentes) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('viewresources/login/login.js')}}"></script>
     

</body>

</html>
