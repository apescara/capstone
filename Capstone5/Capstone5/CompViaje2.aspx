<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CompViaje2.aspx.cs" Inherits="Capstone5.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="¨content-header">
        <h1 style="text-align:center"> Detalle Comprobante de Viaje&nbsp; <%:Session["numero Folio"]%></h1>
    </section>


    <section class="content">
        <div class="row" >
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE TIPO DE COMPROBANTE<br />

                            </label>

                           
                            <br />
                        </div>
                         <asp:CheckBox ID="RecepcionCheckBox" runat="server" Text =" Recepción"/> &nbsp
                            <asp:CheckBox ID="DespachoCheckBox" runat="server" Text ="Despacho"/>&nbsp
                            <asp:CheckBox ID="MaterialesCheckBox" runat="server" Text="Materiales"/>&nbsp
                            <asp:CheckBox ID="RechazoCheckBox" runat="server" Text="Rechazo"/>
                        <br />
                        <br />
                            <asp:Button ID="Button2" runat="server" Text="Confirmar" CssClass="btn btn-primary" Onclick="Button2_Click"/>

                           </div>

                                </div>
                                     </div>
                                          </div>

       
        </section>
    
     <section class="content" >
        
            <div class="col-md" id="RecepcionForm" runat="server">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE INFORMACIÓN DEL DESPACHO
                            <br />
                                <br />
                            </label>
                   
                            <table class="table table-sm table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Origen</th>
      <th scope="col">Destino</th>
      <th scope="col">Pasa por Planta</th>
      <th scope="col">Tipo de Documento</th>
      <th scope="col">Folio de Documento</th>
      <th scope="col">N° de Pallets</th>
      <th scope="col">N° de Cajas</th>
      <th scope="col">N° de Kilos</th>
      


    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
        
      <td><asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCliente], [nombre] FROM [clientes]"></asp:SqlDataSource>
        </td>
      <td><asp:DropDownList ID="DropDownList6" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Si" Value="1"></asp:ListItem>
    <asp:ListItem Text="No" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
        <asp:DropDownList ID="DropDownList7" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox></td>
    </tr>
    <tr>
      <th scope="row">2</th>
       <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCliente], [nombre] FROM [clientes]"></asp:SqlDataSource>
        </td>
      <td><asp:DropDownList ID="DropDownList9" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Si" Value="1"></asp:ListItem>
    <asp:ListItem Text="No" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
        <asp:DropDownList ID="DropDownList10" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox></td>
    <tr>
      <th scope="row">3</th>
       <td><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCliente], [nombre] FROM [clientes]"></asp:SqlDataSource>
        </td>
      <td><asp:DropDownList ID="DropDownList12" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Si" Value="1"></asp:ListItem>
    <asp:ListItem Text="No" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
        <asp:DropDownList ID="DropDownList13" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox11" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox12" runat="server" TextMode="Number"></asp:TextBox></td>


    </tr>
       <tr>
      <th scope="row">4</th>
       <td><asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCliente], [nombre] FROM [clientes]"></asp:SqlDataSource>
        </td>
      <td><asp:DropDownList ID="DropDownList15" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Si" Value="1"></asp:ListItem>
    <asp:ListItem Text="No" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
        <asp:DropDownList ID="DropDownList16" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox14" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox15" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox16" runat="server" TextMode="Number"></asp:TextBox></td>
    </tr>
  </tbody>
</table>
                     
                        </div>
                           </div>
                                </div>
                                     </div>



            

       
        </section>



     <section class="content">
        
            <div class="col-md" id="DespachoForm" runat="server">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE INFORMACIÓN DE LA RECEPCIÓN
                            <br />
                                <br />
                            </label>
                   
                            <table class="table table-sm table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Proveedor</th>
      <th scope="col">Tipo de Documento</th>
      <th scope="col">Folio de Documento</th>
      <th scope="col">N° de Pallets</th>
      <th scope="col">N° de Cajas</th>
      <th scope="col">N° de Kilos</th>
      


    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource25" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idCliente], [nombre] FROM [clientes]"></asp:SqlDataSource>
        </td>
        
      <td><asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="origen" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="origen" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [nombre], [idProductor] FROM [productores]"></asp:SqlDataSource>
        </td>
      <td><asp:DropDownList ID="DropDownList19" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Value="1">Guia</asp:ListItem>
    <asp:ListItem Value="2">Factura</asp:ListItem></asp:DropDownList></td>
      <td>
          <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
       </td>
      <td><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox18" runat="server" TextMode="Number"></asp:TextBox></td>
  
  
    </tr>
    <tr>
      <th scope="row">2</th>
       <td><asp:DropDownList ID="DropDownList21" runat="server" DataSourceID="SqlDataSource25" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList49" runat="server" DataSourceID="origen" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
        </td>
      <td>
        <asp:DropDownList ID="DropDownList24" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox22" runat="server" TextMode="Number"></asp:TextBox></td>
     <td><asp:TextBox ID="TextBox23" runat="server" TextMode="Number"></asp:TextBox></td>
    
    <tr>
      <th scope="row">3</th>
       <td><asp:DropDownList ID="DropDownList25" runat="server" DataSourceID="SqlDataSource25" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList26" runat="server" DataSourceID="origen" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
        </td>
      <td><asp:DropDownList ID="DropDownList27" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guia" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
          <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
       </td>
      <td><asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox26" runat="server" TextMode="Number"></asp:TextBox></td>
 


    </tr>
       <tr>
      <th scope="row">4</th>
       <td><asp:DropDownList ID="DropDownList29" runat="server" DataSourceID="SqlDataSource25" DataTextField="nombre" DataValueField="idCliente"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td><asp:DropDownList ID="DropDownList30" runat="server" DataSourceID="origen" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
        </td>
      <td><asp:DropDownList ID="DropDownList31" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guia" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList></td>
      <td>
          <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
       </td>
      <td><asp:TextBox ID="TextBox29" runat="server"></asp:TextBox></td>
        
      <td><asp:TextBox ID="TextBox30" runat="server" TextMode="Number"></asp:TextBox></td>

    </tr>
  </tbody>
</table>
                     
                        </div>
                           </div>
                                </div>
                                     </div>



            

       
        </section>


    
     <section class="content">
       
            <div class="col-md" id="RecepcionMaterialesForm" runat="server">
                <div class="box box-primary">
                    <div class="box-body">

                        <div class="form-group">
                            <label>INGRESE INFORMACIÓN DE LA RECEPCIÓN DE MATERIALES
                            <br />
                                <br />
                            </label>
                   
                            <table class="table table-sm table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Proveedor</th>
      <th scope="col">Tipo de Documento</th>
      <th scope="col">Folio de Documento</th>
      <th scope="col">Tipo de Material</th>
      <th scope="col">Cantidad</th>
         

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td><asp:DropDownList ID="DropDownList33" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
        
      <td>
        <asp:DropDownList ID="DropDownList50" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
        </td>
      <td><asp:TextBox ID="TextBox49" runat="server"></asp:TextBox></td>
      <td>
        <asp:DropDownList ID="DropDownList36" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Cajas" Value="1"></asp:ListItem>
    <asp:ListItem Text="Pallets" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox33" runat="server"></asp:TextBox></td>
        
    </tr>
    <tr>
      <th scope="row">2</th>
       <td><asp:DropDownList ID="DropDownList37" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td>
        <asp:DropDownList ID="DropDownList51" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
        </td>
      <td><asp:TextBox ID="TextBox50" runat="server"></asp:TextBox></td>
      <td>
        <asp:DropDownList ID="DropDownList40" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Cajas" Value="1"></asp:ListItem>
    <asp:ListItem Text="Pallets" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox37" runat="server"></asp:TextBox></td>
        
      <tr>
      <th scope="row">3</th>
       <td><asp:DropDownList ID="DropDownList41" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td>
        <asp:DropDownList ID="DropDownList52" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
        </td>
      <td><asp:TextBox ID="TextBox51" runat="server"></asp:TextBox></td>
      <td>
        <asp:DropDownList ID="DropDownList44" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Cajas" Value="1"></asp:ListItem>
    <asp:ListItem Text="Pallets" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox41" runat="server"></asp:TextBox></td>
        

    </tr>
       <tr>
      <th scope="row">4</th>
       <td><asp:DropDownList ID="DropDownList45" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idProductor"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:PRUEBA2ConnectionString %>" SelectCommand="SELECT [idProductor], [nombre] FROM [productores]"></asp:SqlDataSource>
        </td>
       <td>
        <asp:DropDownList ID="DropDownList53" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Guía" Value="1"></asp:ListItem>
    <asp:ListItem Text="Factura" Value="2"></asp:ListItem></asp:DropDownList>
        </td>
      <td><asp:TextBox ID="TextBox52" runat="server"></asp:TextBox></td>
      <td>
        <asp:DropDownList ID="DropDownList48" runat="server"> <asp:ListItem Enabled="true" Text="" Value="-1"></asp:ListItem>
    <asp:ListItem Text="Cajas" Value="1"></asp:ListItem>
    <asp:ListItem Text="Pallets" Value="2"></asp:ListItem></asp:DropDownList>
       </td>
      <td><asp:TextBox ID="TextBox45" runat="server"></asp:TextBox></td>
        
    </tr>
  </tbody>
</table>
                     
                        </div>
                           </div>
                                </div>
                                     </div>



            

       
        </section>

    <section >
        <div align="center">
                <table>
                    <tr>
                        <td> <asp:Button ID="BtnCrear" runat="server" CssClass=" btn btn-primary" Text="Crear" Width="200px" /></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;

                        </td>
                        <td> <asp:Button ID="BtnVolver" runat="server" CssClass=" btn btn-danger" Text="Volver" Width="200px" /></td>
                    </tr>
                </table>
        </div>
    </section>
</asp:Content>
