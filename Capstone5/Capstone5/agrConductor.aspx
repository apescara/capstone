﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="agrConductor.aspx.cs" Inherits="Capstone5.WebForm4" %>
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
                          <asp:DropDownList ID="ET" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>NOMBRE COMPLETO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox1" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label>RUT</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox4" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                         <div class="form-group">
                            <label>EMAIL DE CONTACTO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox2" runat="server" Text="" CssClass="form-control"></asp:TextBox>
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
