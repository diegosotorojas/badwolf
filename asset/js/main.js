// formulario login
let correo = document.getElementById('login_correo');
let password = document.getElementById('login_password');

function validarFormularioLogin() {
    
    if (correo.value == "") {
        alert("El campo correo no puede estar vacio");
        //borde rojo
        correo.style.border = "1px solid red";
        return false;
    } else if (password.value == "") {
        alert("El campo password no puede estar vacio");
        password.style.border = "1px solid red";
        return false;
    } 
    else if (correo.value != "" && password.value != "") {
        correo.style.border = "1px solid green";
        password.style.border = "1px solid green";
        return false;
    }else {
        return true;
    }

}
// formulario login---------------------------------------------------

//formulario registro
let nombre = document.getElementById('registro_nombre');
let alias = document.getElementById('registro_alias');
let correos = document.getElementById('registro_correo');
let contraseña = document.getElementById('registro_contraseña');
let contraseña2 = document.getElementById('registro_contraseña2');
let direccion = document.getElementById('registro_direccion');
let registro_pais = document.getElementById('registro_pais');

function validarFormularioRegistro() {
    
    if (nombre.value == "") {
        alert("El campo nombre no puede estar vacio");
        //borde rojo
        nombre.style.border = "1px solid red";
        return false;
    } else if (alias.value == "") {
        alert("El campo alias no puede estar vacio");
        alias.style.border = "1px solid red";
        return false;
    }
    else if (correos.value == "") {
        alert("El campo correo no puede estar vacio");
        correos.style.border = "1px solid red";
        return false;
    }
    else if (contraseña.value == "") {
        alert("El campo contraseña no puede estar vacio");
        contraseña.style.border = "1px solid red";
        return false;
    }
    else if (contraseña2.value == "") {
        alert("El campo contraseña no puede estar vacio");
        contraseña2.style.border = "1px solid red";
        return false;
    }
    else if (direccion.value == "") {
        alert("El campo direccion no puede estar vacio");
        direccion.style.border = "1px solid red";
        return false;
    }
    else if (registro_pais.value == "default") {
        alert("El campo pais no puede estar vacio");
        registro_pais.style.border = "1px solid red";
        return false;
    }
    else  (nombre.value != "" && alias.value != "" && correos.value != "" && contraseña.value != "" && contraseña2.value != "" && direccion.value != "" && registro_pais.value != "default")
    {
        nombre.style.border = "1px solid green";
        alias.style.border = "1px solid green";
        correos.style.border = "1px solid green";
        contraseña.style.border = "1px solid green";
        contraseña2.style.border = "1px solid green";
        direccion.style.border = "1px solid green";
        registro_pais.style.border = "1px solid green";
        return false;
    }

}
//formulario registro


//formeuario contacto
let correo_forget = document.getElementById('forget_correo');
console.log("hola");
function validarFormularioForget() {

    console.log("hola dentr funcion");
    if (correo_forget.value == "") {
        alert("El campo correo no puede estar vacio");
        //borde rojo
        correo_forget.style.border = "1px solid red";
        return false;
    } else if (correo_forget.value != "") {
        correo_forget.style.border = "1px solid green";
        return false;
    } else {
        return true;
    }

}

//formulario forgetpass

let forgetpass = document.getElementById('forgetpass_contraseña');
let forgetpass2 = document.getElementById('forgetpass_contraseña2');

function validarFormularioForgetPass() {
        
        if (forgetpass.value == "") {
            alert("El campo contraseña no puede estar vacio");
            //borde rojo
            forgetpass.style.border = "1px solid red";
            return false;
        } else if (forgetpass2.value == "") {
            alert("El campo contraseña no puede estar vacio");
            forgetpass2.style.border = "1px solid red";
            return false;
        } else if (forgetpass.value != "" && forgetpass2.value != "") {
            forgetpass.style.border = "1px solid green";
            forgetpass2.style.border = "1px solid green";
            return false;
        } else {
            return true;
        }
    
    }   



    var slider = document.getElementById("tempo");
    var output = document.getElementById("demo");
    output.innerHTML = slider.value;

    slider.oninput = function() {
    output.innerHTML = this.value;
    }


    

