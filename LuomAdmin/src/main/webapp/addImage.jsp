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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">${cproduit.titre}</h1>
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
										
										<li class="breadcrumb-item text-muted"><a href="VoirProduit?id=${cproduit.id}" class="text-muted text-hover-primary">Fiche</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-dark">Menu Images</li>
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
									<div class="w-100 flex-lg-row-auto w-lg-300px me-7 me-lg-10">
										<!--begin::Order details-->
										<div class="card card-flush py-4 mb-10">
											<!--begin::Card header-->
											<div class="card-header">
												<!--begin::Card title-->
												<div class="card-title">
													<h2>${cproduit.titre}</h2>
												</div>
												<!--end::Card title-->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body text-center pt-0">
												<!--begin::Image input-->
												<div class="image-input image-input-empty image-input-outline mb-3" data-kt-image-input="true" style="">
													<!--begin::Preview existing avatar-->
													<div class="image-input-wrapper w-150px h-150px" style="background-image: url(${cproduit.img})"></div>
													
												</div>
												
											</div>
											
											<div class="d-flex justify-content-center">
											<!--begin::Button-->
											<a href="VoirProduit?id=${cproduit.id}" id="kt_ecommerce_edit_order_cancel" class="d-flex btn btn-light mb-5">Retour a la fiche produit</a>
											
											<!--end::Button-->
											<!--begin::Button-->
											
											<!--end::Button-->
										</div>
											<!--end::Card header-->
										</div>
										<!--end::Order details-->
										<div class="card card-flush py-4 mb-10">
											<!--begin::Card header-->
											<div class="card-header">
												<!--begin::Card title-->
												<div class="card-title">
													<h2>Status</h2>
												</div>
												<!--end::Card title-->
												<!--begin::Card toolbar-->
												
												
												<div class="card-toolbar">
													<c:if test="${ cproduit.del==true }">
											    	<div class="rounded-circle bg-danger w-15px h-15px" id="kt_ecommerce_add_product_status"></div>
											    	</c:if>
											    	
											    	<c:if test="${ cproduit.del==false }">
											    	<div class="rounded-circle bg-success w-15px h-15px" id="kt_ecommerce_add_product_status"></div>
											    	</c:if>
													
												</div>
												<!--begin::Card toolbar-->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body pt-0">
												<!--begin::Select2-->
												<div class="form-group mb-5">
		                                        <input
												type="checkbox" 
											    id="isDel"
											    name="isDel"
											    value="true"
											    disabled
											    <c:if test="${ cproduit.del==true }">
											    checked="checked"
											    </c:if>
												/>
												<!-- checked="checked" -->
												Masqu??
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
												<div class="text-muted fs-7">status.</div>
												<!--end::Description-->
												<!--begin::Datepicker-->
												<div class="d-none mt-10">
													<label for="kt_ecommerce_add_product_status_datepicker" class="form-label">Select publishing date and time</label>
													<input class="form-control" id="kt_ecommerce_add_product_status_datepicker" placeholder="Pick date &amp; time" />
												</div>
												<!--end::Datepicker-->
											</div>
											<!--end::Card body-->
										</div>
										<div class="card card-flush py-4 mb-7">
											<!--begin::Card header-->
											<div class="card-header">
												<!--begin::Card title-->
												<div class="card-title">
													<h2>Groupe</h2>
												</div>
												<!--end::Card title-->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body pt-0">
												<!--begin::Input group-->
												<!--begin::Label-->
												<label class="form-label">Sous-cat??gories</label>
												<!--end::Label-->
												<!--begin::Select2-->
												<select name="id_categories" id="id_categories" parsley-trigger="change" required  class="form-select mb-2" disabled>
                                            	<c:forEach var="sscat" items="${requestScope['sscats']}">
												<option value="${sscat.id}">${sscat.titre}</option>
												</c:forEach>
                                            	</select>
												
												<!--end::Select2-->
												<!--begin::Description-->
												<!--end::Description-->
												<!--end::Input group-->
												<!--begin::Button-->
												<a href="AddScat" class="btn btn-light-primary btn-sm mb-10">
												<!--begin::Svg Icon | path: icons/duotune/arrows/arr087.svg-->
												<span class="svg-icon svg-icon-2">
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
														<rect opacity="0.5" x="11" y="18" width="12" height="2" rx="1" transform="rotate(-90 11 18)" fill="black" />
														<rect x="6" y="11" width="12" height="2" rx="1" fill="black" />
													</svg>
												</span>
												<!--end::Svg Icon-->Cr??er une nouvelle sous-cat??gorie</a>
												
												<!--end::Input group-->
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
																<h2>Image ?? ajouter</h2>
															</div>
															<div>
															<c:if test="${messageok==true }">
															<div class="alert alert-success mt-2">Ajout r??alis??</div>
															</c:if>
															<c:if test="${messagenope==true }">
															<div class="alert alert-danger mt-2">Erreur, veuillez remplir le champs</div>
															</c:if>
															
															</div>
															<div class="card-title">
															<button type="submit" name="bajouter" id="kt_ecommerce_edit_order_submit" class="btn btn-light-primary btn-sm">
																<span class="indicator-label">Sauvegarder</span>
																<span class="indicator-progress">Please wait...
																<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
															</button>
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
																<input type="text" name="img" class="form-control mb-2"/>
																
																<!--end::Dropzone-->
															</div>
															<!--end::Input group-->
															<!--begin::Description-->
															<div class="form-group mb-5">
		                                        <input
												type="checkbox" 
											    id="isDeleted"
											    name="isDeleted"
											    value="true"
												/>
												<!-- checked="checked" -->
												Masqu??e
		                                        </div>
															<!--end::Description-->
														</div>
														<!--end::Card header-->
													</div>
										
										
										<div class="card card-flush py-4 mb-10">
											<!--begin::Card header-->
											<div class="card-header">
												<div class="card-title">
													<h2>Images du Produit</h2>
													
												</div>
												<c:if test="${interdit==true }">
															<div class="alert alert-danger mt-2">Op??ration interdite</div>
															</c:if><!-- pour test entrer cet url : AddImage?id=1&idtodel=13 -->
											</div>
											<!--end::Card header-->
											<!--begin::Card body-->
											<div class="card-body pt-0">
												<div class="d-flex flex-column gap-10">
													<!--begin::Input group-->
													<div>
														<!--begin::Label-->
														<!--mettre mon input ici-->
														<!--begin::Selected products-->
														<!--begin::Total price-->
														
														<!--end::Total price-->
													</div>
													<!--end::Input group-->
													<!--begin::Separator-->
													<div class="separator"></div>
													<!--end::Separator-->
													<!--begin::Search products-->
													<div class="d-flex align-items-center position-relative mb-n7">
														<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
														<span class="svg-icon svg-icon-1 position-absolute ms-4">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="black" />
																<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
														<input type="text" data-kt-ecommerce-edit-order-filter="search" class="form-control form-control-solid w-100 w-lg-50 ps-14" placeholder="Chercher Image" />
														
														
													</div>
													<!--end::Search products-->
													<!--begin::Table-->
													<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_edit_order_product_table">
														<!--begin::Table head-->
														<thead>
															<tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
																<th>Image</th>
																<th class="min-w-27px text-end pe-5">Visibilit??</th>
																<th class="min-w-33px text-end pe-5">Action</th>
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody class="fw-bold text-gray-600">
															<!--begin::Table row-->
															<!--boucler ici-->
															
															<c:forEach var="i" items="${requestScope['imgs']}" >
															<tr>
																<!--begin::Checkbox-->
																
																<!--end::Checkbox-->
																<!--begin::Product=-->
																<td>
																	<div class="d-flex align-items-center" data-kt-ecommerce-edit-order-filter="product" data-kt-ecommerce-edit-order-id="product_1">
																		<!--begin::Thumbnail-->
																		<a href="VoirImage?id=${ i.id }" class="symbol symbol-50px">
																			<span class="symbol-label" style="background-image:url(${ i.lien });"></span>
																		</a>
																		<!--end::Thumbnail-->
																		<div class="ms-5">
																			<!--begin::Title-->
																			<a href="VoirImage?id=${ i.id }" class="text-gray-800 text-hover-primary fs-5 fw-bolder">REF : ${ i.id }</a>
																			<!--end::Title-->
																			<!--begin::Price-->
																			
																			<!--end::Price-->
																			
																			<!--end::SKU-->
																		</div>
																	</div>
																</td>
																<!--end::Product=-->
																<!--begin::Qty=-->
																<c:if test="${i.del==true}">
													<td class="text-end pe-0" data-order="Ma">
														<!--begin::Badges-->
														<div class="badge badge-light-danger">Masqu??e</div>
														<!--end::Badges-->
													</td>
													</c:if>
													<c:if test="${i.del==false}">
													<td class="text-end pe-0" data-order="Visi">
														<!--begin::Badges-->
														<div class="badge badge-light-success">Visible</div>
														<!--end::Badges-->
														</td>
														</c:if>

																<!--mettre les m??mes actions que sur le produit-->
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
															<a href="VoirImage?id=${ i.id }" class="menu-link px-3">Consulter</a>
															</div>
															
															<div class="menu-item px-3">
																<a href="ModifierImage?id=${ i.id }" class="menu-link px-3">Modifier</a>
															</div>
															<!--end::Menu item-->
															<!--begin::Menu item-->										
															<c:if test="${i.del==false}">
															<div class="menu-item px-3">
																<a href="AddImage?id=${ i.id }&idtohide=${ i.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Cacher</a>
															</div>
															</c:if>
															
															<c:if test="${i.del==true}">
															<div class="menu-item px-3">
																<a href="AddImage?id=${ i.id }&idtounhide=${ i.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">R??tablir</a>
															</div>
															</c:if>
															
															<c:if test="${sessionScope.droit==1}">
															<div class="menu-item px-3">
																<a href="AddImage?id=${ cproduit.id }&idtodel=${ i.id }" class="menu-link px-3" >Supprimer</a>
															</div></c:if>
															
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
																<!--end::Qty=-->
															</tr>
															</c:forEach>
														</tbody>
														<!--end::Table body-->
													</table>
													<!--end::Table-->
												</div>
											</div>
											<!--end::Card header-->
										</div>
										
									</div>
									<!--end::Main column-->
								</form>
								<!--end::Form-->
							</div>
							<!--end::Container-->
						</div>
						
						
						<script>
                                    document.getElementById('id_categories').value=${cate.id};
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