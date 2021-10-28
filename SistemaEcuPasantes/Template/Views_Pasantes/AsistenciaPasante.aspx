<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views_Pasantes/Pasantes.Master" AutoEventWireup="true" CodeBehind="AsistenciaPasante.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views_Pasantes.AsistenciaPasante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--<div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"></h4>--%>
                        <div id="container" class="container">
                            <h2>ASISTENCIA</h2>
                            <p>Ingresa tu ID de asistencia</p>
                            <asp:TextBox ID="txtAsistencia"  type="text" placeholder="ID de asistencia" required="required" runat="server"></asp:TextBox>
                            <%--<input type="email" placeholder="ID de asistencia" required>--%>
                            <br />
                            <br />
                            <asp:TextBox ID="txtActividades" Rows="3" TextMode="MultiLine" CssClass="actividades" type="text" placeholder="Ingrese sus actividades" required="required" runat="server"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnAsistencia" OnClick="btnAsistencia_Click" CssClass="registar" runat="server" Text="Registrar" />
                            <%--<button>Registrar</button>--%>
                        </div>
                  <%--  </div>
                </div>
            </div>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
