<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="FormularioPasantes.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.FormularioPasantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="intro-y flex items-center mt-8">
                    <h2 class="text-lg font-medium mr-auto">Formulario de Pasantes</h2>
                </div>
                <div class="grid grid-cols-12 gap-6 mt-5">
                    <div class="intro-y col-span-12 lg:col-span-6">
                        <!-- BEGIN: Form Layout -->
                        <div class="intro-y box p-5">
                            <div>
                                <label class="form-label">Nombres</label>
                                <input type="text" class="form-control w-full">
                            </div> 
                            <div>
                                <label class="form-label">Apellidos</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Cedula</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Celular</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Correo</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Carrera</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Curriculum</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Semestre</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div>
                                <label class="form-label">Universidad</label>
                                <input type="text" class="form-control w-full">
                            </div>
                            <div class="text-right mt-5">
                                <a href="Pasantes.aspx" class="btn btn-outline-secondary w-24 mr-1">Regresar</a>
                                <a href="#" class="btn btn-outline-secondary w-24 mr-1">Cancelar</a>
                                <a href="#" class="btn btn-primary w-24">Guardar</a>
                            </div>
                        </div>
                        <!-- END: Form Layout -->
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
