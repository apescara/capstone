<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="agrConductor.aspx.cs" Inherits="Capstone5.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="¨content-header">
        <h1 style="text-align:center"> Agregar Conductor</h1>
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
                          <asp:DropDownList ID="ET" runat="server" CssClass="form-control" DataSourceID="EmpTransporteConduc" DataTextField="nombre" DataValueField="idEmpTransporte"></asp:DropDownList>
                            <asp:SqlDataSource ID="EmpTransporteConduc" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idEmpTransporte], [nombre] FROM [empresasTransporte]">
                            </asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <label>NOMBRE</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="nombre" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                       <div class="form-group">
                            <label>APELLIDOS</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="apellidos" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label>RUT</label>
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
                            <label>FONO DE CONTACTO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="fono" runat="server" Text="" CssClass="form-control"></asp:TextBox>
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
                        <table id="tbl_conductores" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NOMBRES</th>
                                    <th>APELLIDOS</th>
                                    <th>RUT</th>
                                    <th>EMAIL CONTACTO</th>
                                    <th>FONO CONTACTO</th>
                                    <th>EMPRESA</th>
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
        <script src="js/conductor.js" type="text/javascript">
        </script>
</asp:Content>
