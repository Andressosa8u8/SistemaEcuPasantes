<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="FormularioHoras.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.FormularioHoras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="intro-y flex items-center mt-8">
                    <h2 class="text-lg font-medium mr-auto">Formulario de Horas</h2>
                </div>
                <br />
                <!-- BEGIN: Form Layout -->
                <div class="row g-3">
                    <div class="col-12">
                        <label class="form-label">Descripción</label>
                        <asp:TextBox ID="txt_descripcion" CssClass="form-control" TextMode="MultiLine" Rows="2" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">Cantidad de Horas</label>
                        <asp:TextBox ID="txt_cantidad" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Codigo Labor</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Fecha</label>
                        <asp:TextBox ID="txt_fecha" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="text-right mt-5">
                    <asp:Button ID="btn_cancelar" runat="server" CssClass="btn btn-outline-secondary w-24 mr-1" Text="Cancelar" OnClick="btn_cancelar_Click" />
                    <asp:Button ID="btn_guardar" runat="server" CssClass="btn btn-primary w-24" Text="Guardar" OnClick="btn_guardar_Click" />
                </div>
                <!-- END: Form Layout -->
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
</asp:Content>
