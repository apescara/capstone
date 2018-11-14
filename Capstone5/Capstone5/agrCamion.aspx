<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="agrCamion.aspx.cs" Inherits="Capstone5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="¨content-header">
        <h1 style="text-align:center"> Agregar Camión</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>EMPRESA DE TRANSPORTE</label>
                        </div>
                        <div class="form-group">
                          <asp:DropDownList ID="ET" runat="server" CssClass="form-control" DataSourceID="BaseDatosPtoAzul" DataTextField="nombre" DataValueField="idEmpTransporte"></asp:DropDownList>
                            <asp:SqlDataSource ID="BaseDatosPtoAzul" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idEmpTransporte], [nombre] FROM [empresasTransporte]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <label>PATENTE </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="patente" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>PROCEDENCIA </label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="procedencia" runat="server" CssClass="form-control">
                             <asp:ListItem Value="1">INTERNO</asp:ListItem>
                             <asp:ListItem Value="0">EXTERNO</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>TIPO DE CAMION </label>
                        </div>
                        <div class="form-group">
                          <asp:DropDownList ID="tipoCamion" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">CAMIÓN</asp:ListItem>
                              <asp:ListItem Value="0">RAMPLA</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>CAPACIDAD DEL CAMIÓN</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="capacidad" runat="server" Text="" CssClass="form-control"></asp:TextBox>
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
                        <table id="tbl_camiones" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>PATENTE</th>
                                    <th>EMPRESA TRANSPORTE</th>
                                    <th>PROCEDENCIA</th>
                                    <th>TIPO</th>
                                    <th>CAPACIDAD</th>
                                    
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
        <script src="js/camion.js" type="text/javascript">
        </script>
</asp:Content>
