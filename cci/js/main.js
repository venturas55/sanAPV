window.onload = function main() {
    $(".seleccion").click(abrirLink);
    $("td[id^='f']").click(function(event){
        id=$(this).attr('id');
        ver(id);
    });
    $("#busca1").click(buscaNif);
    $("#buscar2").click(buscaUbicacion);
    $("#activarborrado").click(activarborrado);
}

function abrirLink() {
    var puerto = $("#puerto").text();
    //puerto=str.trim(puerto);
    //alert("Ha elegido "+puerto);
    //El primer [0] es porque jquery devuelve un array con varias cosas, entre otras, el elemento en si en [0]. cells[0] indica su primera td, innerText el texto.
    fila = $(this)[0].cells[0].innerText;
    fila = fila.trim();
    document.location.href = "./plantilla.php?nif=" + fila + "&puerto=" + puerto;
}

function buscaNif() {
    nif = $("#buscado1").val();
    objeto = {
        'tabla': 'balizamiento',
        'valor': nif
    }
    //parametros = JSON.stringify(objeto);
    $.ajax({
            method: "GET",
            url: "http://localhost/san2/ajax_JSON_bbdd.php",
            data: objeto,
        })
        .done(function (respuesta) {
            console.log("Peticion realizada");
            objeto = JSON.parse(respuesta);
            if (objeto.nif != undefined)
                document.location.href = "./plantilla.php?nif=" + objeto.nif + "&puerto=" + objeto.puerto;
            else
                alert("No existe ayuda a la navegacion con el NIF indicado. Pruebe con un NIF diferente");
        })
        .fail(function () {
            alert("Error");
        });
}

function buscaUbicacion() {
    localizacion = $("#buscado2").val();
    /* objeto = {
        'tabla': 'localizacion',
        'valor': localizacion,
    }

    //parametros = JSON.stringify(objeto);
    $.ajax({

        method: "GET",
        url: "ajax_JSON_bbdd.php",
        //dataType: "json",
        data: objeto,
    })
        .done(function (respuesta) {
            console.log("Peticion realizada");
            respuesta = JSON.parse(respuesta);
            document.getElementById("texto2").innerHTML = respuesta.puerto;
        })
        .fail(function () {
            alert("Error en la petici??n ajax: " + localizacion);
        }); */
 
    document.location.href = "./san.php?puerto=" + localizacion;

}

function ver(id){
    fila = id.charAt(1);    //Esto funciona siempre y cuando los ids sean   fXcY donde X e Y sean numeros de un solo digito.
    columna = id.charAt(3);
    //alert("Fila "+fila);
    document.location.href = "./plantillaI.php?fila=" + fila + "&columna=" + columna;
}

function activarborrado() {
    $("table tr td a").toggleClass("disabled");

}