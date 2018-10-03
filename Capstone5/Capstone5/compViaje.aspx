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
                         <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>

                     
                        <div class="form-group">
                            <label>FECHA DE DOCUMENTO </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label>FECHA DE COMPROBANTE </label>
                        </div>
                       <div class="form-group">
                            <div class="form-horizontal">
                       
                        <div class="input-group">
                            
                            <input type="text" id="calendario2" value=""><img class="ui-datepicker-trigger" src="img/calendar.gif" alt="..." title="..."/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
                            <input type="text" id="calendario" value=""><img class="ui-datepicker-trigger" src="img/calendar.gif" alt="..." title="..."/>
                     
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
                             <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control"></asp:DropDownList>
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
                        <td> <asp:Button ID="BtnSiguiente" runat="server" CssClass=" btn btn-primary" Text="Siguiente" Width="200px" OnClick="BtnSiguiente_Click"/></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnCancelar" runat="server" CssClass=" btn btn-danger" Text="Cancelar" Width="200px" OnClick="BtnCancelar_Click"/></td>
                    </tr>
                </table>
        </div>

      
       

    </section>
</asp:Content>

