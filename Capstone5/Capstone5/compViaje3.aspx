<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="compViaje3.aspx.cs" Inherits="Capstone5.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="¨content-header">
        <h1 style="text-align:center"> Comprobante Creado! </h1>
    </section>


    <section>


        <asp:Menu ID="Menu1" runat="server" Orientation="Vertical">
            <Items>
            <asp:MenuItem Text="File" Value="File">
            <asp:MenuItem NavigateUrl="compViaje.aspx" Text="Menu1"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="compViaje.aspx" Text="Menu1"></asp:MenuItem>
            </asp:MenuItem>
                </Items>
        </asp:Menu>
    </section>

</asp:Content>
