
<h1>REGISTRO DE USUARIO</h1>

<form method="post">

    <div class="wrap-input100 validate-input m-b-23" data-validate = "Se requiere nombre de cliente">
        <span class="label-input100">Nombre</span>
        <input class="input100"  type="text" placeholder="Usuario" name="usuarioRegistro" required>
        <span class="focus-input100" data-symbol="&#xf206;"></span>
    </div>
    <div class="wrap-input100 validate-input m-b-23" data-validate = "Se requiere nombre de cliente">
        <span class="label-input100">Password</span>
        <input class="input100"  type="password" placeholder="Contraseña" name="passwordRegistro" required>
        <span class="focus-input100" data-symbol="&#xf183;"></span>
    </div>
    <div class="wrap-input100 validate-input m-b-23" data-validate = "Se requiere nombre de cliente">
        <span class="label-input100">E-mail</span>
        <input class="input100" type="email" placeholder="Email" name="emailRegistro" required>
        <span class="focus-input100" data-symbol="&#xf15a;"></span>
    </div>

    <div class="container-login100-form-btn">
        <div class="wrap-login100-form-btn">
            <div class="login100-form-bgbtn"></div>
            <button class="login100-form-btn">
                Enviar
            </button>
        </div>
    </div>

</form>

<?php

$registro = new MvcController();
$registro -> registroUsuarioController();

if(isset($_GET["action"])){

	if($_GET["action"] == "ok"){

		echo "Registro Exitoso";
	
	}

}

?>
