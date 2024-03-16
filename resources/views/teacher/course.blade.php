@extends("teacher.teacher")
@section("course")
<div class="row">
@foreach($listTCourse as $course)
    <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-{{ 
            ($loop->index % 5 == 0) ? 'primary' : 
            (($loop->index % 5 == 1) ? 'secondary' : 
            (($loop->index % 5 == 2) ? 'success' :
            (($loop->index % 5 == 3) ? 'danger' :
            'warning'))) 
        }}">
            <div class="inner">
                <h3>26</h3>
                <p>{{ $course->name }}</p>
            </div>
            <div class="icon">
                <i class="ion ion-person-add"></i>
            </div>
            <a href="{{ url('teacher/course/enrolled/'.$course->idCourse) }}" class="small-box-footer">Estudiante Matriculado <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
@endforeach
</div>
@endsection