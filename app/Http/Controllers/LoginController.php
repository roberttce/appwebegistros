<?php
namespace App\Http\Controllers;
use App\Models\TUser;
use App\Models\TPerson;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
class LoginController  extends Controller{
    public function index(){
        return view("login/login");
    }
    public function actionLogin(Request $request){
        $usuario = $request->input('txtUser');
        $contrasena = $request->input('txtPassword');
        $usuarioEncontrado = TUser::where('email', $usuario)->where('password', $contrasena)->first();
        if ($usuarioEncontrado) {
            $idUser = TPerson::where('email', $usuario)->value('idUser');
            $role=$this->role($idUser);
            if($role=="teacher"){
                
                return redirect("teacher");
            }

            elseif($role== "admin"){
                return redirect("admin");
            }
            elseif($role== "student"){
                return redirect("student");
            }
            else{
                $error="usuario no existe";
                return view("login/login")->with("error",$error);
            }
        } else {
             $error= "Usuario o contraseña incorrectos";
            return view("login/login")->with('error', $error);
        }
    }
    private function role($idUser){
        $role = TPerson::where('idUser', $idUser)->value('role');
        return $role;
    }

    public function actionLogin02(Request $request)
    {
        if ($request->isMethod('post')) {
            if (Auth::attempt(['email' => $request->input('txtUser'), 'password' => $request->input('txtPassword')])) {
                // Autenticación exitosa
                return redirect('template');
            } else {
                return redirect('login/login');
            }
        }

        return view('login.login');
    }
    public function actionLogin1(Request $request){
        if ($request->isMethod('post')) {
            $listMessage = [];

            // Validación de campos
            $validator = Validator::make(
                [
                    'email' => $request->input('txtUser'),
                    'password' => $request->input('txtPassword')
                ],
                [
                    'email' => 'required|email',
                    'password' => 'required'
                ],
                [
                    'email.required' => 'El campo "email" es requerido.',
                    'email.email' => 'El campo "email" debe ser una dirección de correo electrónico válida.',
                    'password.required' => 'El campo "contraseña" es requerido.'
                ]
            );

            if ($validator->fails()) {
                $errors = $validator->errors()->all();

                foreach ($errors as $value) {
                    $listMessage[] = $value;
                }
            }
            
            $user = TUser::where('email', $request->input('txtUser'))->first();
            if (!$user || !password_verify($request->input('txtPassword'), $user->password)) {
                $listMessage[] = 'Credenciales incorrectas.';
            }

            if (count($listMessage) > 0) {
                return redirect("login/login");
            }

            // Si las credenciales son correctas, redirigir a la página deseada
            return redirect('template');
        }
        return view('login/login');
    }
}
?>