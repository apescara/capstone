<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CompViaje2.aspx.cs" Inherits="Capstone5.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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


</asp:Content>
