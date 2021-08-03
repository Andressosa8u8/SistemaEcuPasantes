i<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SistemaEcuPasantes.index" %>

<!DOCTYPE html>

<html lang="en" class="light">
<head>
    <meta charset="utf-8">
    <link href="Template/Template Principal/dist/images/ECU911.svg.png" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Icewall admin is super flexible, powerful, clean & modern responsive tailwind admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Icewall Admin Template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="LEFT4CODE">
    <title>Login - Sistema Pasantes</title>
    <link rel="stylesheet" href="Template/Template Principal/dist/css/app.css" />
</head>
<body class="login">
    <form runat="server">
        <div class="container sm:px-10">
            <div class="block xl:grid grid-cols-2 gap-4">
                <div class="hidden xl:flex flex-col min-h-screen">
                    <div class="my-auto">
                        <img alt="Icewall Tailwind HTML Admin Template" class="-intro-x w-1/2 -mt-16" src="Template/Template Principal/dist/images/logo.jpg">
                        <div class="-intro-x text-white font-medium text-4xl leading-tight mt-10">
                            Servicio Integrado de Seguridad
                           
                            <br>
                            Ecu 911
                       
                        </div>
                        <div class="-intro-x mt-5 text-lg text-white text-opacity-70 dark:text-gray-500">Línea única para emergencias</div>
                    </div>
                </div>
                <div class="h-screen xl:h-auto flex py-5 xl:py-0 my-10 xl:my-0">
                    <div class="my-auto mx-auto xl:ml-20 bg-white dark:bg-dark-1 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
                        <h2 class="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-left">¡Bienvenido!
                        </h2>
                        <div class="intro-x mt-8">
                            <input type="text" class="intro-x login__input form-control py-3 px-4 border-gray-300 block" placeholder="Usuario">
                            <input type="password" class="intro-x login__input form-control py-3 px-4 border-gray-300 block mt-4" placeholder="Contraseña">
                        </div>
                        <div class="intro-x flex text-gray-700 dark:text-gray-600 text-xs sm:text-sm mt-4">
                            <div class="flex items-center mr-auto">
                                <input id="remember-me" type="checkbox" class="form-check-input border mr-2">
                                <label class="cursor-pointer select-none" for="remember-me">Recordar contraseña</label>
                            </div>
                            <a href="#">Olvidaste la contraseña?</a>
                        </div>
                        <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                            <asp:Button class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top" ID="btn_ingresar" runat="server" Text="Ingresar" OnClick="btn_ingresar_Click" />
                            <button class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 mt-3 xl:mt-0 align-top">Registrarse</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Template/Template Principal/dist/js/app.js"></script>
</body>
</html>
