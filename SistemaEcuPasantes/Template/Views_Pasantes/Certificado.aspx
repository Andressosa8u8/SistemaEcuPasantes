<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views_Pasantes/Pasantes.Master" AutoEventWireup="true" CodeBehind="Certificado.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views_Pasantes.Certificado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 360;
            margin-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="card">
                <div class="card-body">
                    <br />

                    <div class="container">
                        <div class="row">
                            <div class="col-9">
                                <img src="../Template Principal/dist/images/Republica del ecuador.png" style="width: 150px; height: 100px" />
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label2" runat="server" Text="Servicio Integrado de Seguridad ECU 911" Font-Size="X-Large"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />

                    <div class="container">
                        <div class="row-cols-2">
                            <div class="col-2" style="text-align: right">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" ReadOnly="true" Style="background-color: transparent; width: 260px" Text="Quito, 25 de Agosto de 2021"></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <br />
                    <br />
                    <br />
                    <h2 style="text-align: center; font-family: Arial">CERTIFICADO</h2>
                    <br />
                    <br />



                    <p class="card-text align-content-center" style="text-align: justify; padding-left: 245px; padding-right: 245px; font-family: Arial">
                        El Servicio Integrado de Seguridad ECU 911 entrega el presente Certificado a Nicolás Fernando Cabezas
                        Vizcarra con cédula de identidad 1726362757 estudiante de Ingeniería de Software de la Universidad de las
                        Américas, por haber formado parte del Proyecto Académico “Desarrollo del sistema para registro de horas de
                        las y los estudiantes que realizan proyectos académicos en el ECU 911, Desarrollo del sistema de cuadro
                        de mando y gestión: Máster y Operaciones y Desarrollo del Sistema de Atención Prehospitalaria: Registro
                        de Recursos y Asignaciones” con una duración de 294 horas, a partir del 12 de mayo al 20 de agosto de 2021.<br />
                        <br />

                        Durante este periodo demostró su colaboración y responsabilidad en lo encomendado.<br />
                        <br />

                        Es todo cuanto se puede declarar en honor a la verdad. El interesado puede hacer uso del presente certificado
                        para los fines pertinentes.<br />
                        <br />

                        Se expide el presente certificado para los fines pertinentes.<br />
                        <br />

                        Atentamente,    
                    </p>

                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
