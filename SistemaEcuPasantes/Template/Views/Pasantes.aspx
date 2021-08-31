<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Pasantes.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Pasantes" %>

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
                        <h4 class="card-title">Pasantes</h4>                        
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Listado de <code>Pasantes</code>
                                    </p>
                                </div>
                                <div class="col-3" align="right">
                                    <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar Pasante" OnClick="btn_agregar_Click" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <asp:GridView ID="grvPasantes" OnRowCommand="grvPasantes_RowCommand" AutoGenerateColumns="false" CssClass="table table-hover text-center" GridLines="None" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="Codigo">
                                    <ItemTemplate>
                                        <asp:Label ID="Pasantes_id" runat="server" Text='<%#Eval("Pasantes_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombres">
                                    <ItemTemplate>
                                        <asp:Label ID="Nombres" runat="server" Text='<%#Eval("Nombres")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellidos">
                                    <ItemTemplate>
                                        <asp:Label ID="Apellidos" runat="server" Text='<%#Eval("Apellidos")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cedula">
                                    <ItemTemplate>
                                        <asp:Label ID="Cedula" runat="server" Text='<%#Eval("Cedula")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Celular">
                                    <ItemTemplate>
                                        <asp:Label ID="Celular" runat="server" Text='<%#Eval("Celular")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo">
                                    <ItemTemplate>
                                        <asp:Label ID="Correo" runat="server" Text='<%#Eval("Correo")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Carrera">
                                    <ItemTemplate>
                                        <asp:Label ID="Carrera" runat="server" Text='<%#Eval("Carrera")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Curriculum">
                                    <ItemTemplate>
                                        <asp:Label ID="Curriculum" runat="server" Text='<%#Eval("Curriculum")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Certificado">
                                    <ItemTemplate>
                                        <asp:Label ID="Certificado" runat="server" Text='<%#Eval("Certificado")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Area Designada">
                                    <ItemTemplate>
                                        <asp:Label ID="Area" runat="server" Text='<%#Eval("Area")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Numero de Semestre">
                                    <ItemTemplate>
                                        <asp:Label ID="Nsemestre" runat="server" Text='<%#Eval("Nsemestre")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Universidad">
                                    <ItemTemplate>
                                        <asp:Label ID="Universidad" runat="server" Text='<%#Eval("Universidad")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Label ID="Activo" runat="server" Text='<%#Eval("Activo")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17" HeaderText="">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnbEditar" Width="16" Height="16" CommandArgument='<%#Eval("Pasantes_id")%>' CommandName="Editar" runat="server"><i class="fas fa-pen"></i></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="17px" />
                                    <ItemStyle Width="17px" />
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("Pasantes_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="17px" />
                                    <ItemStyle Width="17px" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
