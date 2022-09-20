<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Souscategorie"%> 
    <%@page import="model.SouscategorieDAO"%> 
    <%@page import="java.util.ArrayList"%>
    <%ArrayList<Souscategorie> scat = new ArrayList<Souscategorie>();%> 
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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Sous-catégories</h1>
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
										
										<li class="breadcrumb-item text-muted">eCommerce</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-dark">Sous-catégories</li>
										
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

<div class="wrapper post d-flex justify-content-center flex-column-fluid" id="kt_post">
<div class="row" style="margin-top: -95px;">
<div class="col-12">
										<!--begin::Tables Widget 9-->
										<div class="card card-xl-stretch mb-5 mb-xl-8">
											<!--begin::Header-->
											<div class="card-header border-0 pt-5">
												<h3 class="card-title align-items-start flex-column">
													<span class="card-label fw-bolder fs-3 mb-1">Sous-catégories</span>
													
												</h3>
												<div class="d-flex justify-content-end mb-5 mt-5">
											<!--begin::Button-->
											<a href="AddScat" class="btn btn-primary me-5">Ajouter</a>
											<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-light">Retour</a>
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
																
																<th class="min-w-150px">Titre</th>
																
																<th class="min-w-100px text-end">Catégorie</th>
																<th class="min-w-100px text-end">Actions</th>
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody>
														
														<tr>
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6">${bf.getTitre()}</span>
																			
																		</div>
																	</div>
																</td>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6">${bf.getCategorie().getTitre()}</span>
																			
																		</div>
																	</div>
																</td>
															
																<td>
																	<div class="d-flex justify-content-end flex-shrink-0">
																		
																		<a href="ModifierScat?idscat=${bf.getId()}" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
																			<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																			<span class="svg-icon svg-icon-3">
																				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																					<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																					<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																				</svg>
																			</span>
																			<!--end::Svg Icon-->
																		</a>
																		
                                                                        
																	</div>
																</td>
															</tr>
														 <% 
														 
														 
														 
       		scat=(ArrayList)request.getAttribute("scat");
       		for( Souscategorie scats:scat){
       		%>
															<tr>
																
																<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= scats.getTitre() %></span>
																			
																		</div>
																	</div>
																</td>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="d-flex justify-content-start flex-column">
																			<span  class="text-dark fw-bolder text-hover-primary fs-6"><%= scats.getCategorie().getTitre() %></span>
																			
																		</div>
																	</div>
																</td>
															
																<td>
																	<div class="d-flex justify-content-end flex-shrink-0">
																		
																		<a href="ModifierScat?idscat=<%=scats.getId() %>" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1">
																			<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																			<span class="svg-icon svg-icon-3">
																				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																					<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																					<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																				</svg>
																			</span>
																			<!--end::Svg Icon-->
																		</a>
																		<a href="SousCat?delete=<%= scats.getId() %>" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm">
																			<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
																			<span class="svg-icon svg-icon-3">
																				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																					<path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black" />
																					<path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black" />
																					<path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black" />
																				</svg>
																			</span>
																			<!--end::Svg Icon-->
																		</a>
																		
																		<%if(scats.isDel()==false){ %>
                                                                        <a href="SousCat?hide=<%=scats.getId() %>" class="mx-2  btn btn-sm btn-light btn-active-light-primary">Masquer</a>
                                                                        <% }else{ %>
                                                                        <a href="SousCat?unhide=<%=scats.getId() %>" class="mx-2  btn btn-sm btn-success btn-active-light-primary">Montrer</a>
                                                                        <%} %>
                                                                        
																	</div>
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