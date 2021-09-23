<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Numero_Horas.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Numero_Horas" %>
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
                        <h4 class="card-title">Horas Completas Por Pasante</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Numero de <code>Horas</code>
                                    </p>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend bg-transparent">
                                                <span class="input-group-text bg-transparent border-right-0">
                                                    <i class="mdi mdi-magnify text-primary"></i>
                                                </span>
                                            </div>
                                            <asp:TextBox ID="txtBuscar" type="text" CssClass="form-control form-control-lg border-left-0" OnTextChanged="txtBuscar_TextChanged" AutoPostBack="true" placeholder="Buscar Pasantes Por Apellido..." runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:GridView ID="grvNumHoras"  runat="server" AllowPaging="false" AutoGenerateColumns="false" CssClass="table table-hover text-center" GridLines="None" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Apellidos">
                                    <ItemTemplate>
                                        <asp:Label ID="Apellidos" runat="server" Text='<%#Eval("Apellidos")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombres">
                                    <ItemTemplate>
                                        <asp:Label ID="Nombres" runat="server" Text='<%#Eval("Nombres")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Labor">
                                    <ItemTemplate>
                                        <asp:Label ID="concepto" runat="server" Text='<%#Eval("concepto")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Horas a Cumplir">
                                    <ItemTemplate>
                                        <asp:Label ID="nhoras" runat="server" Text='<%#Eval("nhoras")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Horas cumplidas">
                                    <ItemTemplate>
                                        <asp:Label ID="horasA" runat="server" Text='<%#Eval("horasA")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
