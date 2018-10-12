<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="agrTransporte.aspx.cs" Inherits="Capstone5.agrTransporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="¨content-header">
        <h1 style="text-align:center"> Agregar Empresa de Transporte</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>NOMBRE EMPRESA </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="nombre" runat="server" Text="" CssClass="form-control"></asp:TextBox>
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
                            <asp:TextBox ID="email" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label>FONO</label>
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
                        <td> <asp:Button ID="BtnAgregar" runat="server" CssClass=" btn btn-primary" Text="Agregar" Width="200px" OnClick ="BtnAgregar_Click"/></td>
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
                        <h3 class="box-title">Lista de Empresas</h3>
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
                                    <th>Acciones</th>
                                    
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
</asp:Content>
