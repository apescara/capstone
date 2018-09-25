<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="compViaje.aspx.cs" Inherits="Capstone5.compViaje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="¨content-header">
        <h1 style="text-align:center"> Nuevo Comprobante de Viaje </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE TIPO DE COMPROBANTE 
                            <br />
                                <br />
                            </label>
                         <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" Height="16px" Width="569px">
                             <asp:ListItem Text="Rechazo" Value="Rechazo"></asp:ListItem>
                            
                             <asp:ListItem Text="Recepción" Value="Recepcion"></asp:ListItem>
                             <asp:ListItem Text="Despacho" Value="Despacho"></asp:ListItem>
                             <asp:ListItem Text="Materiales" Value="Materiales"></asp:ListItem>
                         </asp:CheckBoxList>
                        </div>

                       



                     </div>
            </div>
             </div>
        </div>

        
         
            
    </section>

    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>N° DE FOLIO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox5" runat="server" Text="" CssClass="form-control" ReadOnly></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>RECEPCIONISTA</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>FECHA DE DOCUMENTO </label>
                        </div>
                        <div class="form-group">
                            <div class="form-group">
                       
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'"
                                data-mask="" runat="server"></asp:TextBox>
                        </div>
                    </div>
                        </div>

                        <div class="form-group">
                            <label>FECHA DE COMPROBANTE </label>
                        </div>
                        <div class="form-group">
                            <div class="form-group">
                       
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <asp:TextBox ID="txtEditarFecha" CssClass="form-control" data-inputmask="'alias': 'dd/mm/yyyy'"
                                data-mask="" runat="server"></asp:TextBox>
                        </div>
                    </div>
                        </div>

                      

                         <div class="form-group">
                            <label>EMPRESA DE TRANSPORTE</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>

                    </div>
                </div>
            </div>
            
             <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="form-group">
                            <label>CONDUCTOR</label>
                        </div>
                        <div class="form-group">
                              
                          <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>PATENTE </label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox2" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>TEMPERATURA</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>

        
            <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnAgregar" runat="server" CssClass=" btn btn-primary" Text="Crear" Width="200px"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass=" btn btn-danger" Text="Cancelar" Width="200px"/></td>
                    </tr>
                </table>
        </div>

      
       

    </section>
</asp:Content>

