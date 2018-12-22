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
                            <label>N° DE FOLIO</label>
                        </div>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox5" runat="server" Text="" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>RECEPCIONISTA</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="recepcionista" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="idUsuario" DataValueField="idRecepcionista"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idRecepcionista], [idUsuario] FROM [recepcionistas]"></asp:SqlDataSource>
                        </div>

                     
                        <div class="form-group">
                            <label>FECHA DE DOCUMENTO </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label>FECHA DE COMPROBANTE </label>
                        </div>
                       <div class="form-group">
                            <div class="form-horizontal">
                       
                        <div class="input-group">
                            
                            <input type="text" id="fechaDocumento" value=""><img class="ui-datepicker-trigger" src="img/calendar.gif" alt="..." title="..."/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                            <input type="text" id="fechaComprobante" value=""><img class="ui-datepicker-trigger" src="img/calendar.gif" alt="..." title="..."/>
                     
                        </div>
                                
                    </div>
                        </div>
                     

                       
                        

                      

                         <div class="form-group">
                            <label>EMPRESA DE TRANSPORTE</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="empresaTransporte" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idEmpTransporte"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idEmpTransporte], [nombre] FROM [empresasTransporte]"></asp:SqlDataSource>
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
                              
                          <asp:DropDownList ID="conductor" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="idConductor"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idConductor], [nombre] FROM [conductores]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <label>PATENTE </label>
                        </div>
                        <div class="form-group">
                             <asp:DropDownList ID="patente" runat="server" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="Patente" DataValueField="idCamion"></asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCamion], [Patente] FROM [camiones]"></asp:SqlDataSource>
                        </div>

                        <div class="form-group">
                            <label>TEMPERATURA</label>
                        </div>
                        <div class="form-group">
                         <asp:DropDownList ID="temperatura" runat="server" CssClass="form-control">
                            <asp:ListItem Enabled="false" Text="T° en grados Celsius" Value=""></asp:ListItem>
                            <asp:ListItem Text="0°" Value="0"></asp:ListItem>
                            <asp:ListItem Text="1°" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2°" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3°" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4°" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5°" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6°" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7°" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8°" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9°" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10°" Value="10"></asp:ListItem>
                            <asp:ListItem Text="11°" Value="11"></asp:ListItem>
                            <asp:ListItem Text="12°" Value="12"></asp:ListItem>
                            <asp:ListItem Text="13°" Value="13"></asp:ListItem>
                            <asp:ListItem Text="14°" Value="14"></asp:ListItem>
                            <asp:ListItem Text="15°" Value="15"></asp:ListItem>
                            <asp:ListItem Text="16°" Value="16"></asp:ListItem>
                            <asp:ListItem Text="17°" Value="17"></asp:ListItem>
                            <asp:ListItem Text="18°" Value="18"></asp:ListItem>
                            <asp:ListItem Text="19°" Value="19"></asp:ListItem>
                            <asp:ListItem Text="20°" Value="20"></asp:ListItem>
                            <asp:ListItem Text="21°" Value="21"></asp:ListItem>
                            <asp:ListItem Text="22°" Value="22"></asp:ListItem>
                            <asp:ListItem Text="23°" Value="23"></asp:ListItem>
                            <asp:ListItem Text="24°" Value="24"></asp:ListItem>
                            <asp:ListItem Text="25°" Value="25"></asp:ListItem>
                           
                             </asp:DropDownList>
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>

        
            <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnSiguiente" runat="server" CssClass=" btn btn-primary" Text="Siguiente" Width="200px" OnClick="BtnSiguiente_Click"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass=" btn btn-danger" Text="Cancelar" Width="200px" OnClick="BtnCancelar_Click"/></td>
                    </tr>
                </table>
        </div>

      
       

    </section>
</asp:Content>

