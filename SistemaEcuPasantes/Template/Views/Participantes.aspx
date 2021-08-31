<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Participantes.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Participantes" %>
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
                        <h4 class="card-title">Participantes De Un Proyecto</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Participantes</code>
                                    </p>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <label for="exampleInputEmail">Buscar</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend bg-transparent">
                                                <span class="input-group-text bg-transparent border-right-0">
                                                    <i class="mdi mdi-magnify text-primary"></i>
                                                </span>
                                            </div>
                                            <asp:TextBox ID="txtBuscar" type="text" CssClass="form-control form-control-lg border-left-0" AutoPostBack="true" OnTextChanged="txtBuscar_TextChanged" placeholder="Buscar Participantes..." runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <asp:GridView ID="grvParticipantes" AutoGenerateColumns="false" Width="100%" CssClass="table table-hover text-center" GridLines="None" runat="server">
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
                                <asp:TemplateField HeaderText="Universidad">
                                    <ItemTemplate>
                                        <asp:Label ID="Universidad" runat="server" Text='<%#Eval("Universidad")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Proyecto">
                                    <ItemTemplate>
                                        <asp:Label ID="Proyecto_concepto" runat="server" Text='<%#Eval("Proyecto_concepto")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Descripcion del Proyecto">
                                    <ItemTemplate>
                                        <asp:Label ID="Proyecto_descripcion" runat="server" Text='<%#Eval("Proyecto_descripcion")%>'></asp:Label>
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
