<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="agrCliente.aspx.cs" Inherits="Capstone5.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="¨content-header">
        <h1 style="text-align:center"> Agregar Cliente</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>NOMBRE DEL CLIENTE </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="nombreCliente" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>RAZÓN SOCIAL </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="razonSocial" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="form-group">
                            <label>RUT EMPRESA </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="RUT" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>EMAIL DE CONTACTO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="email" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>FONO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="fono" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>CIUDAD</label>
                        </div>
                        <div class="form-group">
                          <asp:DropDownList ID="ET" runat="server" CssClass="form-control" DataSourceID="BaseDatosPtoAzul" DataTextField="lugar" DataValueField="idLugar"></asp:DropDownList>
                            <asp:SqlDataSource ID="BaseDatosPtoAzul" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idLugar], [lugar] FROM [lugaresTransporte]"></asp:SqlDataSource>
                        </div>

                        

                    </div>
                </div>
            </div>
            

        </div>

        
       <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnAgregar" runat="server" CssClass=" btn btn-primary" Text="Agregar" Width="200px" OnClick="BtnAgregar_Click"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass=" btn btn-danger" Text="Cancelar" Width="200px"/></td>
                    </tr>
                </table>
        </div>
            
    </section>
    <section class="content">
        <div class ="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Lista de Conductores</h3>
                    </div>
                    <div class="box-body table-responsive">
                        <table id="tbl_clientes" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NOMBRE</th>
                                    <th>RAZON SOCIAL</th>
                                    <th>RUT</th>
                                    <th>EMAIL</th>
                                    <th>FONO</th>
                                    <th>UBICACIÓN</th>
                                    <th>MODIFICAR</th>
                                    
                                </tr>
                            </thead>
                            <tbody id="tbl_body_table">
                                <!-- los datos viene de archivo .js -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
        <script src="js/cliente.js" type="text/javascript">
        </script>
</asp:Content>
