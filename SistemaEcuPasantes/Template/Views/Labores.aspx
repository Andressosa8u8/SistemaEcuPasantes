﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Labores.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Labores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Labores</h4>
                        <p class="card-description">
                            Listado de <code>Labores</code>
                        </p>
                        <asp:GridView ID="grvLabores" AutoGenerateColumns="false" Width="100%" CssClass="table table-striped" GridLines="None" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="Codigo">
                                    <ItemTemplate>
                                        <asp:Label ID="Labor_id" runat="server" Text='<%#Eval("Pasantes_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Descripción">
                                    <ItemTemplate>
                                        <asp:Label ID="concepto" runat="server" Text='<%#Eval("concepto")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo de Pasante">
                                    <ItemTemplate>
                                        <asp:Label ID="Pasantes_id" runat="server" Text='<%#Eval("Pasantes_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo de Proyecto">
                                    <ItemTemplate>
                                        <asp:Label ID="Proyecto_id" runat="server" Text='<%#Eval("Proyecto_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Label ID="activo" runat="server" Text='<%#Eval("Activo")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
