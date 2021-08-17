<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Proyectos" %>

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
                        <h4 class="card-title">Proyectos</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Proyectos</code>
                                    </p>
                                </div>
                                <div class="col-3" align="right">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Proyecto" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />                       
                        <div class="table-responsive">
                            <asp:GridView ID="grvProyectos" AutoGenerateColumns="False" CssClass="table table-hover text-center" GridLines="None" Width="100%" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="Codigo">
                                        <ItemTemplate>
                                            <asp:Label ID="Proyecto_id" runat="server" Text='<%#Eval("Proyecto_id")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Concepto">
                                        <ItemTemplate>
                                            <asp:Label ID="Proyecto_concepto" runat="server" Text='<%#Eval("Proyecto_concepto")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Descripcion">
                                        <ItemTemplate>
                                            <asp:Label ID="Proyecto_descripcion" runat="server" Text='<%#Eval("Proyecto_descripcion")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btn_editar" CssClass="btn" runat="server">
                                            <i class="fas fa-pen-alt"></i>                                       
                                        </asp:LinkButton>
                                        <asp:LinkButton ID="btn_eliminar" CssClass="btn" runat="server">
                                            <i class="fas fa-trash-alt"></i>                                      
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
