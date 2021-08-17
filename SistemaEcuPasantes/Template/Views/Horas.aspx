<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Horas.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Horas" %>
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
                  <h4 class="card-title">Horas</h4>
                  <p class="card-description">
                    Listado de <code>Horas</code>
                  </p>
                  <%--<div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>
                            No.
                          </th>
                          <th>
                            Usuario
                          </th>
                          <th>
                            Contraseña
                          </th>
                          <th>
                            Estado
                          </th>
                          <th>
                            Tipo de usario
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                          <asp:Repeater ID="rptUsuarios" ItemType="SistemaEcuPasantes.Template.Views.Tbl_Usuario" runat="server">
                              <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex + 1 %></td>
                            <td><%# Item.usu_nomlogin %></td>
                            <td><%# Item.usu_pass %></td>
                            <td><%# Item.usu_estado %></td>
                            <td><%# Item.tusu_id %></td>
                        </tr>
                          </ItemTemplate>
                          </asp:Repeater>
                      </tbody>
                    </table>
                  </div>--%>
                    <asp:GridView ID="grvUsuarios" AutoGenerateColumns="false" Width="100%" CssClass="table table-striped" GridLines="None" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Codigo">
                                <ItemTemplate>
                                    <asp:Label ID="usu_id" runat="server" Text='<%#Eval("usu_id")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Usuario">
                                <ItemTemplate>
                                    <asp:Label ID="usu_nomlogin" runat="server" Text='<%#Eval("usu_nomlogin")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="usu_estado" runat="server" Text='<%#Eval("usu_estado")%>'></asp:Label>
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
