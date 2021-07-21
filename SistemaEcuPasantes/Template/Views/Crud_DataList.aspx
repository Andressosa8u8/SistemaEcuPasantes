<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud_DataList.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Crud_DataList" %>

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
                        <h2 class="intro-y text-lg font-medium mt-10">Data List Layout
                    </h2>
                        <div class="grid grid-cols-12 gap-6 mt-5">
                            <div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-2">
                                <button class="btn btn-primary shadow-md mr-2">Add New Product</button>
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
                                <div class="hidden md:block mx-auto text-gray-600">Showing 1 to 10 of 150 entries</div>
                                <div class="w-full sm:w-auto mt-3 sm:mt-0 sm:ml-auto md:ml-0">
                                    <div class="w-56 relative text-gray-700 dark:text-gray-300">
                                        <input type="text" class="form-control w-56 box pr-10 placeholder-theme-8" placeholder="Search...">
                                        <i class="w-4 h-4 absolute my-auto inset-y-0 mr-3 right-0" data-feather="search"></i>
                                    </div>
                                </div>
                            </div>
                            <!-- BEGIN: Data List -->
                            <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                                <table class="table table-report -mt-2">
                                    <thead>
                                        <tr>
                                            <th class="whitespace-nowrap">IMAGES</th>
                                            <th class="whitespace-nowrap">PRODUCT NAME</th>
                                            <th class="text-center whitespace-nowrap">STOCK</th>
                                            <th class="text-center whitespace-nowrap">STATUS</th>
                                            <th class="text-center whitespace-nowrap">ACTIONS</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-10.jpg" title="Uploaded at 5 September 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-2.jpg" title="Uploaded at 5 September 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-2.jpg" title="Uploaded at 5 September 2022">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Sony A7 III</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Photography</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactive </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-2.jpg" title="Uploaded at 16 January 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-5.jpg" title="Uploaded at 16 January 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-6.jpg" title="Uploaded at 16 January 2022">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Sony Master Series A9G</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactive </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-13.jpg" title="Uploaded at 5 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-8.jpg" title="Uploaded at 5 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-7.jpg" title="Uploaded at 5 October 2020">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Nikon Z6</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Photography</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-4.jpg" title="Uploaded at 27 May 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-9.jpg" title="Uploaded at 27 May 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-11.jpg" title="Uploaded at 27 May 2022">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Samsung Q90 QLED TV</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                            </td>
                                            <td class="text-center">72</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-9.jpg" title="Uploaded at 12 May 2021">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-1.jpg" title="Uploaded at 12 May 2021">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-6.jpg" title="Uploaded at 12 May 2021">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Apple MacBook Pro 13</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">PC &amp; Laptop</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-8.jpg" title="Uploaded at 20 October 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-13.jpg" title="Uploaded at 20 October 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-4.jpg" title="Uploaded at 20 October 2022">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Samsung Q90 QLED TV</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-11.jpg" title="Uploaded at 22 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-6.jpg" title="Uploaded at 22 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-9.jpg" title="Uploaded at 22 October 2020">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Nikon Z6</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Photography</div>
                                            </td>
                                            <td class="text-center">93</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-11.jpg" title="Uploaded at 1 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-6.jpg" title="Uploaded at 1 October 2020">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-2.jpg" title="Uploaded at 1 October 2020">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" class="font-medium whitespace-nowrap">Nike Tanjun</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Sport &amp; Outdoor</div>
                                            </td>
                                            <td class="text-center">120</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="intro-x">
                                            <td class="w-40">
                                                <div class="flex">
                                                    <div class="w-10 h-10 image-fit zoom-in">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-14.jpg" title="Uploaded at 28 February 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-8.jpg" title="Uploaded at 28 February 2022">
                                                    </div>
                                                    <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                        <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-4.jpg" title="Uploaded at 28 February 2022">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="" class="font-medium whitespace-nowrap">Samsung Q90 QLED TV</a>
                                                <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                            </td>
                                            <td class="text-center">50</td>
                                            <td class="w-40">
                                                <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                            </td>
                                            <td class="table-report__action w-56">
                                                <div class="flex justify-center items-center">
                                                    <a class="flex items-center mr-3" href="javascript:;"><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                    <a class="flex items-center text-theme-24" href="javascript:;" data-toggle="modal" data-target="#delete-confirmation-modal"><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
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





