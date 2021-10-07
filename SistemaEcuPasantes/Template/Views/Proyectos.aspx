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
                            <asp:GridView ID="grvProyectos" AutoGenerateColumns="False" OnRowCommand="grvProyectos_RowCommand" CssClass="table table-hover text-center" GridLines="None" Width="100%" runat="server">
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
                                    <asp:TemplateField HeaderText="Responsable">
                                        <ItemTemplate>
                                            <asp:Label ID="responsable" runat="server" Text='<%#Eval("responsable")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Estado">
                                        <ItemTemplate>
                                            <asp:Label ID="Activo" runat="server" Text='<%#Eval("Activo")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("Proyecto_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("Proyecto_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
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
