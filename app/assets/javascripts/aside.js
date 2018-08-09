function switch1(){
var a=  document.getElementById("caca").className;
  if(a=== "aside-link-client fas fa-angle-double-right"){
    document.getElementById("caca").className="aside-link-client fas fa-angle-double-left";
    document.getElementById("caca2").className="col-sm-2 aside-client";
    document.getElementById("caca3").innerHTML="Chupalo";
    document.getElementById("caca3").className="";


  }
  else {
    document.getElementById("caca").className="aside-link-client fas fa-angle-double-right";
    document.getElementById("caca2").className="col-sm-1 aside-client";
    document.getElementById("caca3").innerHTML="";
    document.getElementById("caca3").className="aside-link-client fas fa-address-book";

  }
}
