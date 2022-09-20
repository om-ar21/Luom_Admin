<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Detail"%> 
    <%@page import="model.DetailDAO"%> 
    <%@page import="java.util.ArrayList"%>
    <%ArrayList<Detail> dc = new ArrayList<Detail>();%> 
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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Détails commande</h1>
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
										
										<li class="breadcrumb-item text-muted"><a href="Cmd" class="text-muted text-hover-primary">Commandes</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-dark">Détails</li>
										
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

<div class="wrapper pt-0 post d-flex justify-content-center flex-column-fluid" id="kt_post">
<div class="row">
<div class="col-12">
										<!--begin::Tables Widget 9-->
										<div class="card card-xl-stretch mb-5 mb-xl-8">
											<!--begin::Header-->
											<div class="card-header border-0 pt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label fw-bolder fs-3 mb-1">Détails commande </span>
													
												</h3>
												<div class="d-flex justify-content-end ">
											<!--begin::Button-->
											<a href="Cmd" id="kt_ecommerce_add_product_cancel" class="btn btn-light m-5  ">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											
											<!--end::Button-->
										</div>
											</div>
											<!--end::Header-->
											<!--begin::Body-->
											<div class="card-body py-3">
												<!--begin::Table container-->
												<div class="table-responsive">
													<!--begin::Table-->
													<table class="table table-row-dashed table-row-gray-300 align-middle gs-0 gy-4">
														<!--begin::Table head-->
														<thead>
															<tr class="fw-bolder text-muted">
																<th class="min-w-150px">REF</th>
																<th class="min-w-150px">Image</th>
																<th class="min-w-150px">Produit</th>
																<th class="min-w-150px">Prix</th>
																<th class="min-w-150px">Quantité</th>
																<th class="min-w-150px">Action</th>
																
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody>
														 <% 
       		dc=(ArrayList)request.getAttribute("dc");
       		for( Detail detail: dc){
       		%>
															<tr>
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= detail.cibleprod().getId() %></span>
																			
																		</div>
																	</div>
																</td>
															<td>
																	<div class="d-flex align-items-center">
																		
																		
																		
																			<img class="rounded" alt="image" src="<%= detail.cibleprod().getImg() %>" width="100px" />
																			
																		
																	</div>
																	</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= detail.cibleprod().getTitre() %></span>
																			
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= detail.cibleprod().getPrix() %> €</span>
																			
																		</div>
																	</div>
																</td>
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= detail.getQte() %></span>
																			
																		</div>
																	</div>
																</td>
																
																<td>
																<% if(detail.cmd().isEtat()==true){ %>
																<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark  fs-6">commande validée, opération impossible</span>
																			
																		</div>
																	</div>
																	<%}else{ %>
																	
																
															<%if(detail.isDel()==false){ %>
																		<a href="Detailcmd?idc=<%= detail.getId_commandes() %>&del=<%=detail.getId()%>" class=" btn btn-sm btn-danger btn-active-light-primary">Retirer de la commande</a>
																		<%}else{ %>
																		<a href="Detailcmd?idc=<%= detail.getId_commandes() %>&add=<%=detail.getId()%>" class=" btn btn-sm btn-success btn-active-light-primary">Remettre à la commande</a>
																		<%} } %>
																</td>
															
															</tr>
												
															
															<%} %>
														
														</tbody>
														<!--end::Table body-->
													</table>
													<!--end::Table-->
												</div>
												<!--end::Table container-->
											</div>
												
											<!--begin::Body-->
										</div>
										<!--end::Tables Widget 9-->
									</div>
									</div>
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