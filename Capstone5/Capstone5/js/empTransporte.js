function addRowDT(data) {
    var tabla = $("#tbl_empresasTransporte").DataTable();
    for (var i = 0; i < data.length; i++) {
        tabla.fnAddData([
            data[i].idEmpTransporte,
            data[i].nombre,
            data[i].razonSocial,
            data[i].RUT,
            data[i].email,
            data[i].fono
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

sendDataAjax();