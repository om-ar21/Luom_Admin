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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">${ad.nom }</h1>
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
										<li class="breadcrumb-item text-muted"><a href="Administrateur" class="text-muted text-hover-primary">Admins</a></li>
										<!--end::Item-->
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-dark">Admin n°${ad.id }</li>
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
								<!--begin::Layout-->
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="flex-column flex-lg-row-auto w-lg-250px w-xl-350px mb-10">
										<!--begin::Card-->
										<div class="card mb-5 mb-xl-8">
											<!--begin::Card body-->
											<div class="card-body">
												<!--begin::Summary-->
												<!--begin::User Info-->
												<div class="d-flex flex-center flex-column py-5">
													<!--begin::Avatar-->
													<!--end::Avatar-->
													<!--begin::Name-->
													<a href="#" class="fs-3 text-gray-800 text-hover-primary fw-bolder mb-3">${ad.nom }</a>
													<!--end::Name-->
													<!--begin::Position-->
													<div class="mb-9">
														<!--begin::Badge-->
														<!--faire if-->
														<div class="badge badge-lg badge-light-primary d-inline"><c:if test="${ ad.id_privilege==1 }">SuperAdmin</c:if><c:if test="${ ad.id_privilege==2 }">Admin</c:if><c:if test="${ ad.id_privilege==3 }">Magasinier</c:if><c:if test="${ ad.id_privilege==4 }">Service client</c:if></div>
														<!--begin::Badge-->
													</div>
													
													

													
													<!--end::Position-->
													<!--begin::Info-->
													<!--begin::Info heading-->
													
													<!--end::Info heading-->
													
													<!--end::Info-->
												</div>
												<!--end::User Info-->
												<!--end::Summary-->
												<!--begin::Details toggle-->
												
												<!--begin::Details content-->
												
												<!--end::Details content-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Card-->
										<!--begin::Connected Accounts-->
										<!--<div class="card mb-5 mb-xl-8">
											
											<div class="card-header border-0">
												<div class="card-title">
													<h3 class="fw-bolder m-0">Connected Accounts</h3>
												</div>
											</div>
											
											<div class="card-body pt-2">
												
												<div class="notice d-flex bg-light-primary rounded border-primary border border-dashed mb-9 p-6">
													
													<span class="svg-icon svg-icon-2tx svg-icon-primary me-4">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<path opacity="0.3" d="M22 19V17C22 16.4 21.6 16 21 16H8V3C8 2.4 7.6 2 7 2H5C4.4 2 4 2.4 4 3V19C4 19.6 4.4 20 5 20H21C21.6 20 22 19.6 22 19Z" fill="black" />
															<path d="M20 5V21C20 21.6 19.6 22 19 22H17C16.4 22 16 21.6 16 21V8H8V4H19C19.6 4 20 4.4 20 5ZM3 8H4V4H3C2.4 4 2 4.4 2 5V7C2 7.6 2.4 8 3 8Z" fill="black" />
														</svg>
													</span>
													
													<div class="d-flex flex-stack flex-grow-1">
														
														<div class="fw-bold">
															<div class="fs-6 text-gray-700">By connecting an account, you hereby agree to our
															<a href="#" class="me-1">privacy policy</a>and
															<a href="#">terms of use</a>.</div>
														</div>
														
													</div>
													
												</div>
												
												<div class="py-2">
													<div class="d-flex flex-stack">
														<div class="d-flex">
															<img src="assets/media/svg/brand-logos/google-icon.svg" class="w-30px me-6" alt="" />
															<div class="d-flex flex-column">
																<a href="#" class="fs-5 text-dark text-hover-primary fw-bolder">Google</a>
																<div class="fs-6 fw-bold text-muted">Plan properly your workflow</div>
															</div>
														</div>
														<div class="d-flex justify-content-end">
															
															<label class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
																
																<input class="form-check-input" name="google" type="checkbox" value="1" id="kt_modal_connected_accounts_google" checked="checked" />
																
																<span class="form-check-label fw-bold text-muted" for="kt_modal_connected_accounts_google"></span>
																
															</label>
															
														</div>
													</div>
													
													<div class="separator separator-dashed my-5"></div>
													
													<div class="d-flex flex-stack">
														<div class="d-flex">
															<img src="assets/media/svg/brand-logos/github.svg" class="w-30px me-6" alt="" />
															<div class="d-flex flex-column">
																<a href="#" class="fs-5 text-dark text-hover-primary fw-bolder">Github</a>
																<div class="fs-6 fw-bold text-muted">Keep eye on on your Repositories</div>
															</div>
														</div>
														<div class="d-flex justify-content-end">
															
															<label class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
																
																<input class="form-check-input" name="github" type="checkbox" value="1" id="kt_modal_connected_accounts_github" checked="checked" />
																
																<span class="form-check-label fw-bold text-muted" for="kt_modal_connected_accounts_github"></span>
																
															</label>
															
														</div>
													</div>
													
													<div class="separator separator-dashed my-5"></div>
													
													<div class="d-flex flex-stack">
														<div class="d-flex">
															<img src="assets/media/svg/brand-logos/slack-icon.svg" class="w-30px me-6" alt="" />
															<div class="d-flex flex-column">
																<a href="#" class="fs-5 text-dark text-hover-primary fw-bolder">Slack</a>
																<div class="fs-6 fw-bold text-muted">Integrate Projects Discussions</div>
															</div>
														</div>
														<div class="d-flex justify-content-end">
															
															<label class="form-check form-switch form-switch-sm form-check-custom form-check-solid">
																
																<input class="form-check-input" name="slack" type="checkbox" value="1" id="kt_modal_connected_accounts_slack" />
																
																<span class="form-check-label fw-bold text-muted" for="kt_modal_connected_accounts_slack"></span>
																
															</label>
															
														</div>
													</div>
													
												</div>
												
											</div>
											
											<div class="card-footer border-0 d-flex justify-content-center pt-0">
												<button class="btn btn-sm btn-light-primary">Save Changes</button>
											</div>
											
										</div>
										end::Connected Accounts-->
									</div>
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-15">
										<!--begin:::Tabs-->
										
										<!--end:::Tabs-->
										<!--begin:::Tab content-->
										
											<!--end:::Tab pane-->
											<!--begin:::Tab pane-->
											<!-- <div class="tab-pane fade" id="kt_user_view_overview_security" role="tabpanel"> -->
												<!--begin::Card-->
												<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Configuration compte</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0 pb-5">
														<!--begin::Table wrapper-->
														<div class="table-responsive">
															<!--begin::Table-->
															<table class="table align-middle table-row-dashed gy-5" id="kt_table_users_login_session">
																<!--begin::Table body-->
																<tbody class="fs-6 fw-bold text-gray-600">
																	<tr>
																		<td>Email</td>
																		
																		<td><a href="mailto:${ad.email}" class="text-gray-800 text-hover-primary fs-5 fw-bolder">${ad.email }</a></td>
																		
																	</tr>
																	
																	
																</tbody>
																<!--end::Table body-->
															</table>
															<!--end::Table-->
														</div>
														<!--end::Table wrapper-->
													</div>
													<!--end::Card body-->
												</div>
												<!--end::Card-->
												<!--begin::Card-->
												
												<!--end::Card-->
												<!--begin::Card-->
												
												<!--end::Card-->
											<!-- </div> -->
											<!--end:::Tab pane-->
											<!--begin:::Tab pane-->
											
											<!--end:::Tab pane-->
											<div class="d-flex justify-content-end">
											<!--begin::Button-->
											<a href="Administrateur" id="kt_ecommerce_add_product_cancel" class="btn btn-light me-5 mb-10">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											
											<!--end::Button-->
										</div>
										</div>
										<!--end:::Tab content-->
										
									</div>
									
									<!--end::Content-->
								</div>
								<!--end::Layout-->
								
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