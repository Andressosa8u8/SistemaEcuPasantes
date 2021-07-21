<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top_Menu.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views.Top_Menu" %>

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
<body>
    <form id="form1" runat="server">
        <div class="mobile-menu md:hidden">
            <div class="mobile-menu-bar">
                <a href="#" class="flex mr-auto">
                    <img alt="Icewall Tailwind HTML Admin Template" class="w-6" src="dist/images/logo.svg"/>
                </a>
                <a href="javascript:;" id="mobile-menu-toggler"> <i data-feather="bar-chart-2" class="w-8 h-8 text-white transform -rotate-90"></i> </a>
            </div>
            <ul class="border-t border-theme-2 py-5 hidden">
                <li>
                    <a href="javascript:;.html" class="menu menu--active">
                        <div class="menu__icon"><i data-feather="home"></i></div>
                        <div class="menu__title">Dashboard <i data-feather="chevron-down" class="menu__sub-icon transform rotate-180"></i></div>
                    </a>
                    <ul class="menu__sub-open">
                        <li>
                            <a href="prueba.aspx" class="menu menu--active">
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
                            <a href="prueba.aspx" class="menu menu--active">
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
        </div>
        <!-- END: Top Bar -->
        <!-- BEGIN: Top Menu -->
        <nav class="top-nav">
            <ul>
                            <li>
                                <a href="javascript:;.html" class="top-menu top-menu--active">
                        <div class="top-menu__icon"> <i data-feather="home"></i> </div>
                        <div class="top-menu__title"> Dashboard <i data-feather="chevron-down" class="top-menu__sub-icon"></i> </div>
                    </a>
                                <ul class="top-menu__sub-open">
                                    <li>
                                        <a href="prueba.aspx" class="top-menu">
                                            <div class="top-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="top-menu__title">Overview 1 </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="top-menu">
                                    <div class="top-menu__icon"><i data-feather="box"></i></div>
                                    <div class="top-menu__title"> Menus <i data-feather="chevron-down" class="top-menu__sub-icon"></i> </div>
                                </a>
                                <ul class="">
                                    <li>
                                        <a href="prueba.aspx" class="top-menu">
                                            <div class="top-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="top-menu__title">Side Menu </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Top_Menu.aspx" class="top-menu">
                                            <div class="top-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="top-menu__title">Top Menu </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="side-nav__devider my-6"></li>
                            <li>
                                <a href="javascript:;" class="top-menu">
                                    <div class="top-menu__icon"><i data-feather="edit"></i></div>
                                    <div class="top-menu__title"> Crud <i data-feather="chevron-down" class="top-menu__sub-icon"></i> </div>
                                </a>
                                <ul class="">
                                    <li>
                                        <a href="Crud_DataList.aspx" class="top-menu">
                                            <div class="top-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="top-menu__title">Lista de Datos </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Crud_Formularios.aspx" class="top-menu">
                                            <div class="top-menu__icon"><i data-feather="activity"></i></div>
                                            <div class="top-menu__title">Formularios </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>                            
                        </ul>
        </nav>
        <!-- END: Top Menu -->
        <!-- BEGIN: Content -->
        <div class="wrapper wrapper--top-nav">
            <div class="wrapper-box">
                <!-- BEGIN: Content -->
                <div class="content">
                        <div class="grid grid-cols-12 gap-6">
                            <div class="col-span-12 xxl:col-span-9">
                                <div class="grid grid-cols-12 gap-6">
                                    <!-- BEGIN: Weekly Top Products -->
                                    <div class="col-span-12 mt-6">
                                        <div class="intro-y block sm:flex items-center h-10">
                                            <h2 class="text-lg font-medium truncate mr-5">Weekly Top Products
                                            </h2>
                                        </div>
                                        <div class="intro-y overflow-auto lg:overflow-visible mt-8 sm:mt-0">
                                            <table class="table table-report sm:mt-2">
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
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-14.jpg" title="Uploaded at 25 April 2022">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-2.jpg" title="Uploaded at 6 June 2022">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-4.jpg" title="Uploaded at 28 August 2022">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="font-medium whitespace-nowrap">Nikon Z6</a>
                                                            <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Photography</div>
                                                        </td>
                                                        <td class="text-center">142</td>
                                                        <td class="w-40">
                                                            <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                                        </td>
                                                        <td class="table-report__action w-56">
                                                            <div class="flex justify-center items-center">
                                                                <a class="flex items-center mr-3" href=""><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                                <a class="flex items-center text-theme-24" href=""><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr class="intro-x">
                                                        <td class="w-40">
                                                            <div class="flex">
                                                                <div class="w-10 h-10 image-fit zoom-in">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-12.jpg" title="Uploaded at 23 June 2021">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-7.jpg" title="Uploaded at 29 July 2020">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-3.jpg" title="Uploaded at 12 October 2022">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="font-medium whitespace-nowrap">Nike Tanjun</a>
                                                            <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Sport &amp; Outdoor</div>
                                                        </td>
                                                        <td class="text-center">50</td>
                                                        <td class="w-40">
                                                            <div class="flex items-center justify-center text-theme-24"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Active </div>
                                                        </td>
                                                        <td class="table-report__action w-56">
                                                            <div class="flex justify-center items-center">
                                                                <a class="flex items-center mr-3" href=""><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                                <a class="flex items-center text-theme-24" href=""><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr class="intro-x">
                                                        <td class="w-40">
                                                            <div class="flex">
                                                                <div class="w-10 h-10 image-fit zoom-in">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-15.jpg" title="Uploaded at 28 August 2022">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-10.jpg" title="Uploaded at 28 March 2022">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-11.jpg" title="Uploaded at 25 January 2021">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="font-medium whitespace-nowrap">Samsung Q90 QLED TV</a>
                                                            <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                                        </td>
                                                        <td class="text-center">50</td>
                                                        <td class="w-40">
                                                            <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactive </div>
                                                        </td>
                                                        <td class="table-report__action w-56">
                                                            <div class="flex justify-center items-center">
                                                                <a class="flex items-center mr-3" href=""><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                                <a class="flex items-center text-theme-24" href=""><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
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
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-7.jpg" title="Uploaded at 8 November 2021">
                                                                </div>
                                                                <div class="w-10 h-10 image-fit zoom-in -ml-5">
                                                                    <img alt="Icewall Tailwind HTML Admin Template" class="tooltip rounded-full" src="../Template Principal/dist/images/preview-8.jpg" title="Uploaded at 12 October 2020">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <a href="#" class="font-medium whitespace-nowrap">Sony Master Series A9G</a>
                                                            <div class="text-gray-600 text-xs whitespace-nowrap mt-0.5">Electronic</div>
                                                        </td>
                                                        <td class="text-center">110</td>
                                                        <td class="w-40">
                                                            <div class="flex items-center justify-center text-theme-10"><i data-feather="check-square" class="w-4 h-4 mr-2"></i>Inactive </div>
                                                        </td>
                                                        <td class="table-report__action w-56">
                                                            <div class="flex justify-center items-center">
                                                                <a class="flex items-center mr-3" href=""><i data-feather="check-square" class="w-4 h-4 mr-1"></i>Edit </a>
                                                                <a class="flex items-center text-theme-24" href=""><i data-feather="trash-2" class="w-4 h-4 mr-1"></i>Delete </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="intro-y flex flex-wrap sm:flex-row sm:flex-nowrap items-center mt-3">
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
                                    </div>
                                    <!-- END: Weekly Top Products -->
                                </div>
                            </div>
                            <div class="col-span-12 xxl:col-span-3">
                                <div class="xxl:border-l border-theme-25 -mb-10 pb-10">
                                    <div class="xxl:pl-6 grid grid-cols-12 gap-6">
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
                    </div>
                <!-- END: Content -->
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
