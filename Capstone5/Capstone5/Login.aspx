<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Capstone5.WebForm1" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Acceso al Sistema Punto Azul</title>
    <link rel="icon" href="http://ptoazul.cl/undostres/wp-content/uploads/2017/02/cropped-favicon-puntoazul-300x300.png" sizes="32x32" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" type="text/css" />
    <link href="css/AdminLTE.css" type="text/css" rel="stylesheet" />


</head>
<body class="bg-black">
     <form id="form1" runat="server">
    <div class="form-box" id="login-box">
        <asp:Login ID="LoginUser" runat="server" EnableViewState="false" OnAuthenticate="LoginUser_Authenticate" Width="100%">
            <LayoutTemplate>

                <div class="header bg-blue">Iniciar Sesión </div>
               
                    <div class=" body bg-grey">
                        <div class="form-group">
                            <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="@ptoazul.cl"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Ingrese Contraseña..." OnTextChanged="txtPassword_TextChanged" TextMode="Password"></asp:TextBox>

                        </div>
                    </div>
                    <div class="footer">
                        <asp:Button ID="btnIngresar" runat="server" Text="Iniciar Sesión" CssClass="btn bg-blue btn-block" OnClick="btnIngresar_Click" />
                    </div>
            </LayoutTemplate>
        </asp:Login>

    </div>
    </form>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>
</html>
