<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Principal1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="grid grid-cols-12 gap-6">
                <div class="col-span-12 xxl:col-span-3">
                    <div class="xxl:border-l border-theme-25 -mb-10 pb-10">
                        <div class="xxl:pl-6 grid grid-cols-12 gap-6">
                            <!-- BEGIN: General Report -->
                            <div class="col-span-12 mt-8">
                                <div class="intro-y flex items-center h-10">
                                    <h2 class="text-lg font-medium truncate mr-5">General Report
                                    </h2>
                                    <a href="" class="ml-auto flex items-center text-theme-26 dark:text-theme-33"><i data-feather="refresh-ccw" class="w-4 h-4 mr-3"></i>Reload Data </a>
                                </div>
                                <div class="grid grid-cols-12 gap-6 mt-5">
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                    <i data-feather="shopping-cart" class="report-box__icon text-theme-21"></i>
                                                    <div class="ml-auto">
                                                        <div class="report-box__indicator bg-theme-10 tooltip cursor-pointer" title="33% Higher than last month">33% <i data-feather="chevron-up" class="w-4 h-4 ml-0.5"></i></div>
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">4.710</div>
                                                <div class="text-base text-gray-600 mt-1">Item Sales</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                    <i data-feather="credit-card" class="report-box__icon text-theme-22"></i>
                                                    <div class="ml-auto">
                                                        <div class="report-box__indicator bg-theme-24 tooltip cursor-pointer" title="2% Lower than last month">2% <i data-feather="chevron-down" class="w-4 h-4 ml-0.5"></i></div>
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">3.721</div>
                                                <div class="text-base text-gray-600 mt-1">New Orders</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                    <i data-feather="monitor" class="report-box__icon text-theme-23"></i>
                                                    <div class="ml-auto">
                                                        <div class="report-box__indicator bg-theme-10 tooltip cursor-pointer" title="12% Higher than last month">12% <i data-feather="chevron-up" class="w-4 h-4 ml-0.5"></i></div>
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">2.149</div>
                                                <div class="text-base text-gray-600 mt-1">Total Products</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                    <i data-feather="user" class="report-box__icon text-theme-10"></i>
                                                    <div class="ml-auto">
                                                        <div class="report-box__indicator bg-theme-10 tooltip cursor-pointer" title="22% Higher than last month">22% <i data-feather="chevron-up" class="w-4 h-4 ml-0.5"></i></div>
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">152.040</div>
                                                <div class="text-base text-gray-600 mt-1">Unique Visitor</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: General Report -->
                            <!-- BEGIN: Schedules -->
                            <div class="col-span-12 md:col-span-6 xl:col-span-4 xxl:col-span-12 xl:col-start-1 xl:row-start-2 xxl:col-start-auto xxl:row-start-auto mt-3">
                                <div class="intro-x flex items-center h-10">
                                    <h2 class="text-lg font-medium truncate mr-5">Schedules
                                            </h2>
                                    <a href="#" class="ml-auto text-theme-26 dark:text-gray-400 truncate flex items-center"><i data-feather="plus" class="w-4 h-4 mr-1"></i>Add New Schedules </a>
                                </div>
                                <div class="mt-5">
                                    <div class="intro-x box">
                                        <div class="p-5">
                                            <div class="flex">
                                                <i data-feather="chevron-left" class="w-5 h-5 text-gray-600"></i>
                                                <div class="font-medium text-base mx-auto">April</div>
                                                <i data-feather="chevron-right" class="w-5 h-5 text-gray-600"></i>
                                            </div>
                                            <div class="grid grid-cols-7 gap-4 mt-5 text-center">
                                                <div class="font-medium">Su</div>
                                                <div class="font-medium">Mo</div>
                                                <div class="font-medium">Tu</div>
                                                <div class="font-medium">We</div>
                                                <div class="font-medium">Th</div>
                                                <div class="font-medium">Fr</div>
                                                <div class="font-medium">Sa</div>
                                                <div class="py-0.5 rounded relative text-gray-600">29</div>
                                                <div class="py-0.5 rounded relative text-gray-600">30</div>
                                                <div class="py-0.5 rounded relative text-gray-600">31</div>
                                                <div class="py-0.5 rounded relative">1</div>
                                                <div class="py-0.5 rounded relative">2</div>
                                                <div class="py-0.5 rounded relative">3</div>
                                                <div class="py-0.5 rounded relative">4</div>
                                                <div class="py-0.5 rounded relative">5</div>
                                                <div class="py-0.5 bg-theme-29 dark:bg-theme-10 rounded relative">6</div>
                                                <div class="py-0.5 rounded relative">7</div>
                                                <div class="py-0.5 bg-theme-26 dark:bg-theme-17 text-white rounded relative">8</div>
                                                <div class="py-0.5 rounded relative">9</div>
                                                <div class="py-0.5 rounded relative">10</div>
                                                <div class="py-0.5 rounded relative">11</div>
                                                <div class="py-0.5 rounded relative">12</div>
                                                <div class="py-0.5 rounded relative">13</div>
                                                <div class="py-0.5 rounded relative">14</div>
                                                <div class="py-0.5 rounded relative">15</div>
                                                <div class="py-0.5 rounded relative">16</div>
                                                <div class="py-0.5 rounded relative">17</div>
                                                <div class="py-0.5 rounded relative">18</div>
                                                <div class="py-0.5 rounded relative">19</div>
                                                <div class="py-0.5 rounded relative">20</div>
                                                <div class="py-0.5 rounded relative">21</div>
                                                <div class="py-0.5 rounded relative">22</div>
                                                <div class="py-0.5 bg-theme-30 dark:bg-theme-22 rounded relative">23</div>
                                                <div class="py-0.5 rounded relative">24</div>
                                                <div class="py-0.5 rounded relative">25</div>
                                                <div class="py-0.5 rounded relative">26</div>
                                                <div class="py-0.5 bg-theme-31 dark:bg-theme-23 rounded relative">27</div>
                                                <div class="py-0.5 rounded relative">28</div>
                                                <div class="py-0.5 rounded relative">29</div>
                                                <div class="py-0.5 rounded relative">30</div>
                                                <div class="py-0.5 rounded relative text-gray-600">1</div>
                                                <div class="py-0.5 rounded relative text-gray-600">2</div>
                                                <div class="py-0.5 rounded relative text-gray-600">3</div>
                                                <div class="py-0.5 rounded relative text-gray-600">4</div>
                                                <div class="py-0.5 rounded relative text-gray-600">5</div>
                                                <div class="py-0.5 rounded relative text-gray-600">6</div>
                                                <div class="py-0.5 rounded relative text-gray-600">7</div>
                                                <div class="py-0.5 rounded relative text-gray-600">8</div>
                                                <div class="py-0.5 rounded relative text-gray-600">9</div>
                                            </div>
                                        </div>
                                        <div class="border-t border-gray-200 dark:border-dark-5 p-5">
                                            <div class="flex items-center">
                                                <div class="w-2 h-2 bg-theme-22 rounded-full mr-3"></div>
                                                <span class="truncate">UI/UX Workshop</span>
                                                <div class="h-px flex-1 border border-r border-dashed border-gray-300 mx-3 xl:hidden"></div>
                                                <span class="font-medium xl:ml-auto">23th</span>
                                            </div>
                                            <div class="flex items-center mt-4">
                                                <div class="w-2 h-2 bg-theme-26 dark:bg-theme-10 rounded-full mr-3"></div>
                                                <span class="truncate">VueJs Frontend Development</span>
                                                <div class="h-px flex-1 border border-r border-dashed border-gray-300 mx-3 xl:hidden"></div>
                                                <span class="font-medium xl:ml-auto">10th</span>
                                            </div>
                                            <div class="flex items-center mt-4">
                                                <div class="w-2 h-2 bg-theme-23 rounded-full mr-3"></div>
                                                <span class="truncate">Laravel Rest API</span>
                                                <div class="h-px flex-1 border border-r border-dashed border-gray-300 mx-3 xl:hidden"></div>
                                                <span class="font-medium xl:ml-auto">31th</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END: Schedules -->
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
