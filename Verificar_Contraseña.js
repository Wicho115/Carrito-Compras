function ComprobarContraseñas() {
    var nombre, appat, apmat, usuario;
    var contraseña;
    var contraseñaCon;

    nombre = document.Registro_form.registro_Nombre.value;
    appat = document.Registro_form.registro_ApPaterno.value;
    apmat = document.Registro_form.registro_ApMat.value;
    usuario = document.Registro_form.registro_User.value;
    contraseña = document.Registro_form.registro_Password.value;
    contraseñaCon = document.Registro_form.registro_Password2.value;

    //Comprobar que los campos están completos
    if (nombre === "") {
        alert("Favor de llenar todos los campos");
    } else if (appat === "") {
        alert("Favor de llenar todos los campos");
    } else if (apmat === "") {
        alert("Favor de llenar todos los campos");
    } else if (usuario === "") {
        alert("Favor de llenar todos los campos");
    } else if (contraseña === "") {
        alert("Favor de llenar todos los campos");
    } else if (contraseñaCon === "") {
        alert("Favor de llenar todos los campos");
    } else {
        //Revisar que las contraseñas coinciden
        if (contraseña === contraseñaCon) {
            location.href = "InicioSesionRegistrado.jsp";
        }
        else {
            alert("Las contraseñas no coinciden");
        }
    }
}

function ComprobarStock(){
    
}

function CampoVacio(){
    
}

