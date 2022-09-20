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

<div class="toolbar min-h-70px" id="kt_toolbar">
							<!--begin::Container-->
							<div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
								<!--begin::Page title-->
								<div data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_content_container', 'lg': '#kt_toolbar_container'}" class="page-title d-flex align-items-center flex-wrap me-3 mb-5 mb-lg-0">
									<!--begin::Title-->
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Img ${image.id}</h1>
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
										<li class="breadcrumb-item text-muted">eCommerce</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item text-muted"><a href="ProduitAdmin" class="text-muted text-hover-primary">Produits</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-muted"><a href="VoirProduit?id=${prd.id}" class="text-muted text-hover-primary">Fiche</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-muted"><a href="AddImage?id=${prd.id }" class="text-muted text-hover-primary">Menu Images</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-dark">Img ${image.id}</li>
										
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
								<!--begin::Form-->
								<form id="kt_ecommerce_edit_order_form" class="form d-flex flex-column flex-lg-row"  method="POST">
									<!--begin::Aside column-->
									<div class="w-100 flex-lg-row-auto w-lg-300px mb-7 me-7 me-lg-10">
										<!--begin::Order details-->
										<div class="card card-flush py-4 mb-5">
											<!--begin::Card header-->
											
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body text-center pt-0">
												<!--begin::Image input-->
												<h2>${image.id}</h2>
												<div class="image-input image-input-empty image-input-outline mb-3" data-kt-image-input="true" style="">
													<!--begin::Preview existing avatar-->
													<div class="image-input-wrapper w-150px h-150px" style="background-image: url(${image.lien})"></div>
													
												</div>
												<div>
														<!--begin::Action menu-->
														<a href="ModifierImage?id=${image.id }&idtodel=${image.id }" class="btn btn-danger ps-7">Supprimer
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
														
														<!--end::Svg Icon--></a>
														<!--begin::Menu-->
														
														<!--end::Menu-->
														<!--end::Menu-->
													</div>
											</div>
											<!--end::Card header-->
										</div>
										<!--end::Order details-->
										<div class="card card-flush py-4">
											<!--begin::Card header-->
											<div class="card-header">
												<!--begin::Card title-->
												<div class="card-title">
													<h2>Status</h2>
												</div>
												<!--end::Card title-->
												<!--begin::Card toolbar-->
												
												
												<div class="card-toolbar">
													<c:if test="${ image.del==true }">
											    	<div class="rounded-circle bg-danger w-15px h-15px" id="kt_ecommerce_add_product_status"></div>
											    	</c:if>
											    	
											    	<c:if test="${ image.del==false }">
											    	<div class="rounded-circle bg-success w-15px h-15px" id="kt_ecommerce_add_product_status"></div>
											    	</c:if>
													
												</div>
												<!--begin::Card toolbar-->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body pt-0">
												<!--begin::Select2-->
												<div class="form-group">
		                                        <input
												type="checkbox" 
											    id="isDel"
											    name="isDel"
											    value="true"
											    <c:if test="${ image.del==true }">
											    checked="checked"
											    </c:if>
												/>
												<!-- checked="checked" -->
												Masqué
		                                        </div>
												<!-- <select class="form-select mb-2" data-control="select2" data-hide-search="true" data-placeholder="Select an option" id="kt_ecommerce_add_product_status_select">
													<option></option>
													<option value="published" selected="selected">Published</option>
													<option value="draft">Draft</option>
													<option value="scheduled">Scheduled</option>
													<option value="inactive">Inactive</option>
												</select> -->
												<!--end::Select2-->
												<!--begin::Description-->
												<div class="text-muted fs-7 mb-5">Definir le status.</div>
												<!--end::Description-->
												<!--begin::Datepicker-->
												<div class="d-none mt-10">
													<label for="kt_ecommerce_add_product_status_datepicker" class="form-label">Select publishing date and time</label>
													<input class="form-control" id="kt_ecommerce_add_product_status_datepicker" placeholder="Pick date &amp; time" />
												</div>
												
												<label class="form-label">Produit</label>
												
												<select name="id_prods" id="id_prods" parsley-trigger="change" required  class="form-select">
                                            	<c:forEach var="p" items="${requestScope['prods']}">
												<option value="${p.id}">${p.id}-${p.titre}</option>
												</c:forEach>
                                            	</select>
												<!--end::Datepicker-->
											</div>
											<!--end::Card body-->
										</div>
										
									</div>
									
									
										
										
									<!--end::Aside column-->
									<!--begin::Main column-->
									
									
									<div class="d-flex flex-column flex-lg-row-fluid gap-7 gap-lg-10">
										<!--begin::Order details-->
										<div class="card card-flush py-4">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2>Image à modifier</h2>
															</div>
															<div>
												<c:if test="${messageok==true }">
															<div class="alert alert-success">Modification réalisée</div>
															</c:if>
															<c:if test="${messagenope==true }">
															<div class="alert alert-danger">Erreur, veuillez remplir le champs</div>
															</c:if>
												</div>
															
														</div>
														<!--end::Card header-->
														<!--begin::Card body-->
														<div class="card-body pt-0">
															<!--begin::Input group-->
															<div class="fv-row mb-2">
																<!--begin::Dropzone-->
																<!-- <div class="dropzone" id="kt_ecommerce_add_product_media">
																	begin::Message
																	<div class="dz-message needsclick">
																		begin::Icon
																		<i class="bi bi-file-earmark-arrow-up text-primary fs-3x"></i>
																		end::Icon
																		begin::Info
																		<div class="ms-4">
																			<h3 class="fs-5 fw-bolder text-gray-900 mb-1">Drop files here or click to upload.</h3>
																			<span class="fs-7 fw-bold text-gray-400">Upload up to 10 files</span>
																		</div>
																		end::Info
																	</div>
																</div> -->
																<input type="text" name="img" class="form-control mb-2" placeholder="${image.lien}" value="${image.lien}" />
																
																<!--end::Dropzone-->
															</div>
															<!--end::Input group-->
															<!--begin::Description-->
														
															<!--end::Description-->
														</div>
														<!--end::Card header-->
													</div>
										
										
										
										<!--end::Order details-->
										<!--begin::Order details-->
										
										<!--end::Order details-->
										<div class="d-flex justify-content-end">
											<!--begin::Button-->
											<a href="AddImage?id=${prd.id }" id="kt_ecommerce_add_product_cancel" class="btn btn-light me-5 mb-10">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											<button type="submit" name="bajouter" id="kt_ecommerce_edit_order_submit" class="btn btn-primary mb-10">
												<span class="indicator-label">Sauvegarder</span>
												<span class="indicator-progress">Please wait...
												<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
											</button>
											<!--end::Button-->
										</div>
									</div>
									<!--end::Main column-->
								</form>
								<!--end::Form-->
							</div>
							<!--end::Container-->
						</div>
						
						<script>
                                    document.getElementById('id_prods').value=${prd.id};
                                    </script>
						<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Vendors Javascript(used by this page)-->
		<script src="assets/plugins/custom/datatables/datatables.bundle.js"></script>
		<script src="assets/plugins/custom/formrepeater/formrepeater.bundle.js"></script>
		<!--end::Page Vendors Javascript-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="assets/js/custom/apps/ecommerce/sales/save-order.js"></script>
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>
		<!--end::Page Custom Javascript-->

</body>
</html>