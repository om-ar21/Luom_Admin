<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Commande"%> 
    <%@page import="model.CommandeDAO"%> 
    <%@page import="java.util.ArrayList"%>
    <%ArrayList<Commande> cmd = new ArrayList<Commande>();%> 
<!DOCTYPE html>
<html>
<head>
<base href="">
			<title>AdminLuom</title>
		<meta charset="utf-8" />
		<meta name="description" content="The most advanced Bootstrap Admin Theme on Themeforest trusted by 94,000 beginners and professionals. Multi-demo, Dark Mode, RTL support and complete React, Angular, Vue &amp; Laravel versions. Grab your copy now and get life-time updates for free." />
		<meta name="keywords" content="Metronic, bootstrap, bootstrap 5, Angular, VueJs, React, Laravel, admin themes, web design, figma, web development, free templates, free admin themes, bootstrap theme, bootstrap template, bootstrap dashboard, bootstrap dak mode, bootstrap button, bootstrap datepicker, bootstrap timepicker, fullcalendar, datatables, flaticon" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Metronic - Bootstrap 5 HTML, VueJS, React, Angular &amp; Laravel Admin Dashboard Theme" />
		<meta property="og:url" content="https://keenthemes.com/metronic" />
		<meta property="og:site_name" content="Keenthemes | Metronic" />
		<link rel="canonical" href="https://preview.keenthemes.com/metronic8" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Page Vendor Stylesheets(used by this page)-->
		<link href="assets/plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Page Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
</head>
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
<jsp:include page="/HeaderAdmin"/>

<div class="toolbar min-h-70px" id="kt_toolbar">
							<!--begin::Container-->
							<div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
								<!--begin::Page title-->
								<div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
									<!--begin::Title-->
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Commandes</h1>
									<!--end::Title-->
									<!--begin::Separator-->
									<span class="h-20px border-gray-300 border-start mx-4"></span>
									<!--end::Separator-->
									<!--begin::Breadcrumb-->
									<ul class="breadcrumb breadcrumb-separatorless fw-bold fs-7 my-1">
										<!--begin::Item-->
										<li class="breadcrumb-item text-muted">
											<a href="IndexAdmin" class="text-muted text-hover-primary">Accueil</a>
										</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-muted">Clients/Commandes</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-muted">Gestion Commandes</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-dark">Commandes</li>
										<!--end::Item-->
									</ul>
									<!--end::Breadcrumb-->
								</div>
								<!--end::Page title-->
								<!--begin::Actions-->
								<div class="d-flex align-items-center gap-2 gap-lg-3">
									<!--begin::Filter menu-->
									
									<!--end::Filter menu-->
									<!--begin::Secondary button-->
									<!--end::Secondary button-->
									<!--begin::Primary button-->
									
									<!--end::Primary button-->
								</div>
								<!--end::Actions-->
							</div>
							<!--end::Container-->
							
							
						</div>

<div class="wrapper post d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div id="kt_content_container" class="container-xxl" style="margin-top: -95px;">
							
								<!--begin::Products-->
								<div class="card card-flush">
									<!--begin::Card header-->
									<div class="card-header align-items-center py-5 gap-2 gap-md-5">
										<!--begin::Card title-->
										<!-- <div class="card-header border-0 pt-5"> -->
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label fw-bolder fs-3 mb-1">Commandes</span>
													
												</h3>
												
												<div class="d-flex justify-content-end mb-5 mt-5">
											<!--begin::Button-->
											<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-light">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											
											<!--end::Button-->
											</div>
												
											<!-- </div> -->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body pt-0">
										<!--begin::Table-->
										<div class="table-responsive">
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_products_table">
														<!--begin::Table head-->
														<thead>
															<tr class="fw-bolder text-muted">
																
																<th class="min-w-150px">REF</th>
																<th class="min-w-150px">Date de commande</th>
																<th class="min-w-150px">Total</th>
																<th class="min-w-150px">Utilisateur</th>
																<th class="min-w-150px">Adresse de livraison</th>
																<th class="min-w-150px text-end">Etat</th>
																<th class="min-w-100px text-end">Actions</th>
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody>
														 <% 
       		cmd=(ArrayList)request.getAttribute("cmd");
       		for( Commande cmds: cmd){
       		%>
															<tr>
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																		<a href="Detailcmd?idc=<%=cmds.getId() %>">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= cmds.getId() %></span>
																		</a>
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= cmds.getDatec() %></span>
																			
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= cmds.getTotal() %> €</span>
																			
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																		<a href="Userdetail?iduser=<%= cmds.getUser().getId() %>">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= cmds.getUser().getNom() %> <%= cmds.getUser().getPrenom() %></span>
																		</a>
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= cmds.getAdresse().getAdresse() %> <%= cmds.getAdresse().getCp() %> <%= cmds.getAdresse().getVille() %> <%= cmds.getAdresse().getPays() %> </span>
																			
																		</div>
																	</div>
																</td>
																<td class="text-end"><%if(cmds.isEtat()==false){ %><span class="badge badge-light-warning">En attente</span><%}else{ %><span class="badge badge-light-success">Validée</span><%} %></td>
																<td class="text-end">
														<a href="#" class="btn btn-sm btn-light btn-active-light-primary" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
														<span class="svg-icon svg-icon-5 m-0">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<path d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon--></a>
														<!--begin::Menu-->
														<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-bold fs-7 w-125px py-4" data-kt-menu="true">
															<!--begin::Menu item-->
															<%if(cmds.isEtat()==false){ %>
																	<div class="d-flex mb-3  justify-content-center flex-shrink-0 m-3">
																	<a href="Cmd?idcmd=<%=cmds.getId() %>" class=" btn  btn-sm btn-success btn-active-light-primary">Valider</a>
																		
																
																		
																	</div>
																	<%} %>
															<!--end::Menu item-->
															<!--begin::Menu item-->
															<div class=" d-flex justify-content-center flex-shrink-0 m-3">
																	<a href="Detailcmd?idc=<%=cmds.getId() %>" class=" btn btn-sm btn-light btn-active-light-primary">Voir plus</a>
																		
																
																		
																	</div>
																	<%if(cmds.isEtat()==false){ %>
																	
														    <div class=" d-flex justify-content-center flex-shrink-0 m-3">
																	<a href="Cmd?delete=<%=cmds.getId() %>" class=" btn btn-sm btn-danger btn-active-light-primary">Annuler commande</a>
																		
																
																		
															</div>
															<%} %>
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
																
							
															</tr>
												
															
															<%} %>
														
														</tbody>
														<!--end::Table body-->
													</table></div>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
								</div>
								<!--end::Products-->
							</div>
							<!--end::Container-->
							
							
							
						</div>


		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Vendors Javascript(used by this page)-->
		<script src="assets/plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Page Vendors Javascript-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>
</body>
</html>