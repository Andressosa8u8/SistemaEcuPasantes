<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="FormularioPasantes.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.FormularioPasantes" %>

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
                    <h4>Formulario Pasantes</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Cedula</label>
                        <asp:TextBox ID="txtCedula" OnTextChanged="txtCedula_TextChanged" AutoPostBack="true" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Apellidos</label>
                        <asp:TextBox ID="txtApellido" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nombres</label>
                        <asp:TextBox ID="txtNombre" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Celular</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fas fa-phone"></i>
                                </div>
                            </div>
                            <asp:TextBox ID="txtCelular" type="number" CssClass="form-control phone-number" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Correo</label>
                        <asp:TextBox ID="txtEmail" type="email" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Carrera</label>
                        <asp:TextBox ID="txtCarrera" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Curriculum</label>
                        <asp:FileUpload ID="fuCurriculum" CssClass="form-control" runat="server" />
                        <%--<asp:TextBox ID="txtCurriculum" type="text" CssClass="form-control" runat="server"></asp:TextBox>--%>
                    </div>
                    <div class="form-group">
                        <label>Area Designada</label>
                        <asp:TextBox ID="txtArea" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nivel de Semestre</label>
                        <asp:TextBox ID="txtNivel" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Universidad</label>
                        <asp:TextBox ID="txtUniversidad" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Codigo de Asistencia</label>
                        <asp:TextBox ID="txtCodPa" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Codigo del Ecu</label>
                        <asp:TextBox ID="txtCodEcu" type="text" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <%--<div class="form-group">
                        <asp:TextBox ID="TextBox1" type="checkbox" checked="checked" data-on-color="warning" data-off-color="danger" data-on-text="Enabled" data-off-text="Disabled" runat="server"></asp:TextBox>
                    </div>
                    <input type="checkbox" checked data-on-color="warning" data-off-color="danger" data-on-text="Enabled" data-off-text="Disabled" />--%>
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
