﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views/Principal.Master" AutoEventWireup="true" CodeBehind="Labores.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Labores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="content">
                <h2 class="intro-y text-lg font-medium mt-10">Listado de Labores
                </h2>
                <div class="grid grid-cols-12 gap-6 mt-5">
                    <div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-2">
                        <button class="btn btn-primary shadow-md mr-2">Nuevo Labor</button>
                        <div class="dropdown">
                            <button class="dropdown-toggle btn px-2 box text-gray-700 dark:text-gray-300" aria-expanded="false">
                                <span class="w-5 h-5 flex items-center justify-center"><i class="w-4 h-4" data-feather="plus"></i></span>
                            </button>
                            <div class="dropdown-menu w-40">
                                <div class="dropdown-menu__content box dark:bg-dark-1 p-2">
                                    <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md"><i data-feather="printer" class="w-4 h-4 mr-2"></i>Print </a>
                                    <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md"><i data-feather="file-text" class="w-4 h-4 mr-2"></i>Export to Excel </a>
                                    <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out bg-white dark:bg-dark-1 hover:bg-gray-200 dark:hover:bg-dark-2 rounded-md"><i data-feather="file-text" class="w-4 h-4 mr-2"></i>Export to PDF </a>
                                </div>
                            </div>
                        </div>
                        <div class="hidden md:block mx-auto text-gray-600"></div>
                        <div class="w-full sm:w-auto mt-3 sm:mt-0 sm:ml-auto md:ml-0">
                            <div class="w-56 relative text-gray-700 dark:text-gray-300">
                                <input type="text" class="form-control w-56 box pr-10 placeholder-theme-8" placeholder="Buscar...">
                                <i class="w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-feather="search"></i>
                            </div>
                        </div>
                    </div>
                    <!-- BEGIN: Data List -->
                    <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                        <table class="table table-report -mt-2">
                            <thead>
                                <tr>
                                    <th class="text-center whitespace-nowrap">DESCRIPCION</th>
                                    <th class="text-center whitespace-nowrap">NOMBRE DEL PROYECTO</th>
                                    <th class="text-center whitespace-nowrap">PASANTES</th>
                                    <th class="text-center whitespace-nowrap">ESTADO</th>
                                    <th class="text-center whitespace-nowrap">ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="intro-x">
                                    <td class="text-center">Descripcion del labor</td>
                                    <td class="text-center">Nombre del proyecto</td>
                                    <td class="text-center">Pasantes conformados</td>
                                    <td class="w-40">
                                        <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactivo </div>
                                    </td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Editar </a>
                                            <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Eliminar</a>
                                        </div>
                                    </td>
                                </tr>   
                                <tr class="intro-x">
                                    <td class="text-center">Descripcion del labor</td>
                                    <td class="text-center">Nombre del proyecto</td>
                                    <td class="text-center">Pasantes conformados</td>
                                    <td class="w-40">
                                        <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactivo </div>
                                    </td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Editar </a>
                                            <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Eliminar</a>
                                        </div>
                                    </td>
                                </tr> 
                                <tr class="intro-x">
                                    <td class="text-center">Descripcion del labor</td>
                                    <td class="text-center">Nombre del proyecto</td>
                                    <td class="text-center">Pasantes conformados</td>
                                    <td class="w-40">
                                        <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactivo </div>
                                    </td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Editar </a>
                                            <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Eliminar</a>
                                        </div>
                                    </td>
                                </tr> 
                                <tr class="intro-x">
                                    <td class="text-center">Descripcion del labor</td>
                                    <td class="text-center">Nombre del proyecto</td>
                                    <td class="text-center">Pasantes conformados</td>
                                    <td class="w-40">
                                        <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactivo </div>
                                    </td>
                                    <td class="table-report__action w-56">
                                        <div class="flex justify-center items-center">
                                            <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Editar </a>
                                            <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Eliminar</a>
                                        </div>
                                    </td>
                                </tr> 
                            </tbody>
                        </table>
                    </div>
                    <!-- END: Data List -->
                    <!-- BEGIN: Pagination -->
                    <div class="intro-y col-span-12 flex flex-wrap sm:flex-row sm:flex-nowrap items-center">
                        <ul class="pagination">
                            <li>
                                <a class="pagination__link" href="#"><i class="w-4 h-4" data-feather="chevrons-left"></i></a>
                            </li>
                            <li>
                                <a class="pagination__link" href="#"><i class="w-4 h-4" data-feather="chevron-left"></i></a>
                            </li>
                            <li><a class="pagination__link" href="#">...</a> </li>
                            <li><a class="pagination__link" href="#">1</a> </li>
                            <li><a class="pagination__link pagination__link--active" href="#">2</a> </li>
                            <li><a class="pagination__link" href="#">3</a> </li>
                            <li><a class="pagination__link" href="#">...</a> </li>
                            <li>
                                <a class="pagination__link" href="#"><i class="w-4 h-4" data-feather="chevron-right"></i></a>
                            </li>
                            <li>
                                <a class="pagination__link" href="#"><i class="w-4 h-4" data-feather="chevrons-right"></i></a>
                            </li>
                        </ul>
                        <select class="w-20 form-select box mt-3 sm:mt-0">
                            <option>10</option>
                            <option>25</option>
                            <option>35</option>
                            <option>50</option>
                        </select>
                    </div>
                    <!-- END: Pagination -->
                </div>
                <!-- BEGIN: Delete Confirmation Modal -->
                <div id="delete-confirmation-modal" class="modal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body p-0">
                                <div class="p-5 text-center">
                                    <i data-feather="x-circle" class="w-16 h-16 text-theme-24 mx-auto mt-3"></i>
                                    <div class="text-3xl mt-5">Are you sure?</div>
                                    <div class="text-gray-600 mt-2">
                                        Do you really want to delete these records? 
                                           
                                                <br>
                                        This process cannot be undone.
                                       
                                    </div>
                                </div>
                                <div class="px-5 pb-8 text-center">
                                    <button type="button" data-dismiss="modal" class="btn btn-outline-secondary w-24 mr-1">Cancel</button>
                                    <button type="button" class="btn btn-danger w-24">Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Delete Confirmation Modal -->
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
