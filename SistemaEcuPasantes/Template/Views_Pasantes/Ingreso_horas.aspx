<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views_Pasantes/Pasantes.Master" AutoEventWireup="true" CodeBehind="Ingreso_horas.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views_Pasantes.Ingreso_horas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                        <div class="card">
                <div class="card-header">
                    <h4>Formulario Labores</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Cantidad</label>
                        <asp:TextBox ID="txtCantidad" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Concepto</label>
                        <asp:TextBox ID="txtConcepto" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Labor</label>
                        <asp:DropDownList ID="ddlLabor" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btnCancelar" CssClass="btn btn-outline-secondary btn-fw" OnClick="btnCancelar_Click" runat="server" Text="Cancelar" />
                    <asp:Button ID="btnModificar" CssClass="btn btn-primary" runat="server" OnClick="btnModificar_Click" Text="Modificar" Visible="False" />
                    <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
