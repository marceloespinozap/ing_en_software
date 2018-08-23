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
