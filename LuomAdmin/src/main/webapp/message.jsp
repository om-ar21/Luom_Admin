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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Message n°${c.id }</h1>
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
										
										<c:if test="${c.del==true }">
										<li class="breadcrumb-item text-muted">
											<a href="Archive" class="text-muted text-hover-primary">
											Archivés
											</a>
										</li></c:if>
										
										<c:if test="${c.del==false }">
										<li class="breadcrumb-item text-muted">
											<a href="Messagerie" class="text-muted text-hover-primary">
											Messages
											</a>
										</li></c:if>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-dark">n°${c.id }</li>
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
								<div class="d-flex flex-column flex-lg-row">
									<!--begin::Sidebar-->
									<div class="flex-column flex-lg-row-auto w-100 w-lg-275px mb-10 mb-lg-0">
										<!--begin::Sticky aside-->
										<div class="card card-flush mb-0" data-kt-sticky="true" data-kt-sticky-name="inbox-aside-sticky" data-kt-sticky-offset="{default: false, xl: '0px'}" data-kt-sticky-width="{lg: '275px'}" data-kt-sticky-left="auto" data-kt-sticky-top="150px" data-kt-sticky-animation="false" data-kt-sticky-zindex="95">
											<!--begin::Aside content-->
											<div class="card-body">
												
												<!--begin::Menu-->
												<!--mettre menu de nav ici lol-->
												<div class="menu menu-column menu-rounded menu-state-bg menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary mb-10">
													<!--begin::Menu item-->
													<div class="menu-item mb-3">
														<!--begin::Inbox-->
														<a href="Messagerie">
														<span class="menu-link <c:if test="${c.del==false }">active</c:if>">
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
														</span>
														</a>
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
														<span class="menu-link <c:if test="${c.del==true }">active</c:if>">
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
												<!--end::Menu-->
												<!--begin::Menu-->
												<a href="IndexAdmin" id="kt_ecommerce_add_product_cancel" class="d-flex btn btn-primary">Retour à l'accueil</a>
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
											<div class="card-header align-items-center py-5 gap-5">
												<!--begin::Actions-->
												<div class="d-flex">
													<!--begin::Back-->
													<c:if test="${c.del==false }">
													<a href="Messagerie" class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3" data-bs-toggle="tooltip" data-bs-placement="top" title="Back">
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr063.svg-->
														<span class="svg-icon svg-icon-1 m-0">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<rect opacity="0.5" x="6" y="11" width="13" height="2" rx="1" fill="black" />
																<path d="M8.56569 11.4343L12.75 7.25C13.1642 6.83579 13.1642 6.16421 12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75L5.70711 11.2929C5.31658 11.6834 5.31658 12.3166 5.70711 12.7071L11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25C13.1642 17.8358 13.1642 17.1642 12.75 16.75L8.56569 12.5657C8.25327 12.2533 8.25327 11.7467 8.56569 11.4343Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a></c:if>
													<c:if test="${c.del==true }">
													<a href="Archive" class="btn btn-sm btn-icon btn-clear btn-active-light-primary me-3" data-bs-toggle="tooltip" data-bs-placement="top" title="Back">
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr063.svg-->
														<span class="svg-icon svg-icon-1 m-0">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<rect opacity="0.5" x="6" y="11" width="13" height="2" rx="1" fill="black" />
																<path d="M8.56569 11.4343L12.75 7.25C13.1642 6.83579 13.1642 6.16421 12.75 5.75C12.3358 5.33579 11.6642 5.33579 11.25 5.75L5.70711 11.2929C5.31658 11.6834 5.31658 12.3166 5.70711 12.7071L11.25 18.25C11.6642 18.6642 12.3358 18.6642 12.75 18.25C13.1642 17.8358 13.1642 17.1642 12.75 16.75L8.56569 12.5657C8.25327 12.2533 8.25327 11.7467 8.56569 11.4343Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a></c:if>
												</div>
												<!--end::Actions-->
												<!--begin::Pagination-->
												<div class="d-flex align-items-center">
													<!--begin::Pages info-->
													<span class="fw-bold text-muted me-2">${index } - ${last }</span>
													<!--end::Pages info-->
													<!--begin::Prev page-->
													<c:if test="${idprec == 0 }"> </c:if>
													<c:if test="${idprec != 0 }">
													<a href="Message?id=${ idprec }" class="btn btn-sm btn-icon btn-light btn-active-light-primary me-3" data-bs-toggle="tooltip" data-bs-placement="top" title="Previous message">
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr074.svg-->
														<span class="svg-icon svg-icon-2 m-0">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<path d="M11.2657 11.4343L15.45 7.25C15.8642 6.83579 15.8642 6.16421 15.45 5.75C15.0358 5.33579 14.3642 5.33579 13.95 5.75L8.40712 11.2929C8.01659 11.6834 8.01659 12.3166 8.40712 12.7071L13.95 18.25C14.3642 18.6642 15.0358 18.6642 15.45 18.25C15.8642 17.8358 15.8642 17.1642 15.45 16.75L11.2657 12.5657C10.9533 12.2533 10.9533 11.7467 11.2657 11.4343Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a></c:if>
													<!--end::Prev page-->
													<!--begin::Next page-->
													
													
													<a href="Message?id=${ idsuiv }" class="btn btn-sm btn-icon btn-light btn-active-light-primary me-2" data-bs-toggle="tooltip" data-bs-placement="top" title="Next message">
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr071.svg-->
														<span class="svg-icon svg-icon-2 m-0">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<path d="M12.6343 12.5657L8.45001 16.75C8.0358 17.1642 8.0358 17.8358 8.45001 18.25C8.86423 18.6642 9.5358 18.6642 9.95001 18.25L15.4929 12.7071C15.8834 12.3166 15.8834 11.6834 15.4929 11.2929L9.95001 5.75C9.5358 5.33579 8.86423 5.33579 8.45001 5.75C8.0358 6.16421 8.0358 6.83579 8.45001 7.25L12.6343 11.4343C12.9467 11.7467 12.9467 12.2533 12.6343 12.5657Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</a>
													<!--end::Next page-->
													
												</div>
												<!--end::Pagination-->
											</div>
											<div class="card-body">
												<!--begin::Title-->
												<div class="d-flex flex-wrap gap-2 justify-content-between mb-8">
													<div class="d-flex align-items-center flex-wrap gap-2">
														<!--begin::Heading-->
														<h2 class="fw-bold me-3 my-1">Message ${c.id } : ${c.sujet }</h2>
														<!--begin::Heading-->
														
													</div>
												</div>
												<!--end::Title-->
												<!--begin::Message accordion-->
												<div data-kt-inbox-message="message_wrapper">
													<!--begin::Message header-->
													<div class="d-flex flex-wrap gap-2 flex-stack cursor-pointer" data-kt-inbox-message="header">
														<!--begin::Author-->
														<div class="d-flex align-items-center">
															<!--begin::Avatar-->
															
															<!--end::Avatar-->
															<div class="pe-5">
																<!--begin::Author details-->
																<div class="d-flex align-items-center flex-wrap gap-1">
																<c:if test="${c.id_user!=1 }">
																	<a href="Userdetail?iduser=${c.id_user}" class="fw-bolder text-dark text-hover-primary">${c.getUser().nom } ${c.getUser().prenom }</a></c:if>
																	<!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
																	<!--faire le if sur le del or not-->
																	<c:if test="${c.del==false }">
																	<span class="svg-icon svg-icon-7 svg-icon-success mx-3">
																		<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																			<circle fill="#000000" cx="12" cy="12" r="8" />
																		</svg>
																	</span>
																	</c:if>
																	
																	<c:if test="${c.del==true }">
																	<span class="svg-icon svg-icon-7 svg-icon-warning mx-3">
																		<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																			<circle fill="#000000" cx="12" cy="12" r="8" />
																		</svg>
																	</span>
																	</c:if>
																	<!--end::Svg Icon-->
																	<span class="text-muted fw-bolder"><c:if test="${c.del==true }">Archivé</c:if><c:if test="${c.del==false }">Boite de réception</c:if></span>
																</div>
																<!--end::Author details-->
																
																<!--begin::Preview message-->
																<div class="text-muted fw-bold mw-450px d-none" data-kt-inbox-message="preview">${c.sujet }</div>
																<!--end::Preview message-->
															</div>
														</div>
														<!--end::Author-->
														<!--begin::Actions-->
														<div class="d-flex align-items-center flex-wrap gap-2">
															<!--begin::Date-->
															<!--end::Date-->
															<div class="d-flex">
																<!--begin::Star-->
																
																<!--end::Star-->
																<!--begin::Mark as important-->
																
																<!--end::Mark as important-->
																<!--begin::Reply-->
																<a href="mailto:${c.email }" class="btn btn-clear btn-active-light-primary me-3">
																	<!--begin::Svg Icon | path: icons/duotune/general/gen055.svg-->
																	<span class="svg-icon svg-icon-2 m-0">
																		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																			<path opacity="0.3" fill-rule="evenodd" clip-rule="evenodd" d="M2 4.63158C2 3.1782 3.1782 2 4.63158 2H13.47C14.0155 2 14.278 2.66919 13.8778 3.04006L12.4556 4.35821C11.9009 4.87228 11.1726 5.15789 10.4163 5.15789H7.1579C6.05333 5.15789 5.15789 6.05333 5.15789 7.1579V16.8421C5.15789 17.9467 6.05333 18.8421 7.1579 18.8421H16.8421C17.9467 18.8421 18.8421 17.9467 18.8421 16.8421V13.7518C18.8421 12.927 19.1817 12.1387 19.7809 11.572L20.9878 10.4308C21.3703 10.0691 22 10.3403 22 10.8668V19.3684C22 20.8218 20.8218 22 19.3684 22H4.63158C3.1782 22 2 20.8218 2 19.3684V4.63158Z" fill="black" />
																			<path d="M10.9256 11.1882C10.5351 10.7977 10.5351 10.1645 10.9256 9.77397L18.0669 2.6327C18.8479 1.85165 20.1143 1.85165 20.8953 2.6327L21.3665 3.10391C22.1476 3.88496 22.1476 5.15129 21.3665 5.93234L14.2252 13.0736C13.8347 13.4641 13.2016 13.4641 12.811 13.0736L10.9256 11.1882Z" fill="black" />
																			<path d="M8.82343 12.0064L8.08852 14.3348C7.8655 15.0414 8.46151 15.7366 9.19388 15.6242L11.8974 15.2092C12.4642 15.1222 12.6916 14.4278 12.2861 14.0223L9.98595 11.7221C9.61452 11.3507 8.98154 11.5055 8.82343 12.0064Z" fill="black" />
																		</svg>
																		Répondre
																	</span>
																	<!--end::Svg Icon-->
																</a>
																<!--end::Reply-->
																
																<!--end::Settings-->
															</div>
														</div>
														<!--end::Actions-->
													</div>
													<!--end::Message header-->
													<!--begin::Message content-->
													<div class="collapse fade show" data-kt-inbox-message="message">
														<div class="py-5">
															${c.msg }
														</div>
													</div>
													<!--end::Message content-->
												</div>
												
											</div>
										</div>
										<!--end::Card-->
									</div>
									<!--end::Content-->
								</div>
								<!--end::Inbox App - View & Reply -->
							
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