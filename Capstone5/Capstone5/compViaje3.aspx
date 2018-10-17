<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="compViaje3.aspx.cs" Inherits="Capstone5.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="¨content-header">
        <h1 style="text-align:center"> Comprobante de Viaje Creado exitosamente! </h1>
    </section>
  

         <section class="content">
        <div class ="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Lista de Comprobantes de viaje</h3>
                    </div>
                    <div class="box-body table-responsive">
                        <table id="tbl_empresasTransporte" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Razon Social</th>
                                    <th>RUT</th>
                                    <th>Email de contacto</th>
                                    <th>Fono de contacto</th>
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>



    

    <section>

        <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnFactura" runat="server" CssClass=" btn btn-primary" Text="Siguiente" Width="200px" OnClick="BtnFactura_Click"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass="btn btn-github" Text="Cancelar" Width="200px" /></td>
                    </tr>
                </table>
        </div>
        

    </section>

</asp:Content>
