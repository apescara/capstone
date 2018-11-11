var tabla, data;

function addRowDT(data) {
    tabla = $("#tbl_conductores").DataTable();

    tabla.fnClearTable();
    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].idConductor,
            data[i].nombre,
            data[i].apellido,
            data[i].RUT,
            data[i].email,
            data[i].fono,
            data[i].nombreEmpTransporte,
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
        url: "agrConductor.aspx/ListarConductores",
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

function deleteDataAjax(data) {
    var obj = JSON.stringify({ id: JSON.stringify(data) });
    console.log("entro  la funcion");

    $.ajax({
        type: "POST",
        url: "agrConductor.aspx/EliminarConductor",
        data: obj,
        dataType: "json",
        contentType: 'application/json; charset=uft-8',
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + "\n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                console.log("ejecuto el ajax");
                alert("Conductor eliminado de forma correcta.");
            } else {
                console.log("no se ejecuto el ajax");
                alert("No se ha podido eliminar al conductor.");
            }
        }
    });
}


$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();
    var row = $(this).parent().parent()[0];
    var dataRow = tabla.fnGetData(row);
    console.log("Eliminar dato " + dataRow[0]);
    deleteDataAjax(dataRow[0]);
    sendDataAjax();
});

sendDataAjax();