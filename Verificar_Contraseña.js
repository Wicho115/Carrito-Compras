function ComprobarContraseñas(){
    var contraseña;
    var contraseñaCon;
    
    contraseña = document.Registro_form.registro_Password.value;
    contraseñaCon = document.Registro_form.registro_Password2.value;
    
    if(contraseña === contraseñaCon){
        location.href = "InicioSesionRegistrado.jsp";
    }
    else{
        alert("tu contraseña no es igual");
    }
}

