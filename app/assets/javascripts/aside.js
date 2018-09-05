function switch1(){
var a=  document.getElementById("Last").className;
  if(a== "aside-link-client fas fa-angle-double-right"){
document.getElementById('Primero').className="aside-link-client";
    document.getElementById("Primero").innerHTML=" Panel";
    document.getElementById('Segundo').className="aside-link-client ";
    document.getElementById("Segundo").innerHTML=" Profesionales";
    document.getElementById('Tercero').className="aside-link-client";
    document.getElementById("Tercero").innerHTML=" Clientes";

    document.getElementById("Last").className="aside-link-client fas fa-angle-double-left";
    document.getElementById("Switch").className="col-sm-2 aside-client";
    document.getElementById("otro").className= "col-sm-10";
    document.getElementById("perfil").className= "";



  }
  else {
    document.getElementById('Primero').className="aside-link-client fas fa-laptop";
    document.getElementById("Primero").innerHTML="";
    document.getElementById('Segundo').className="aside-link-client fas fa-user-tie";
    document.getElementById("Segundo").innerHTML="";
    document.getElementById("Tercero").className="aside-link-client fas fa-tired";
    document.getElementById("Tercero").innerHTML="";
    document.getElementById("Last").className="aside-link-client fas fa-angle-double-right";
    document.getElementById("Switch").className= "col-sm-1 aside-client";
    document.getElementById("otro").className= "col-sm-11 ";




  }
}
function valida1(){
var valor=document.getElementById('val1').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val1').value="";
  document.getElementById('val1').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val2').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val2').value="";
  document.getElementById('val2').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val3').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val3').value="";
  document.getElementById('val3').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val4').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val4').value="";
  document.getElementById('val4').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val5').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val5').value="";
  document.getElementById('val5').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val6').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val6').value="";
  document.getElementById('val6').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
function valida1(){
var valor=document.getElementById('val7').value;
var nombre =new RegExp("/^([A-Za-zÁÉÍÓÚñáéíóúÑ]{3}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?$/g");
if(nombre.exec(valor)){
  document.getElementById('val7').value="";
  document.getElementById('val7').focus();
  alert("Debes ingresar un nombre valido, mas de 3 caracteres y mas de un nombre, sin numeros");
}

}
