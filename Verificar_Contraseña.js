//Funciones para la página de Registro

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
        ComprobarEspacios();
    }
}

function ComprobarEspacios() {
    //alert("Comprobando espacios");
    var usuario, contraseña;
    var noValido = /\s/;
                
    usuario = document.Registro_form.registro_User.value;
    contraseña = document.Registro_form.registro_Password.value;
                                         
    if (noValido.test(usuario)) { // se chequea el regex de que el string no tenga espacio
        alert("El ususario no puede contener espacios en blanco");
        return false;
    }else if (noValido.test(contraseña)) {
        alert("La contraseña no puede contener espacios en blanco");
        return false;
    }else {
         //alert("No se detectaron espacios");
        ContraseñasIguales();
    }
}

function ContraseñasIguales(){
    var contraseña;
    var contraseñaCon;
    
    contraseña = document.Registro_form.registro_Password.value;
    contraseñaCon = document.Registro_form.registro_Password2.value;
    
    if (contraseña === contraseñaCon) {
            location.href = "InicioSesionRegistrado.jsp";
        }
        else {
            alert("Las contraseñas no coinciden");
        }
}

//Funciones para que se compruebe si hay productos

function ComprobarStock(){
    var stock;
    
    stock = document.Producto.txt_stock.value;
    
    if (stock === 0) {
        alert("Lo sentimos, esteproducto se ha agotado.");
    }
    
}

//Funciones para los inicios de sesión

function CampoVacio(){
    var usuario, contraseña;
    
    usuario = document.inicioSesion.login_Usuario.value;
    contraseña = document.inicioSesion.login_Contraseña.value;
    
    if (usuario === "a") {
        alert("Favor de llenar todos los campos");
    }else if (contraseña === "a"){
        alert("Vavor de llenar todos los campos");
    }else{
        CamposEspacios();
    }
    
}

function CamposEspacios() {
    //alert("Comprobando espacios");
    var correo, usuario, contraseña;
    var noValido = /\s/;
                
    usuario = document.getElementById("usuario").value;
    correo = document.getElementById("correo").value;
    usuario = document.getElementById("usuario").value;
                                         
    if (noValido.test(usuario)) { // se chequea el regex de que el string no tenga espacio
        alert("El ususario no puede contener espacios en blanco");
        return false;
    }else if (noValido.test(correo)) {
        alert("El correo no puede contener espacios en blanco");
        return false;
    }else if (noValido.test(contraseña)) {
        alert("La contraseña no puede contener espacios en blanco");
        return false;
    }
    else {
         //alert("No se detectaron espacios");
        comprobarContraseñas();
    }
}