var tabla, data;

function addRowDT(data) {
    tabla = $("#tbl_empresasTransporte").DataTable();
    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].idEmpTransporte,
            data[i].nombre,
            data[i].razonSocial,
            data[i].RUT,
            data[i].email,
            data[i].fono,
            '<button type="button" value="Actualizar" title="Actualizar" class="btn btn-primary btn-edit" data-target="#iModal" data-toggle="modal">Actualizar</button>&nbsp;'
            +
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

function deleteDataAjax(data) {
    var obj = JSON.stringify({ id: JSON.stringify(data) });

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
                alert("Empresa eliminada de forma correcta.");
            } else {
                alert("No se ha podido eliminar a la empresa.");
            }
        }
    });
}

//evento para actualizar datos
$(document).on('click', '.btn-edit', function (e) {
    e.preventDefault();
    var row = $(this).parent().parent()[0];
    data = tabla.fnGetData();
});

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