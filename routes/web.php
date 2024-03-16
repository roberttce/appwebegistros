<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LayautController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TeacherController;

Route:: get('admin', [AdminController::class, 'index']);
Route:: get('login', [LoginController::class, 'index']);
Route:: get('teacher', [TeacherController::class, 'index']);
Route:: get('teacher/course', [TeacherController::class, 'viewCouse']);
Route::get('teacher/course/enrolled/{idCourse}', [TeacherController::class,'viewEnrolled']);
Route:: get('user/getall', [UserController::class, 'actionGetAll']);
Route::match(['get', 'post'],'login/login',  [LoginController::class, 'actionLogin']);
Route::view('template', 'template/layaut');