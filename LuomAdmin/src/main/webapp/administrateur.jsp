<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><base href="">
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

<jsp:include page="/HeaderAdmin" />


<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
<div class="toolbar min-h-70px" id="kt_toolbar">
							<!--begin::Container-->
							<div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
								<!--begin::Page title-->
								<div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
									<!--begin::Title-->
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Admins</h1>
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
										<li class="breadcrumb-item text-muted">Management Admin</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-dark">Admins</li>
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
							<div id="kt_content_container" class="container-xxl" style="margin-top: -127px;">
							
								<!--begin::Products-->
								<div class="card card-flush">
									<!--begin::Card header-->
									<div class="card-header align-items-center py-5 gap-2 gap-md-5">
										<!--begin::Card title-->
										<div class="card-title">
											<!--begin::Search-->
											<div class="d-flex align-items-center position-relative my-1">
												<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
												<span class="svg-icon svg-icon-1 position-absolute ms-4">
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
														<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="black" />
														<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="black" />
													</svg>
												</span>
												<!--end::Svg Icon-->
												<input type="text" data-kt-ecommerce-product-filter="search" class="form-control form-control-solid w-250px ps-14" placeholder="Chercher Admin" />
											</div>
											<!--end::Search-->
										</div>
										<!--end::Card title-->
										<!--begin::Card toolbar-->
										<div class="card-toolbar flex-row-fluid justify-content-end gap-5">
											<div class="w-100 mw-150px">
												<!--begin::Select2-->
												<select class="form-select form-select-solid" data-control="select2" data-hide-search="true" data-placeholder="Status" data-kt-ecommerce-product-filter="status">
													<option></option>
													<option value="all">All</option>
													<option value="Ac">Actif</option>
													<option value="Susp">Suspendu</option>
												</select>
												<!--end::Select2-->
											</div>
											<!--begin::Add product-->
											<a href="AddAdmin" class="btn btn-primary">Ajouter Admin</a>
											<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-light">Retour</a>
											<!--end::Add product-->
											
										</div>
										<!--end::Card toolbar-->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body pt-0">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_products_table">
											<!--begin::Table head-->
											<thead>
												<!--begin::Table row-->
												<tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
													<th>REF</th>
													<th class="min-w-100px">Administrateur</th>
													
													<th> </th>
													
													<th class="text-center min-w-100px">Mail</th>
													
													<th class="text-end min-w-100px">Role</th>
													
													<!-- <th class="text-end min-w-100px">Rating</th> -->
													<th> </th>
													<th class="text-end min-w-100px">Status</th>
													<th class="text-end min-w-70px">Actions</th>
													
												</tr>
												<!--end::Table row-->
											</thead>
											<!--end::Table head-->
											<!--begin::Table body-->
											<tbody class="fw-bold text-gray-600">
												<!--begin::Table row-->
												<!-- boucler ici -->
												<c:forEach var="p" items="${requestScope['ads']}" >
												<tr>
													<!--begin::Checkbox-->
													
													<!--end::Checkbox-->
													<!--begin::Category=-->
													
													<td class="text-end pe-0">
													<a href="VoirAdmin?id=${p.id }" class="text-gray-800 text-hover-primary fs-5 fw-bolder" data-kt-ecommerce-product-filter="${p.nom}"><span class="fw-bolder">${p.id}</span></a>
														
													</td>
													
													
													<td>
														<div class="d-flex align-items-center">
															<!--begin::Thumbnail-->
															
															<!--end::Thumbnail-->
															<div class="ms-5">
																<!--begin::Title-->
																<a href="VoirAdmin?id=${p.id }" class="text-gray-800 text-hover-primary fs-5 fw-bolder" data-kt-ecommerce-product-filter="${p.nom}">${p.nom}</a>
																<!--end::Title-->
															</div>
														</div>
													</td>
													<!--end::Category=-->
													<!--begin::SKU=-->
													
													
													<td class="text-end pe-7">
														<span class="fw-bolder"> </span>
													</td>
													
													<td>
													<a href="mailto:${p.email}" class="text-gray-800 text-hover-primary fs-5 fw-bolder">
														<span class="fw-bolder">${p.email}</span>
													</a>
													</td>
													
													<!--end::SKU=-->
													<!--begin::Qty=-->
													<td class="text-end pe-0">
														<span class="fw-bolder ms-3 align-items-center"><c:if test="${ p.id_privilege==1 }">SuperAdmin</c:if><c:if test="${ p.id_privilege==2 }">Admin</c:if><c:if test="${ p.id_privilege==3 }">Magasinier</c:if><c:if test="${ p.id_privilege==4 }">Service client</c:if></span>
													</td>
													<!-- faire le if -->
													<!--end::Qty=-->
													<!--begin::Price=-->
													
													<td class="text-end pe-0">
														<span class="fw-bolder text-dark"> </span>
													</td>
													
													<c:if test="${p.del==true}">
													<td class="text-end pe-0" data-order="Susp">
														<!--begin::Badges-->
														<div class="badge badge-light-danger">Suspendu</div>
														<!--end::Badges-->
													</td>
													</c:if>
													<c:if test="${p.del==false}">
													<td class="text-end pe-0" data-order="Ac">
														<!--begin::Badges-->
														<div class="badge badge-light-success">Actif</div>
														<!--end::Badges-->
														</td>
														</c:if>
													<!--end::Status=-->
													<!--begin::Action=-->
													
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
															
															<div class="menu-item px-3">
															<a href="VoirAdmin?id=${p.id }" class="menu-link px-3">Consulter</a>
															</div>
															
															<div class="menu-item px-3">
																<a href="ModifierAdmin?id=${ p.id }" class="menu-link px-3">Modifier</a>
															</div>
															<!--end::Menu item-->
															<!--begin::Menu item-->
															<c:if test="${sessionScope.ID!=p.id && p.id_privilege!=1}">
															<c:if test="${p.del==false}">
															<div class="menu-item px-3">
																<a href="Administrateur?idtohide=${ p.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Retirer</a>
															</div>
															</c:if></c:if>
															
															<c:if test="${sessionScope.ID==p.id}">
															<c:if test="${p.del==false}">
															<div class="menu-item px-3">
																<a href="Administrateur?idtohide=${ p.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Retirer</a>
															</div>
															</c:if></c:if>
															
															<c:if test="${p.del==true}">
															<div class="menu-item px-3">
																<a href="Administrateur?idtounhide=${ p.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Rétablir</a>
															</div>
															</c:if>
															
															<c:if test="${sessionScope.ID!=p.id && p.id_privilege!=1}">
															<div class="menu-item px-3">
																<a href="Administrateur?idtodel=${ p.id }" class="menu-link px-3">Supprimer</a>
															</div></c:if>
															
															<c:if test="${sessionScope.ID==p.id}">
															<div class="menu-item px-3">
																<a href="Administrateur?idtodel=${ p.id }" class="menu-link px-3">Supprimer</a>
															</div></c:if>
															
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
													
													<!--end::Action=-->
												</tr>
												</c:forEach>
												<!--end::Table row-->
												
											</tbody>
											<!--end::Table body-->
										</table>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
								</div>
								<!--end::Products-->
							</div>
							<!--end::Container-->
							
							
							
						</div>
						
						
						</div>


		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Vendors Javascript(used by this page)-->
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Page Vendors Javascript-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="assets/js/custom/apps/ecommerce/catalog/products.js"></script>
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>


</body>
</html>