<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CompViaje2.aspx.cs" Inherits="Capstone5.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="¨content-header">
        <h1 style="text-align:center"> Detalle Comprobante de Viaje </h1>
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
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Confirmar" CssClass="btn btn-primary" />
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
                            <label>INGRESE INFORMACIÓN DE LA RECEPCIÓN
                            <br />
                                <br />
                            </label>
                   
                            <br />
                     
                        </div>
                           </div>
                                </div>
                                     </div>



            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE INFORMACIÓN DE DESPACHO A CLIENTE
                            <br />
                                <br />
                            </label>
                        
                            <br />
                           
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
                            <label>INGRESE INFORMACIÓN DE DESPACHO DE MATERIALES
                            <br />
                                <br />
                            </label>
                         <asp:CheckBoxList ID="CheckBoxList4" runat="server" RepeatDirection="Horizontal" Height="16px" Width="569px">
                             <asp:ListItem Text="Rechazo" Value="Rechazo"></asp:ListItem>
                            
                             <asp:ListItem Text="Recepción" Value="Recepcion"></asp:ListItem>
                             <asp:ListItem Text="Despacho" Value="Despacho"></asp:ListItem>
                             <asp:ListItem Text="Materiales" Value="Materiales"></asp:ListItem>
                         </asp:CheckBoxList>
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="Confirmar" CssClass="btn btn-primary" />
                        </div>
                           </div>
                                </div>
                                     </div>



            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE TIPO DE COMPROBANTE 
                            <br />
                                <br />
                            </label>
                         <asp:CheckBoxList ID="CheckBoxList5" runat="server" RepeatDirection="Horizontal" Height="16px" Width="569px">
                             <asp:ListItem Text="Rechazo" Value="Rechazo"></asp:ListItem>
                            
                             <asp:ListItem Text="Recepción" Value="Recepcion"></asp:ListItem>
                             <asp:ListItem Text="Despacho" Value="Despacho"></asp:ListItem>
                             <asp:ListItem Text="Materiales" Value="Materiales"></asp:ListItem>
                         </asp:CheckBoxList>
                            <br />
                            <asp:Button ID="Button5" runat="server" Text="Confirmar" CssClass="btn btn-primary" />
                        </div>
                           </div>
                                </div>
                                     </div>
                                          </div>



          <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="asdd" runat="server" CssClass=" btn btn-primary" Text="Crear Comprobante" Width="200px"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="asdf" runat="server" CssClass=" btn btn-danger" Text="Volver" Width="200px" /></td>
                    </tr>
                </table>
        </div>

       
        </section>

</asp:Content>
