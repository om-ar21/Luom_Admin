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
							<div id="kt_content_container" class="container-xxl" style="margin-top: -107px;">
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
													
													<div><c:if test="${messageok==true }">
															<div class="alert alert-success text-center">Modification réalisée</div>
															</c:if>
															<c:if test="${messagenope==true }">
															<div class="alert alert-danger">Erreur, veuillez remplir le champs</div>
															</c:if></div>

													<c:if test="${sessionScope.droit==1}"><label class="form-label">Opérations sur le compte</label></c:if>
													
													<c:if test="${sessionScope.droit==1}">
													<div>
													
													<form method="POST">
													<div class="form-group mb-5 d-flex justify-content-center" >
			                                        <input
			                                        class="me-2"
													type="checkbox" 
												    id="isDel"
												    name="isDel"
												    value="true"
												    <c:if test="${ ad.del==true }">
												    checked="checked"
												    </c:if>
													/>
													<!-- checked="checked" -->
													Suspendre
			                                        </div>
			                                        
			                                        <div class="d-flex justify-content-end">
														<button type="submit" name="bajouter" id="kt_ecommerce_edit_order_submit" class="btn btn-primary mb-7">
															<span class="indicator-label">Sauvegarder</span>
															<span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
														</button>
														<!--end::Button-->
													</div>
			                                        </form>

														
														</div>
														<div>
														<!--begin::Action menu-->
														<a href="ModifierAdmin?id=${ad.id }&idtodel=${ad.id }" class="btn btn-danger ps-7">Supprimer
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
														
														<!--end::Svg Icon--></a>
														<!--begin::Menu-->
														
														<!--end::Menu-->
														<!--end::Menu-->
													</div></c:if>
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
										<ul class="nav nav-custom nav-tabs nav-line-tabs nav-line-tabs-2x border-0 fs-4 fw-bold mb-8">
											<!--begin:::Tab item-->
											<li class="nav-item">
												<a class="nav-link text-active-primary pb-4 active" data-bs-toggle="tab" href="#kt_user_view_overview_tab">Infos</a>
											</li>
											<!--end:::Tab item-->
											<!--begin:::Tab item-->
											<li class="nav-item">
												<a class="nav-link text-active-primary pb-4" data-kt-countup-tabs="true" data-bs-toggle="tab" href="#kt_user_view_overview_security">Sécurité</a>
											</li>
											<!--end:::Tab item-->
											<!--begin:::Tab item-->
											<!--<li class="nav-item">
												<a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_user_view_overview_events_and_logs_tab">Events &amp; Logs</a>
											</li>
											end:::Tab item-->
											<!--begin:::Tab item-->
											<li class="nav-item ms-auto"><a href="Administrateur" class="btn btn-light me-5 ps-7" data-kt-menu-trigger="click" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">Retour</a></li>
											<!--end:::Tab item-->
										</ul>
										
										<!--end:::Tabs-->
										<!--begin:::Tab content-->
										<div class="tab-content" id="myTabContent">
											<!--begin:::Tab pane-->
											<div class="tab-pane fade show active" id="kt_user_view_overview_tab" role="tabpanel">
												<!--begin::Card-->
												<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Infos</h2>
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
																		<td>Nom</td>
																		<td>${ ad.nom }</td>
																		<td class="text-end">
																			<button type="button" class="btn btn-icon btn-active-light-primary w-30px h-30px ms-auto" data-bs-toggle="modal" data-bs-target="#kt_modal_update_nom">
																				<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																				<span class="svg-icon svg-icon-3">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																						<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																						<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																					</svg>
																				</span>
																				<!--end::Svg Icon-->
																			</button>
																		</td>
																	</tr>
																	
																	<tr>
																		<td>Role</td>
																		<td><c:if test="${ ad.id_privilege==1 }">SuperAdmin</c:if><c:if test="${ ad.id_privilege==2 }">Admin</c:if><c:if test="${ ad.id_privilege==3 }">Magasinier</c:if><c:if test="${ ad.id_privilege==4 }">Service client</c:if></td>
																		<td class="text-end">
																			<button type="button" class="btn btn-icon btn-active-light-primary w-30px h-30px ms-auto" data-bs-toggle="modal" data-bs-target="#kt_modal_update_role">
																				<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																				<span class="svg-icon svg-icon-3">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																						<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																						<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																					</svg>
																				</span>
																				<!--end::Svg Icon-->
																			</button>
																		
																		</td>
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
												<!--begin::Tasks-->
												
												<!--end::Tasks-->
											</div>
											<!--end:::Tab pane-->
											<!--begin:::Tab pane-->
											<div class="tab-pane fade" id="kt_user_view_overview_security" role="tabpanel">
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
																		<td>${ad.email }</td>
																		<td class="text-end">
																			<button type="button" class="btn btn-icon btn-active-light-primary w-30px h-30px ms-auto" data-bs-toggle="modal" data-bs-target="#kt_modal_update_email">
																				<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																				<span class="svg-icon svg-icon-3">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																						<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																						<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																					</svg>
																				</span>
																				<!--end::Svg Icon-->
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>Password</td>
																		<td>******</td>
																		<td class="text-end">
																			<button type="button" class="btn btn-icon btn-active-light-primary w-30px h-30px ms-auto" data-bs-toggle="modal" data-bs-target="#kt_modal_update_password">
																				<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
																				<span class="svg-icon svg-icon-3">
																					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																						<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
																						<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
																					</svg>
																				</span>
																				<!--end::Svg Icon-->
																			</button>
																		</td>
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
											</div>
											<!--end:::Tab pane-->
											<!--begin:::Tab pane-->
											
											<!--end:::Tab pane-->
										</div>
										<!--end:::Tab content-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Layout-->
								<!--begin::Modals-->
								<!--begin::Modal - Update user details-->
								
								<!--end::Modal - Update user details-->
								<!--begin::Modal - Add schedule-->
								
								<!--end::Modal - Add schedule-->
								<!--begin::Modal - Add task-->
								
								<!--end::Modal - Add task-->
								<div class="modal fade" id="kt_modal_update_nom" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header">
												<!--begin::Modal title-->
												<h2 class="fw-bolder">MAJ Nom</h2>
												<!--end::Modal title-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
													<a href="ModifierAdmin?id=${ ad.id }"><span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span></a>
													<!--end::Svg Icon-->
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
												<!--begin::Form-->
												<form id="kt_modal_update_email_form" class="form" method="POST"><!-- action="#" -->
													
														<div class="d-flex flex-stack flex-grow-1">
															<!--begin::Content-->
															
															<!--end::Content-->
														</div>
													<!--begin::Input group-->
													<div class="fv-row mb-7">
														<!--begin::Label-->
														<label class="fs-6 fw-bold form-label mb-2">
															<span class="required">Nom</span>
														</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input class="form-control form-control-solid" placeholder="${ ad.nom }" name="nom" value="${ ad.nom }" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Actions-->
													<div class="text-center pt-15">
														<a href="ModifierAdmin?id=${ ad.id }" class="btn btn-light me-3">Retour</a>
														<button type="submit" name="bnom" class="btn btn-primary" data-kt-users-modal-action="submit">
															<span class="indicator-label">Sauvegarder</span>
															<span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
														</button>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
											</div>
											<!--end::Modal body-->
										</div>
										<!--end::Modal content-->
									</div>
									<!--end::Modal dialog-->
								</div>
								
								<!--begin::Modal - Update email-->
								<div class="modal fade" id="kt_modal_update_email" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header">
												<!--begin::Modal title-->
												<h2 class="fw-bolder">MAJ Email</h2>
												<!--end::Modal title-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
													<a href="ModifierAdmin?id=${ ad.id }"><span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span></a>
													<!--end::Svg Icon-->
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
												<!--begin::Form-->
												<form id="kt_modal_update_email_form" class="form" method="POST"><!-- action="#" -->
													<!--begin::Notice-->
													<!--begin::Notice-->
													
													<!--end::Notice-->
													<!--end::Notice-->
													<!--begin::Input group-->
													<div class="fv-row mb-7">
														<!--begin::Label-->
														<label class="fs-6 fw-bold form-label mb-2">
															<span class="required">Email</span>
														</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input class="form-control form-control-solid" placeholder="${ ad.email }" name="mail" value="${ ad.email }" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Actions-->
													<div class="text-center pt-15">
														<a href="ModifierAdmin?id=${ ad.id }" class="btn btn-light me-3">Retour</a>
														<button type="submit" name="bmail" class="btn btn-primary" data-kt-users-modal-action="submit">
															<span class="indicator-label">Sauvegarder</span>
															<span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
														</button>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
											</div>
											<!--end::Modal body-->
										</div>
										<!--end::Modal content-->
									</div>
									<!--end::Modal dialog-->
								</div>
								<!--end::Modal - Update email-->
								<!--begin::Modal - Update password-->
								<div class="modal fade" id="kt_modal_update_password" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header">
												<!--begin::Modal title-->
												<h2 class="fw-bolder">MAJ mdp</h2>
												<!--end::Modal title-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
													<a href="ModifierAdmin?id=${ ad.id }"><span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span></a>
													<!--end::Svg Icon-->
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
												<!--begin::Form-->
												<form id="kt_modal_update_password_form" class="form" method="POST">
													<!--begin::Input group=-->
													<!-- <div class="fv-row mb-10">
														<label class="required form-label fs-6 mb-2">Current Password</label>
														<input class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="current_password" autocomplete="off" />
													</div> -->
													<!--end::Input group=-->
													<!--begin::Input group-->
													<div class="mb-10 fv-row" data-kt-password-meter="true">
														<!--begin::Wrapper-->
														<div class="mb-1">
															<!--begin::Label-->
															<label class="form-label fw-bold fs-6 mb-2">Nouveau Mdp</label>
															<!--end::Label-->
															<!--begin::Input wrapper-->
															<div class="position-relative mb-3">
																<input class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="new_password" autocomplete="off" />
																<span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" data-kt-password-meter-control="visibility">
																	<i class="bi bi-eye-slash fs-2"></i>
																	<i class="bi bi-eye fs-2 d-none"></i>
																</span>
															</div>
															<!--end::Input wrapper-->
															<!--begin::Meter-->
															
															<!--end::Meter-->
														</div>
														<!--end::Wrapper-->
														<!--begin::Hint-->
														
														<!--end::Hint-->
													</div>
													<!--end::Input group=-->
													<!--begin::Input group=-->
													
													<!--end::Input group=-->
													<!--begin::Actions-->
													<div class="text-center pt-15">
														<a href="ModifierAdmin?id=${ ad.id }" class="btn btn-light me-3">Retour</a>
														<button type="submit" name="bmdp" class="btn btn-primary" data-kt-users-modal-action="submit">
															<span class="indicator-label">Sauvegarder</span>
															<span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
														</button>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
											</div>
											<!--end::Modal body-->
										</div>
										<!--end::Modal content-->
									</div>
									<!--end::Modal dialog-->
								</div>
								<!--end::Modal - Update password-->
								<!--begin::Modal - Update role-->
								<div class="modal fade" id="kt_modal_update_role" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header">
												<!--begin::Modal title-->
												<h2 class="fw-bolder">MAJ Role</h2>
												<!--end::Modal title-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
													<a href="ModifierAdmin?id=${ ad.id }" ><span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span></a>
													<!--end::Svg Icon-->
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
												<!--begin::Form-->
												<form id="kt_modal_update_role_form" class="form" method="POST">
													<!--begin::Notice-->
													<!--begin::Notice-->
													
													<!--end::Notice-->
													<!--end::Notice-->
													<!--begin::Input group-->
													<div class="fv-row mb-7">
														<!--begin::Label-->
														<label class="fs-6 fw-bold form-label mb-5">
															<span class="required">Selectionner un role</span>
														</label>
														<!--end::Label-->
														<!--begin::Input row-->
														<div class="d-flex">
															<!--begin::Radio-->
															<div class="form-check form-check-custom form-check-solid">
																<!--begin::Input-->
																<input class="form-check-input me-3" name="user_role" type="radio" value="1" id="kt_modal_update_role_option_0" <c:if test="${ ad.id_privilege==1 }">
												    checked="checked"
												    </c:if> />
																<!--end::Input-->
																<!--begin::Label-->
																<label class="form-check-label" for="kt_modal_update_role_option_0">
																	<div class="fw-bolder text-gray-800">Super Administrateur</div>
																	<div class="text-gray-600">Peux faire n'importe quel opération et cela partout</div>
																</label>
																<!--end::Label-->
															</div>
															<!--end::Radio-->
														</div>
														<!--end::Input row-->
														<div class='separator separator-dashed my-5'></div>
														<!--begin::Input row-->
														<div class="d-flex">
															<!--begin::Radio-->
															<div class="form-check form-check-custom form-check-solid">
																<!--begin::Input-->
																<input class="form-check-input me-3" name="user_role" value="2" type="radio" id="kt_modal_update_role_option_1" <c:if test="${ ad.id_privilege==2 }">
												    checked="checked"
												    </c:if>/>
																<!--end::Input-->
																<!--begin::Label-->
																<label class="form-check-label" for="kt_modal_update_role_option_1">
																	<div class="fw-bolder text-gray-800">Administrateur</div>
																	<div class="text-gray-600">Peux Modifier et/ou Cacher toutes les informations pour eCommerce, Clients/Commandes et Fournisseurs</div>
																</label>
																<!--end::Label-->
															</div>
															<!--end::Radio-->
														</div>
														<!--end::Input row-->
														<div class='separator separator-dashed my-5'></div>
														<!--begin::Input row-->
														<div class="d-flex">
															<!--begin::Radio-->
															<div class="form-check form-check-custom form-check-solid">
																<!--begin::Input-->
																<input class="form-check-input me-3" name="user_role" value="3" type="radio" id="kt_modal_update_role_option_2" <c:if test="${ ad.id_privilege==3 }">
												    checked="checked"
												    </c:if> />
																<!--end::Input-->
																<!--begin::Label-->
																<label class="form-check-label" for="kt_modal_update_role_option_2">
																	<div class="fw-bolder text-gray-800">Magasinier</div>
																	<div class="text-gray-600">Gestion des stocks à partir de l'interface eCommerce</div>
																</label>
																<!--end::Label-->
															</div>
															<!--end::Radio-->
														</div>
														
														<div class='separator separator-dashed my-5'></div>
														
														<div class="d-flex">
															<!--begin::Radio-->
															<div class="form-check form-check-custom form-check-solid">
																<!--begin::Input-->
																<input class="form-check-input me-3" name="user_role" value="4" type="radio" id="kt_modal_update_role_option_3" <c:if test="${ ad.id_privilege==4 }">
												    checked="checked"
												    </c:if> />
																<!--end::Input-->
																<!--begin::Label-->
																<label class="form-check-label" for="kt_modal_update_role_option_2">
																	<div class="fw-bolder text-gray-800">Service client</div>
																	<div class="text-gray-600">En charge de répondre aux clients ayant laissé un message</div>
																</label>
																<!--end::Label-->
															</div>
															<!--end::Radio-->
														</div>
														
													</div>
													<!--end::Input group-->
													<!--begin::Actions-->
													<div class="text-center pt-15">
														<a href="ModifierAdmin?id=${ ad.id }" class="btn btn-light me-3">Retour</a>
														<button type="submit" name="brole" class="btn btn-primary" data-kt-users-modal-action="submit">
															<span class="indicator-label">Sauvegarder</span>
															<span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
														</button>
													</div>
													<!--end::Actions-->
												</form>
												<!--end::Form-->
											</div>
											<!--end::Modal body-->
										</div>
										<!--end::Modal content-->
									</div>
									<!--end::Modal dialog-->
								</div>
								<!--end::Modal - Update role-->
								<!--begin::Modal - Add task-->
								<!-- <div class="modal fade" id="kt_modal_add_auth_app" tabindex="-1" aria-hidden="true">
									begin::Modal dialog
									<div class="modal-dialog modal-dialog-centered mw-650px">
										begin::Modal content
										<div class="modal-content">
											begin::Modal header
											<div class="modal-header">
												begin::Modal title
												<h2 class="fw-bolder">Add Authenticator App</h2>
												end::Modal title
												begin::Close
												<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
													begin::Svg Icon | path: icons/duotune/arrows/arr061.svg
													<span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span>
													end::Svg Icon
												</div>
												end::Close
											</div>
											end::Modal header
											begin::Modal body
											<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
												begin::Content
												<div class="fw-bolder d-flex flex-column justify-content-center mb-5">
													begin::Label
													<div class="text-center mb-5" data-kt-add-auth-action="qr-code-label">Download the
													<a href="#">Authenticator app</a>, add a new account, then scan this barcode to set up your account.</div>
													<div class="text-center mb-5 d-none" data-kt-add-auth-action="text-code-label">Download the
													<a href="#">Authenticator app</a>, add a new account, then enter this code to set up your account.</div>
													end::Label
													begin::QR code
													<div class="d-flex flex-center" data-kt-add-auth-action="qr-code">
														<img src="assets/media/misc/qr.png" alt="Scan this QR code" />
													</div>
													end::QR code
													begin::Text code
													<div class="border rounded p-5 d-flex flex-center d-none" data-kt-add-auth-action="text-code">
														<div class="fs-1">gi2kdnb54is709j</div>
													</div>
													end::Text code
												</div>
												end::Content
												begin::Action
												<div class="d-flex flex-center">
													<div class="btn btn-light-primary" data-kt-add-auth-action="text-code-button">Enter code manually</div>
													<div class="btn btn-light-primary d-none" data-kt-add-auth-action="qr-code-button">Scan barcode instead</div>
												</div>
												end::Action
											</div>
											end::Modal body
										</div>
										end::Modal content
									</div>
									end::Modal dialog
								</div> -->
								<!--end::Modal - Add task-->
								<!--begin::Modal - Add task-->
								
								<!--end::Modal - Add task-->
								<!--end::Modals-->
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