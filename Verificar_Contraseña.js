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
    var stock;
    
    stock = document.Producto.txt_stock.value;
    
    if (stock === 0) {
        alert("Lo sentimos, esteproducto se ha agotado.");
    }
    
}

function CampoVacio(){
    var usuario, contraseña;
    
    usuario = document.inicioSesion.login_Usuario.value;
    contraseña = document.inicioSesion.login_Contraseña.value;
    
    if (usuario === "a") {
        alert("Favor de llenar todos los campos");
    }else if (contraseña === "a"){
        alert("Vavor de llenar todos los campos");
    }else{
        document.inicio_Sesion.submit();
    }
    
}

