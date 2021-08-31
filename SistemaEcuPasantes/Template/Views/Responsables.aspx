<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Responsables.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Responsables" %>
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
                        <h4 class="card-title">Resposables</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Resposables</code>
                                    </p>
                                </div>
                                <div class="col-3" align="left">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Responsable" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="table-responsive">
                            <asp:GridView ID="grvResponsables" AutoGenerateColumns="False" CssClass="table table-hover text-center" OnRowCommand="grvResponsables_RowCommand" GridLines="None" Width="100%" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="Codigo">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_id" runat="server" Text='<%#Eval("Resp_id")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nombre">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_nombre" runat="server" Text='<%#Eval("Resp_nombre")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Apellidos">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_apellido" runat="server" Text='<%#Eval("Resp_apellido")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cedula">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_cedula" runat="server" Text='<%#Eval("Resp_cedula")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Area">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_area" runat="server" Text='<%#Eval("Resp_area")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cargo">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_cargo" runat="server" Text='<%#Eval("Resp_cargo")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Celular">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_celular" runat="server" Text='<%#Eval("Resp_celular")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Correo">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_correo" runat="server" Text='<%#Eval("Resp_correo")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Usuario">
                                        <ItemTemplate>
                                            <asp:Label ID="Resp_nomlogin" runat="server" Text='<%#Eval("Resp_nomlogin")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("Resp_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="17px" />
                                        <ItemStyle Width="17px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("Resp_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
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
