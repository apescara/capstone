<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PanelGeneral.aspx.cs" Inherits="Capstone5.PanelGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="¨content-header">
        <h1 style="text-align:center">Panel General</h1> &nbsp;</section>

    <section class="content">
        <div class="container marketing" >

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class=" center-block" src="img/new-comprobante.png" alt="Generic placeholder image" style="width: 120px; height: 70px;">
            <center><h4><b>Crea Nuevos Comprobantes de viaje</b></h4></center>
            <p align="left">Crea nuevos comprobantes de viaje, calcula las tarifas de dichos viajes e imprime sus facturas utilizando el formulario web integrado a la aplicación, este lo encuentras en la barra lateral o presionando el siguiente botón.</p>
            <p><a class="btn btn-primary" href="compViaje.aspx" role="button">Crear Nuevo Comprobante &raquo;</a></p>
          </div><!-- /.col-lg-4 -->

          <div class="col-lg-4">
            <img class="img-circle center-block" src="img/information-add-512.png" alt="Error al cargar imagen" style="width: 120px; height: 70px;">
            <center><h4><b> Agrega Información directamente al sistema</b></h4></center>
            <p align="left">Si la entidad que deseas señalar no se encuentra en el regitro del sistema, o deseas revisar el registro actual de estas entidades en el sistema, utiliza la funcionalidad "Agregar" que esta en la barra lateral, al agregar una nueva entidad al registro, esta se encontrará en el listado de opciones una vez que desees crear un nuevo comprobante de viaje.</p>
        
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
              
            <img class="img-circle center-block" src="img/social-default-image.png" alt="Generic placeholder image" style="width: 120px; height: 70px;" >
            <center><h4><b>Informes y Reportes estratégicos</b></h4></center>

            <p>Con la información recopilada en los comprobantes de viaje, se crean informes y reportes en Microsoft PowerBi, dichos reportes son creados en base a indicadores de performance clave para las operaciones de la empresa, por lo que estos son un apoyo para la empresa en su proceso de toma de decisiones estratégica. </p>
            <p><a class="btn btn-primary" href="https://powerbi.microsoft.com/es-es/" role="button">Ir a PowerBi &raquo;</a></p>
          </div>
        </div>  
            
            </div>
        <br />
        <br />
        <footer class="container">
       
        <p>&copy; 2018-2019 Punto Azul S.A. &middot; <a href="http://ptoazul.cl/">Página web</a> &middot; <a href="http://ptoazul.cl/contacto/">Contacto</a></p>
      </footer>
    
            
    </section>
</asp:Content>
