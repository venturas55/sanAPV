var pass0 = document.getElementById("contrasenavieja");
var pass1 = document.getElementById("contrasenanueva1");
var pass2 = document.getElementById("contrasenanueva2");
var boton1 = document.getElementById("botonMod");

//boton1.addEventListener("click", validacion());

function validacion() {
    alert(boton1);
    alert("alla voy");
    if (pass1 != pass2)
        alert("No coindice la contraseña de confirmación");
    else {
        location.href = "./modBBDDpassword.php?".$pass1;
    }


}