var tabla, data;

function addRowDT(data) {
    tabla = $("#tbl_empresasTransporte").DataTable();
    
    tabla.fnClearTable();
    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].idEmpTransporte,
            data[i].nombre,
            data[i].razonSocial,
            data[i].RUT,
            data[i].email,
            data[i].fono,
            /*
             * '<button type="button" value="Actualizar" title="Actualizar" class="btn btn-primary btn-edit" data-target="#iModal" data-toggle="modal">Actualizar</button>&nbsp;'
            +
            */
            '<button type="button" value="Eliminar" title="Eliminar" class="btn btn-danger btn-delete">Eliminar</button>'
            
        ]);
    }
}

function sendDataAjax() {
    $.ajax({
        type: "POST",
        url: "agrTransporte.aspx/ListarEmpresas",
        data: {},
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + "\n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            console.log(data.d);
            addRowDT(data.d);
        }
    });
}
/*
function updateDataAjax() {

    var obj = JSON.stringify({ idEmpTransporte: JSON.stringify(data[0]), email: $("#txtModalEmail").val(), fono: $("#txtModalFono").val() });
    console.log("inicio");
    console.log(obj);
    console.log("fin");
    $.ajax({
        type: "POST",
        url: "agrTransporte.aspx/ActualizarDatosEmpresa",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + "\n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                alert("Empresa actualizada de foma correcta");
            } else {
                alert("No se pudo modificar los datos de la empresa");
            }
        }
    });
}


function updateDataAjax() {
    console.log('---->', $("#ContentPlaceHolder1_txtModalEmail").val());
    var obj = JSON.stringify({ idEmpTransporte: JSON.stringify(data[0]), email: $("#ContentPlaceHolder1_txtModalEmail").val(), fono: $("#ContentPlaceHolder1_txtModalFono").val() });
    console.log(obj);
    $.ajax({
        type: "POST",
        url: "agrTransporte.aspx/ActualizarDatosEmpresa",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=utf-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + "\n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                alert("Empresa actualizada de foma correcta");
            } else {
                alert("No se pudo modificar los datos de la empresa");
            }
        }
    });
}
*/

function deleteDataAjax(data) {
    var obj = JSON.stringify({ id: JSON.stringify(data) });
    console.log("entro  la funcion");

    $.ajax({
        type: "POST",
        url: "agrTransporte.aspx/EliminarEmpresa",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=uft-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + "\n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                console.log("ejecuto el ajax");
                alert("Empresa eliminada de forma correcta.");
            } else {
                console.log("no se ejecuto el ajax");
                alert("No se ha podido eliminar a la empresa.");
            }
        }
    });
}

/*
function fillModalData() {
    $("#ContentPlaceHolder1_txtModalNombreEmpresa").val(data[1]);
    $("#ContentPlaceHolder1_txtModalEmail").val(data[4]);
    $("#ContentPlaceHolder1_txtModalFono").val(data[5]);
}
*/

//evento para actualizar datos
$(document).on('click', '.btn-edit', function (e) {
    e.preventDefault();
    var row = $(this).parent().parent()[0];
    data = tabla.fnGetData(row);
    fillModalData();
});

/*
//enviar datos a server
$("#btnActualizarRegistro").click(function (e) {
    e.preventDefault();
    updateDataAjax();
});
*/

//evento para eliminar datos
$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();
    var row = $(this).parent().parent()[0];
    var dataRow = tabla.fnGetData(row);
    console.log("Eliminar dato " + dataRow[0]);
    deleteDataAjax(dataRow[0]);
    sendDataAjax();
});

sendDataAjax();