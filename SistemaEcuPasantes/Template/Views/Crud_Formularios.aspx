<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud_Formularios.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Crud_Formularios" %>

<!DOCTYPE html>

<html lang="en" class="light">
<head>
    <meta charset="utf-8">
    <link href="../Template Principal/dist/images/logo.svg" rel="shortcut icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Icewall admin is super flexible, powerful, clean & modern responsive tailwind admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Icewall Admin Template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="LEFT4CODE">
    <title>Dashboard - Icewall - Tailwind HTML Admin Template</title>
    <link rel="stylesheet" href="../Template Principal/dist/css/app.css" />
</head>
<body class="main">
    <form runat="server">
        <div class="mobile-menu md:hidden">
            <div class="mobile-menu-bar">
                <a href="#" class="flex mr-auto">
                    <img alt="Icewall Tailwind HTML Admin Template" class="w-6" src="../Template Principal/dist/images/logo.svg">
                </a>
                <a href="javascript:;" id="mobile-menu-toggler"><i data-feather="bar-chart-2" class="w-8 h-8 text-white transform -rotate-90"></i></a>
            </div>
            <ul class="border-t border-theme-2 py-5 hidden">
                <li>
                    <a href="javascript:;.html" class="menu menu--active">
                        <div class="menu__icon"><i data-feather="home"></i></div>
                        <div class="menu__title">Dashboard <i data-feather="chevron-down" class="menu__sub-icon transform rotate-180"></i></div>
                    </a>
                    <ul class="menu__sub-open">
                        <li>
                            <a href="../../index.aspx" class="menu menu--active">
                                <div class="menu__icon"><i data-feather="activity"></i></div>
                                <div class="menu__title">Overview 1 </div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" class="menu">
                        <div class="menu__icon"><i data-feather="box"></i></div>
                        <div class="menu__title">Menus <i data-feather="chevron-down" class="menu__sub-icon "></i></div>
                    </a>
                    <ul class="">
                        <li>
                            <a href="../../index.aspx" class="menu menu--active">
                                <div class="menu__icon"><i data-feather="activity"></i></div>
                                <div class="menu__title">Side Menu </div>
                            </a>
                        </li>
                        <li>
                            <a href="Top_Menu.aspx" class="menu menu--active">
                                <div class="menu__icon"><i data-feather="activity"></i></div>
                                <div class="menu__title">Top Menu </div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu__devider my-6"></li>
                <li>
                    <a href="javascript:;" class="menu">
                        <div class="menu__icon"><i data-feather="edit"></i></div>
                        <div class="menu__title">Crud <i data-feather="chevron-down" class="menu__sub-icon "></i></div>
                    </a>
                    <ul class="">
                        <li>
                            <a href="Crud_DataList.aspx" class="menu">
                                <div class="menu__icon"><i data-feather="activity"></i></div>
                                <div class="menu__title">Lista Datos </div>
                            </a>
                        </li>
                        <li>
                            <a href="Crud_Formularios.aspx" class="menu">
                                <div class="menu__icon"><i data-feather="activity"></i></div>
                                <div class="menu__title">Formularios </div>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="top-bar-boxed border-b border-theme-2 -mt-7 md:-mt-5 -mx-3 sm:-mx-8 px-3 sm:px-8 md:pt-0 mb-12">
            <div class="h-full flex items-center">
                <a href="#" class="-intro-x hidden md:flex">
                    <img alt="Icewall Tailwind HTML Admin Template" class="w-6" src="../Template Principal/dist/images/logo.svg">
                    <span class="text-white text-lg ml-3">Ice<span class="font-medium">wall</span> </span>
                </a>
                <div class="-intro-x breadcrumb mr-auto"><a href="#">Application</a> <i data-feather="chevron-right" class="breadcrumb__icon"></i><a href="#" class="breadcrumb--active">Dashboard</a> </div>
                <div class="intro-x relative mr-3 sm:mr-6">
                    <div class="search hidden sm:block">
                        <input type="text" class="search__input form-control dark:bg-dark-1 border-transparent placeholder-theme-8" placeholder="Search...">
                        <i data-feather="search" class="search__icon dark:text-gray-300"></i>
                    </div>
                </div>

                <div class="intro-x dropdown w-8 h-8">
                    <div class="dropdown-toggle w-8 h-8 rounded-full overflow-hidden shadow-lg image-fit zoom-in scale-110" role="button" aria-expanded="false">
                        <img alt="Icewall Tailwind HTML Admin Template" src="../Template Principal/dist/images/profile-10.jpg">
                    </div>
                    <div class="dropdown-menu w-56">
                        <div class="dropdown-menu__content box bg-theme-11 dark:bg-dark-6 text-white">
                            <div class="p-4 border-b border-theme-12 dark:border-dark-3">
                                <div class="font-medium">Morgan Freeman</div>
                                <div class="text-xs text-theme-13 mt-0.5 dark:text-gray-600">Frontend Engineer</div>
                            </div>
                            <div class="p-2">
                                <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out hover:bg-theme-1 dark:hover:bg-dark-3 rounded-md"><i data-feather="user" class="w-4 h-4 mr-2"></i>Profile </a>
                                <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out hover:bg-theme-1 dark:hover:bg-dark-3 rounded-md"><i data-feather="edit" class="w-4 h-4 mr-2"></i>Add Account </a>
                                <a href="#" class="flex items-center block p-2 transition duration-300 ease-in-out hover:bg-theme-1 dark:hover:bg-dark-3 rounded-md"><i data-feather="lock" class="w-4 h-4 mr-2"></i>Reset Password </a>
                                <div class="p-2 border-t border-theme-12 dark:border-dark-3">
                                    <a href="../../index.aspx" class="flex items-center block p-2 transition duration-300 ease-in-out hover:bg-theme-1 dark:hover:bg-dark-3 rounded-md"><i data-feather="toggle-right" class="w-4 h-4 mr-2"></i>Logout </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: Top Bar -->
            <div class="wrapper">
                <div class="wrapper-box">
                    <!-- BEGIN: Side Menu -->
                    <nav class="side-nav">
                        <ul>
                            <li>
                                <a href="javascript:;.html" class="side-menu side-menu--active">
                                    <div class="side-menu__icon"><i data-feather="home"></i></div>
                                    <div class="side-menu__title">
                                        Dashboard 
                                   
                                        <div class="side-menu__sub-icon transform rotate-180"><i data-feather="chevron-down"></i></div>
                                    </div>
                                </a>
                                <ul class="side-menu__sub-open">
                                    <li>
                                        <a href="prueba.aspx" class="side-menu side-menu--active">
                                            <div class="side-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="side-menu__title">Overview 1 </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="side-menu">
                                    <div class="side-menu__icon"><i data-feather="box"></i></div>
                                    <div class="side-menu__title">
                                        Menus                                   
                                        <div class="side-menu__sub-icon "><i data-feather="chevron-down"></i></div>
                                    </div>
                                </a>
                                <ul class="">
                                    <li>
                                        <a href="prueba.aspx" class="side-menu">
                                            <div class="side-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="side-menu__title">Side Menu </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Top_Menu.aspx" class="side-menu">
                                            <div class="side-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="side-menu__title">Top Menu </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="side-nav__devider my-6"></li>
                            <li>
                                <a href="javascript:;" class="side-menu">
                                    <div class="side-menu__icon"><i data-feather="edit"></i></div>
                                    <div class="side-menu__title">
                                        Crud 
                                   
                                        <div class="side-menu__sub-icon "><i data-feather="chevron-down"></i></div>
                                    </div>
                                </a>
                                <ul class="">
                                    <li>
                                        <a href="Crud_DataList.aspx" class="side-menu">
                                            <div class="side-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="side-menu__title">Lista de Datos </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Crud_Formularios.aspx" class="side-menu">
                                            <div class="side-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="side-menu__title">Formularios </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- END: Side Menu -->
                    <!-- BEGIN: Content -->
                <div class="content">
                    <div class="intro-y flex items-center mt-8">
                        <h2 class="text-lg font-medium mr-auto">
                            Form Layout
                        </h2>
                    </div>
                    <div class="grid grid-cols-12 gap-6 mt-5">
                        <div class="intro-y col-span-12 lg:col-span-6">
                            <!-- BEGIN: Form Layout -->
                            <div class="intro-y box p-5">
                                <div>
                                    <label for="crud-form-1" class="form-label">Product Name</label>
                                    <input id="crud-form-1" type="text" class="form-control w-full" placeholder="Input text">
                                </div>
                                <div class="mt-3">
                                    <label for="crud-form-2" class="form-label">Category</label>
                                    <select data-placeholder="Select your favorite actors" class="tom-select w-full" id="crud-form-2" multiple>
                                        <option value="1" selected>Sport & Outdoor</option>
                                        <option value="2">PC & Laptop</option>
                                        <option value="3" selected>Smartphone & Tablet</option>
                                        <option value="4">Photography</option>
                                    </select>
                                </div>
                                <div class="mt-3">
                                    <label for="crud-form-3" class="form-label">Quantity</label>
                                    <div class="input-group">
                                        <input id="crud-form-3" type="text" class="form-control" placeholder="Quantity" aria-describedby="input-group-1">
                                        <div id="input-group-1" class="input-group-text">pcs</div>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <label for="crud-form-4" class="form-label">Weight</label>
                                    <div class="input-group">
                                        <input id="crud-form-4" type="text" class="form-control" placeholder="Weight" aria-describedby="input-group-2">
                                        <div id="input-group-2" class="input-group-text">grams</div>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <label class="form-label">Price</label>
                                    <div class="sm:grid grid-cols-3 gap-2">
                                        <div class="input-group">
                                            <div id="input-group-3" class="input-group-text">Unit</div>
                                            <input type="text" class="form-control" placeholder="Unit" aria-describedby="input-group-3">
                                        </div>
                                        <div class="input-group mt-2 sm:mt-0">
                                            <div id="input-group-4" class="input-group-text">Wholesale</div>
                                            <input type="text" class="form-control" placeholder="Wholesale" aria-describedby="input-group-4">
                                        </div>
                                        <div class="input-group mt-2 sm:mt-0">
                                            <div id="input-group-5" class="input-group-text">Bulk</div>
                                            <input type="text" class="form-control" placeholder="Bulk" aria-describedby="input-group-5">
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <label>Active Status</label>
                                    <div class="mt-2">
                                        <input type="checkbox" class="form-check-switch">
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <label>Description</label>
                                    <div class="mt-2">
                                        <div data-simple-toolbar="true" class="editor">
                                            <p>Content of the editor.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-right mt-5">
                                    <button type="button" class="btn btn-outline-secondary w-24 mr-1">Cancel</button>
                                    <button type="button" class="btn btn-primary w-24">Save</button>
                                </div>
                            </div>
                            <!-- END: Form Layout -->
                        </div>
                    </div>
                </div>
                <!-- END: Content -->
                </div>
            </div>
        </div>
    </form>
    <!-- BEGIN: JS Assets-->
        <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=["your-google-map-api"]&libraries=places"></script>
        <script src="../Template Principal/dist/js/app.js"></script>
        <!-- END: JS Assets-->
    </body>
</html>
