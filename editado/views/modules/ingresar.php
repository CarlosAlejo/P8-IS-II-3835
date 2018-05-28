<h1>INGRESAR</h1>

	<form method="post">
        <div class="wrap-input100 validate-input m-b-23" data-validate = "Se requiere nombre de cliente">
            <span class="label-input100">Usuario</span>
            <input class="input100"  <input type="text" placeholder="Usuario" name="usuarioIngreso" required>
            <span class="focus-input100" data-symbol="&#xf206;"></span>
        </div>
        <div class="wrap-input100 validate-input m-b-23" data-validate = "Se requiere nombre de cliente">
            <span class="label-input100">Password</span>
            <input class="input100"  input type="password" placeholder="Contraseña" name="passwordIngreso" requiredd>
            <span class="focus-input100" data-symbol="&#xf183;"></span>
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

$ingreso = new MvcController();
$ingreso -> ingresoUsuarioController();

if(isset($_GET["action"])){

	if($_GET["action"] == "fallo"){

		echo "Fallo al ingresar";
	
	}

}

?>