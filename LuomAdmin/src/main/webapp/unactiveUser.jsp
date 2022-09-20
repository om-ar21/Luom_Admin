<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.User"%> 
    <%@page import="model.UserDAO"%> 
    <%@page import="java.util.ArrayList"%>
    <%ArrayList<User> user = new ArrayList<User>();%> 
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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Comptes désactivés</h1>
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
										
										<li class="breadcrumb-item text-muted">Clients</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-dark">Comptes désactivés</li>
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
							<div id="kt_content_container" class="container-xxl" style="margin-top: -107px;">
							
								<!--begin::Products-->
								<div class="card card-flush">
									<!--begin::Card header-->
									<div class="card-header align-items-center py-5 gap-2 gap-md-5">
										<!--begin::Card title-->
										<div class="card-title">
											<h3 class="card-title align-items-start flex-column">
													<span class="card-label fw-bolder fs-3 mb-1">Comptes désactivés</span>
													
												</h3>
												
										</div>
										<!--end::Card title-->
										<!--begin::Card toolbar-->
										<div class="card-toolbar flex-row-fluid justify-content-end gap-5">
											
											<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-light">Retour</a>
											<!--end::Add product-->
										</div>
										<!--end::Card toolbar-->
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
																
																<th class="min-w-150px">REF - Nom d'utilisateur</th>
																
																<th class="min-w-150px">Email</th>
																<th class="min-w-150px text-center">Rétablir</th>
																<th class="min-w-150px text-center">Consulter</th>
																<th class="min-w-100px text-end">Actions</th>
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody>
														
														<tr class="m-5">
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																		<a href="Userdetail?iduser=${guest.getId() }">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6">Historique clients supprimés</span></a>
																			
																		</div>
																	</div>
																</td>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6">None</span>
																		
																		</div>
																	</div>
																</td>
															
																<td class="text-center">
																	
																</td>
																
																<td class="text-center">
																	<a href="Userdetail?iduser=${guest.getId() }" class="btn btn-sm btn-light btn-active-light-primary">Voir plus</a>
																		
																</td>
																<td></td>
															</tr>
														
														
														 <% 
       		user=(ArrayList)request.getAttribute("user");
       		for( User users:user){
       		%>
															<tr class="m-5">
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																		<a href="Userdetail?iduser=<%=users.getId() %>">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%=users.getId() %> - <%= users.getNom() %></span>
																		</a>
																		</div>
																	</div>
																</td>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																		<a href="mailto:<%= users.getEmail() %>">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= users.getEmail() %></span>
																		</a>
																		</div>
																	</div>
																</td>
															
																<td class="text-center">
																	<a href="UnactiveUser?iduser=<%=users.getId() %>" class="btn btn-sm btn-light btn-active-light-primary"> + </a>
																</td>
																
																<td class="text-center">
																	<a href="Userdetail?iduser=<%=users.getId() %>" class="btn btn-sm btn-light btn-active-light-primary">Voir plus</a>
																		
																</td>
																
																<td>
																	<div class="d-flex justify-content-end flex-shrink-0">
																	<a href="UnactiveUser?del=<%=users.getId() %>" class="btn btn-sm btn-light btn-active-light-primary">Supprimer</a>
																		
																
																		
																	</div>
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