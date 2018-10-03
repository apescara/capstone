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
                          <asp:TextBox ID="TextBox1" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>PROCEDENCIA </label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                             <asp:ListItem Value="1">INTERNO</asp:ListItem>
                             <asp:ListItem Value="0">EXTERNO</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>TIPO DE CAMION </label>
                        </div>
                        <div class="form-group">
                          <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                              <asp:ListItem Value="1">CAMIÓN</asp:ListItem>
                              <asp:ListItem Value="0">RAMPLA</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>CAPACIDAD DEL CAMIÓN</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox4" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>
            

        </div>

        
            <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnAgregar" runat="server" CssClass=" btn btn-primary" Text="Agregar" Width="200px"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass=" btn btn-danger" Text="Cancelar" Width="200px"/></td>
                    </tr>
                </table>
        </div>
            
    </section>
</asp:Content>
