<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SistemaEcuPasantes.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Login - Sistema Pasantes</title>
    <link rel="stylesheet" href="Template/Template Principal/dist/vendors/mdi/css/materialdesignicons.min.css"/>
    <link rel="stylesheet" href="Template/Template Principal/dist/css/style.css"/>
    <link rel="shortcut icon" href="Template/Template Principal/dist/images/ECU911.svg.png" />
</head>
<body>
    <div class="container-scroller d-flex">
        <div class="container-fluid page-body-wrapper full-page-wrapper d-flex">
            <div class="content-wrapper d-flex align-items-stretch auth auth-img-bg">
                <div class="row flex-grow">
                    <div class="col-lg-6 d-flex align-items-center justify-content-center">
                        <div class="auth-form-transparent text-left p-3">
                            <div class="brand-logo">
                                <asp:Image ID="Image1" src="Template/Template Principal/dist/images/ECU911.svg.png" alt="logo" runat="server" />
                            </div>
                            <h4>Bienvenido al Sistema!</h4>
                            <h6 class="font-weight-light">Un gusto verte de nuevo!</h6>
                            <form class="pt-3" runat="server">
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group">
                                            <label for="exampleInputEmail">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend bg-transparent">
                                                    <span class="input-group-text bg-transparent border-right-0">
                                                        <i class="mdi mdi-account-outline text-primary"></i>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="txtUser" type="text" CssClass="form-control form-control-lg border-left-0" placeholder="Username" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword">Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend bg-transparent">
                                                    <span class="input-group-text bg-transparent border-right-0">
                                                        <i class="mdi mdi-lock-outline text-primary"></i>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="txtPass" type="password" CssClass="form-control form-control-lg border-left-0" placeholder="Password" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="my-2 d-flex justify-content-between align-items-center">
                                            <div class="form-check">
                                                <label class="form-check-label text-muted">
                                                    <asp:TextBox ID="txtmostrar" type="checkbox" CssClass="form-check-input" runat="server" AutoPostBack="true"></asp:TextBox>
                                                    Mostrar tu contraseña
                                                </label>
                                            </div>
                                            <a href="#" class="auth-link text-black">Olvidaste Tu Contraseña?</a>
                                        </div>
                                        <div class="my-3">
                                            <asp:Button ID="btnIngresar" CssClass="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" OnClick="btnIngresar_Click" runat="server" Text="INICIAR SESION" />
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 login-half-bg d-none d-lg-flex flex-row">
                        <p class="text-white font-weight-medium text-center flex-grow align-self-end">Copyright &copy; 2018  All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Template/Template Principal/dist/vendors/js/vendor.bundle.base.js"></script>
    <script src="Template/Template Principal/dist/js/off-canvas.js"></script>
    <script src="Template/Template Principal/dist/js/hoverable-collapse.js"></script>
    <script src="Template/Template Principal/dist/js/template.js"></script>
</body>
</html>
