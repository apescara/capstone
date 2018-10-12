var tabla;

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
            '<button value="Actualizar" title="Actualizar" class="btn btn-primary btn-edit">Actualizar</i></button>&nbsp;'
            +
            '<button value="Eliminar" title="Eliminar" class="btn btn-danger btn-delete">Eliminar</button>'
            
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

//evento para actualizar datos
$(document).on('click', '.btn-edit', function (e) {
    e.preventDefault();
    $(this).parent().parent().children().first().text;
});

//evento para eliminar datos
$(document).on('click', '.btn-delete', function (e) {
    e.preventDefault();
    var row = $(this).parent().parent()[0];
    var data = tabla.fnGetData();
});

sendDataAjax();