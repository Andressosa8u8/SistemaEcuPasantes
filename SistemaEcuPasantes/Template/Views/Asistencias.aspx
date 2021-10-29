<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Asistencias.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Asistencias" %>
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
                        <h4 class="card-title">Asistencias Diarias</h4>
                        <div class="container">
                            <div class="row">
                                <div class="col-9">
                                    <p class="card-description">
                                        Control de <code>Asistencias</code>
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
                                            <asp:TextBox ID="txtBuscar" type="text" CssClass="form-control form-control-lg border-left-0" AutoPostBack="true" placeholder="Buscar Pasantes Por Pasante..." runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:GridView ID="grvAsistencias" runat="server" AllowPaging="false" AutoGenerateColumns="false" CssClass="table table-hover text-center" GridLines="None" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Codigo">
                                    <ItemTemplate>
                                        <asp:Label ID="Asistencia_id" runat="server" Text='<%#Eval("Asistencia_id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Pasante">
                                    <ItemTemplate>
                                        <asp:Label ID="Pasante" runat="server" Text='<%#Eval("Pasante")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Codigo de Pasante">
                                    <ItemTemplate>
                                        <asp:Label ID="Codigo_Pasante" runat="server" Text='<%#Eval("Codigo_Pasante")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha">
                                    <ItemTemplate>
                                        <asp:Label ID="Fecha" runat="server" Text='<%#Eval("Fecha")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Hora de Entrada">
                                    <ItemTemplate>
                                        <asp:Label ID="HoraEntrada" runat="server" Text='<%#Eval("HoraEntrada")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Hora de Salida">
                                    <ItemTemplate>
                                        <asp:Label ID="HoraSalida" runat="server" Text='<%#Eval("HoraSalida")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actividades Diarias">
                                    <ItemTemplate>
                                        <asp:Label ID="Actividades" runat="server" Text='<%#Eval("Actividades")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tipo">
                                    <ItemTemplate>
                                        <asp:Label ID="Tipo" runat="server" Text='<%#Eval("Tipo")%>'></asp:Label>
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
