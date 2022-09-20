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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Boîte de réception</h1>
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
										
										<li class="breadcrumb-item text-muted"><!-- 
											<a href="../../demo1/dist/index.html" class="text-muted text-hover-primary"> -->
											Messagerie
											<!-- </a> -->
										</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-dark">Messages</li>
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
								<!--begin::Inbox App - Messages -->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="flex-column flex-lg-row-auto w-100 w-lg-275px mb-10 mb-lg-0">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="true" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '0px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="150px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												<!--begin::Button-->
												<!--<a href="../../demo1/dist/apps/inbox/compose.html" class="btn btn-primary text-uppercase w-100 mb-10">New Message</a>-->
												<!--end::Button-->
												<!--begin::Menu-->
												<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary mb-10">
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Inbox-->
														<a href="Messagerie">
														<span class="menu-link active">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/communication/com010.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																		<path d="M6 8.725C6 8.125 6.4 7.725 7 7.725H14L18 11.725V12.925L22 9.725L12.6 2.225C12.2 1.925 11.7 1.925 11.4 2.225L2 9.725L6 12.925V8.725Z" fill="black" />
																		<path opacity="0.3" d="M22 9.72498V20.725C22 21.325 21.6 21.725 21 21.725H3C2.4 21.725 2 21.325 2 20.725V9.72498L11.4 17.225C11.8 17.525 12.3 17.525 12.6 17.225L22 9.72498ZM15 11.725H18L14 7.72498V10.725C14 11.325 14.4 11.725 15 11.725Z" fill="black" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															
															<span class="menu-title fw-bolder">Boite de réception</span>
															<c:if test="${nm!=0 }"><span class="badge badge-light-success">${nm }</span></c:if>
															
														</span></a>
														<!--end::Inbox-->
													</div>
													<!--end::Menu item-->
													<!--begin::Menu item-->
													
													<!--end::Menu item-->
													<!--begin::Menu item-->
													
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<!--<div class="menu-item mb-3">
														<span class="menu-link">
															<span class="menu-icon">
																<span class="svg-icon svg-icon-2 me-3">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																		<path d="M15.43 8.56949L10.744 15.1395C10.6422 15.282 10.5804 15.4492 10.5651 15.6236C10.5498 15.7981 10.5815 15.9734 10.657 16.1315L13.194 21.4425C13.2737 21.6097 13.3991 21.751 13.5557 21.8499C13.7123 21.9488 13.8938 22.0014 14.079 22.0015H14.117C14.3087 21.9941 14.4941 21.9307 14.6502 21.8191C14.8062 21.7075 14.9261 21.5526 14.995 21.3735L21.933 3.33649C22.0011 3.15918 22.0164 2.96594 21.977 2.78013C21.9376 2.59432 21.8452 2.4239 21.711 2.28949L15.43 8.56949Z" fill="black" />
																		<path opacity="0.3" d="M20.664 2.06648L2.62602 9.00148C2.44768 9.07085 2.29348 9.19082 2.1824 9.34663C2.07131 9.50244 2.00818 9.68731 2.00074 9.87853C1.99331 10.0697 2.04189 10.259 2.14054 10.4229C2.23919 10.5869 2.38359 10.7185 2.55601 10.8015L7.86601 13.3365C8.02383 13.4126 8.19925 13.4448 8.37382 13.4297C8.54839 13.4145 8.71565 13.3526 8.85801 13.2505L15.43 8.56548L21.711 2.28448C21.5762 2.15096 21.4055 2.05932 21.2198 2.02064C21.034 1.98196 20.8409 1.99788 20.664 2.06648Z" fill="black" />
																	</svg>
																</span>
															</span>
															<span class="menu-title fw-bolder">Sent</span>
														</span>
													</div>-->
													<!--end::Menu item-->
													<!--begin::Menu item-->
													<div class="menu-item">
														<!--begin::Trash-->
														<a href="Archive">
														<span class="menu-link">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
																<span class="svg-icon svg-icon-2 me-3">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																		<path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black" />
																		<path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black" />
																		<path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															
															<span class="menu-title fw-bolder">Archivés</span>
															
														</span></a>
														<!--end::Trash-->
													</div>
													
													
													<!--end::Menu item-->
												</div>
												<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="d-flex btn btn-primary">Retour à l'accueil</a>
												<!--end::Menu-->
												<!--begin::Menu-->
												
												<!--end::Menu-->
											</div>
											<!--end::Aside content-->
										</div>
										<!--end::Sticky aside-->
									</div>
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-7 ms-xl-10">
										<!--begin::Card-->
										<div class="card">
											<div class="card-header align-items-center py-5 gap-2 gap-md-5">
												<!--begin::Actions-->
												
												<!--end::Actions-->
												<!--begin::Pagination-->
												<div class="d-flex align-items-center flex-wrap gap-2">
													<!--begin::Search-->
													<div class="d-flex align-items-center position-relative">
														<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
														<span class="svg-icon svg-icon-2 position-absolute ms-4">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="black" />
																<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
														<input type="text" data-kt-inbox-listing-filter="search" class="form-control form-control-sm form-control-solid mw-100 min-w-150px min-w-md-200px ps-12" placeholder="Chercher message" />
													</div>
													<div><c:if test="${messageok==true }">
															<div class="alert alert-success">Opération réussie</div>
															</c:if></div>
													<div>mots clef trie: Lu, NonLu</div>
												</div>
												<!--end::Pagination-->
											</div>
											<div class="card-body p-0">
												<!--begin::Table-->
												<table class="table table-hover table-row-dashed fs-6 gy-5 my-0" id="kt_inbox_listing">
													<!--begin::Table head-->
													<thead class="d-none">
														<tr>
															<th>Action</th>
															<th>Nom</th>
															<th>sujet</th>
															<th>Mail</th>
															
															<!--<th>état</th>-->
														</tr>
													</thead>
													<!--end::Table head-->
													<!--begin::Table body-->
													<tbody>
													<c:forEach var="c" items="${requestScope['cts']}" >
														<tr>
														
														<td class="text-end ps-7">
															<a href="#" class="btn btn-sm btn-primary btn-active-light-warning" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions
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
																<a href="Message?id=${ c.id }" class="menu-link px-3">Lire</a>
															</div>
															
															<div class="menu-item px-3">
																<a href="Messagerie?idarch=${ c.id }" class="menu-link px-3">Archiver</a>
															</div>
															<!--end::Menu item-->
															<!--begin::Menu item-->
															
															<c:if test="${c.etat==false}">
															<div class="menu-item px-3">
																<a href="Messagerie?idtohide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Marquer Vu</a>
															</div>
															</c:if>
															
															<c:if test="${c.etat==true}">
															<div class="menu-item px-3">
																<a href="Messagerie?idtounhide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Noter non Vu</a>
															</div>
															</c:if>
															
															<!--end::Menu item-->
														</div>
															</td>
															
															<!--begin::Author-->
															<td class="w-150px w-md-165px">
															<c:if test="${c.id_user==1 }">
																<p class="d-flex align-items-center text-dark">Unknown User</p>
																</c:if>
																<c:if test="${c.id_user!=1 }">
																<a href="Userdetail?iduser=${c.id_user}" class="d-flex align-items-center text-dark text-hover-primary">
																	<!--begin::Avatar-->
																	
																	<!--end::Avatar-->
																	<!--begin::Name-->
																	<span class="fw-bold">${c.id_user} ${c.getUser().nom }</span>
																	<!--end::Name-->
																</a>
																</c:if>
															</td>
															<!--end::Author-->
															<!--begin::Title-->
															<td>
																<a href="Message?id=${ c.id }" class="d-flex align-items-center text-dark text-hover-primary">
																	<!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->
																	${ c.sujet }
																	<!--end::Svg Icon-->
																</a>
																<!--begin::Badges-->
																<c:if test="${c.etat==true}">
																<div class="badge badge-light-primary">Lu</div>
																</c:if>
																<c:if test="${c.etat==false}">
																<div class="badge badge-light-warning">NonLu</div>
																</c:if>
																<!--end::Badges-->
															</td>
															<!--end::Title-->
															<!--begin::Date-->
															<td class="text-end pe-7">
																<a href="mailto:${c.email }" class="d-flex align-items-center text-dark text-hover-primary">${c.email }</a>
																<!-- <div class="badge badge-light-danger">new</div> -->
															</td> 
															<!--end::Date-->

															
														</tr>
														</c:forEach>
														
													</tbody>
													<!--end::Table body-->
												</table>
												<!--end::Table-->
											</div>
										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Inbox App - Messages -->
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
		<script src="assets/js/custom/apps/inbox/listing.js"></script>
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Page Custom Javascript-->
        
		<!--end::Javascript-->

</body>
</html>