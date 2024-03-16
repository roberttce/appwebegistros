@extends("teacher.teacher")
@section("course")
<ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#students">Estudiantes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#attendance">Asistencia</a>
    </li>
  </ul>
  
  <div class="tab-content">
    <div id="students" class="tab-pane fade show active">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Fecha de Creación</th>
                    <th>Aciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach($listTPerson as $value)
                <tr>
                    <td>{{$value->firstName}}</td>
                    <td>{{$value->surName}}</td>
                    <td>{{$value->email}}</td>
                    <td>{{$value->created_at}}</td>
                    <td><button class="btn btn-info">Ver notas</button><button class="btn btn-danger">Supender</button></td>
                </tr>
                @endforeach
            </tbody>
        </table>
      <h3>Contenido de Estudiantes</h3>
      <p>Aquí va el contenido de la sección de estudiantes.</p>
    </div>
    <div id="attendance" class="tab-pane fade">
      <!-- Contenido de la sección de asistencia -->
      <h3>Contenido de Asistencia</h3>
      <p>Aquí va el contenido de la sección de asistencia.</p>
    </div>
  </div>
  
@endsection