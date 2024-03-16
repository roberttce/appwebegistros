<?php
namespace App\Http\Controllers;
use App\Models\TUser;
use Illuminate\Http\Request;
class AdminController  extends Controller{
     
    public function index(){ 
        $alert="bienvenido al sisstema";  
        return view("admin.admin")->with("alert",$alert);
    }
}
?>