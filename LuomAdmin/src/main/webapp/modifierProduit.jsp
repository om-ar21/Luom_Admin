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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1"> ${cproduit.titre}</h1>
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
										
										<li class="breadcrumb-item text-mutedtext-dark">Modifier</li>
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
								<form id="kt_ecommerce_add_product_form" class="form d-flex flex-column flex-lg-row" data-kt-redirect="ModifierProduit" method="POST">
									<!--begin::Aside column-->
									<div class="d-flex flex-column gap-7 gap-lg-10 w-100 w-lg-300px mb-7 me-lg-10">
										<!--begin::Thumbnail settings-->
										<div class="card card-flush py-4">
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
													<!--end::Preview existing avatar-->
													<!--begin::Label-->
													<!-- <label class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="change" data-bs-toggle="tooltip" title="Change avatar">
														<i class="bi bi-pencil-fill fs-7"></i>
														begin::Inputs
														<input type="file" name="avatar" accept=".png, .jpg, .jpeg" />
														<input type="hidden" name="avatar_remove" />
														end::Inputs
													</label> -->
													<!--end::Label-->
													<!--begin::Cancel-->
													<!-- <span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="cancel" data-bs-toggle="tooltip" title="Cancel avatar">
														<i class="bi bi-x fs-2"></i>
													</span>
													end::Cancel
													begin::Remove
													<span class="btn btn-icon btn-circle btn-active-color-primary w-25px h-25px bg-body shadow" data-kt-image-input-action="remove" data-bs-toggle="tooltip" title="Remove avatar">
														<i class="bi bi-x fs-2"></i>
													</span> -->
													<!--end::Remove-->
													
												</div>
												
												<div><label class="form-label">Visites : ${ requestScope.v }</label></div>
												<div>
														<!--begin::Action menu-->
														<a href="ModifierProduit?id=${cproduit.id }&idtodel=${cproduit.id }" class="btn btn-danger mt-5">Supprimer
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
														
														<!--end::Svg Icon--></a>
														<!--begin::Menu-->
														
														<!--end::Menu-->
														<!--end::Menu-->
													</div>
												<!--end::Image input-->
												<!--begin::Description-->
												<!-- <div class="text-muted fs-7">Set the product thumbnail image. Only *.png, *.jpg and *.jpeg image files are accepted</div>
												 --><!--end::Description-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Thumbnail settings-->
										<!--begin::Status-->
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
											    <c:if test="${ cproduit.del==true }">
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
												<div class="text-muted fs-7">Définir le status.</div>
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
										<!--end::Status-->
										<!--begin::Category & tags-->
										<div class="card card-flush py-4">
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
												<label class="form-label">Sous-catégories</label>
												<!--end::Label-->
												<!--begin::Select2-->
												<select name="id_categories" id="id_categories" parsley-trigger="change" required  class="form-select mb-2">
                                            	<c:forEach var="sscat" items="${requestScope['sscats']}">
												<option value="${sscat.id}">${sscat.titre}</option>
												</c:forEach>
                                            	</select>
												
												<!--end::Select2-->
												<!--begin::Description-->
												<div class="text-muted fs-7 mb-7">Ajouter le produit à une sous-catégorie.</div>
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
												<!--end::Svg Icon-->Créer une nouvelle sous-catégorie</a>
												<!--end::Button-->
												<!--begin::Input group-->
												<!--begin::Label-->
												<!-- <label class="form-label d-block">Tags</label>
												end::Label
												begin::Input
												<input id="kt_ecommerce_add_product_tags" name="kt_ecommerce_add_product_tags" class="form-control mb-2" value="new, trending, sale" />
												end::Input
												begin::Description
												<div class="text-muted fs-7">Add tags to a product.</div> -->
												<!--end::Description-->
												<!--end::Input group-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Category & tags-->
										<!--begin::Card widget 6-->
										<div class="card card-flush">
											<!--begin::Header-->
											<!-- <div class="card-header pt-5">
												begin::Title
												<div class="card-title d-flex flex-column">
													begin::Info
													<div class="d-flex align-items-center">
														begin::Currency
														<span class="fs-4 fw-bold text-gray-400 me-1 align-self-start">$</span>
														end::Currency
														begin::Amount
														<span class="fs-2hx fw-bolder text-dark me-2 lh-1">2,420</span>
														end::Amount
														begin::Badge
														<span class="badge badge-success fs-6 lh-1 py-1 px-2 d-flex flex-center" style="height: 22px">
														begin::Svg Icon | path: icons/duotune/arrows/arr067.svg
														<span class="svg-icon svg-icon-7 svg-icon-white ms-n1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<path opacity="0.5" d="M13 9.59998V21C13 21.6 12.6 22 12 22C11.4 22 11 21.6 11 21V9.59998H13Z" fill="black" />
																<path d="M5.7071 7.89291C5.07714 8.52288 5.52331 9.60002 6.41421 9.60002H17.5858C18.4767 9.60002 18.9229 8.52288 18.2929 7.89291L12.7 2.3C12.3 1.9 11.7 1.9 11.3 2.3L5.7071 7.89291Z" fill="black" />
															</svg>
														</span>
														end::Svg Icon2.6%</span>
														end::Badge
													</div>
													end::Info
													begin::Subtitle
													<span class="text-gray-400 pt-1 fw-bold fs-6">Average Daily Sales</span>
													end::Subtitle
												</div>
												end::Title
											</div> -->
											<!--end::Header-->
											<!--begin::Card body-->
											
											<!--end::Card body-->
										</div>
										<!--end::Card widget 6-->
										<!--begin::Template settings-->
										
										<!--end::Template settings-->
									</div>
									<!--end::Aside column-->
									<!--begin::Main column-->
									<div class="d-flex flex-column flex-row-fluid gap-7 gap-lg-10">
										<!--begin:::Tabs-->
										<ul class="nav nav-custom nav-tabs nav-line-tabs nav-line-tabs-2x border-0 fs-4 fw-bold mb-n2">
											<!--begin:::Tab item-->
											
											<li class="nav-item">
											<!--begin::Button-->
											<a href="ProduitAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-secondary">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											
											</li>
											<li class="nav-item">
												<a class="nav-link text-active-primary pb-4 active" data-bs-toggle="tab" href="#kt_ecommerce_add_product_general">Général</a>
											</li>
											<!--end:::Tab item-->
											<!--begin:::Tab item-->
											<!-- <li class="nav-item">
												<a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_add_product_advanced">Advanced</a>
											</li> -->
											<!--end:::Tab item-->
											<!--begin:::Tab item-->
											<li class="nav-item">
												<a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_add_product_reviews">Commentaires</a>
											</li>
											<!--end:::Tab item-->
											<li class="nav-item">
												<a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_add_product_cmd">Interface commandes<c:if test="${recu==true }"><div class="badge badge-light-success ms-7">Ajouter articles au stock</div></c:if><c:if test="${qcom!=0 }"><div class="badge badge-light-warning ms-7">Livraison en cours</div></c:if></a>
											</li>
											
											
										</ul>
									
										<!--end:::Tabs-->
										<!--begin::Tab content-->
										<div class="tab-content">
											<!--begin::Tab pane-->
											<div class="tab-pane fade show active" id="kt_ecommerce_add_product_general" role="tab-panel">
												<div class="d-flex flex-column gap-7 gap-lg-10">
													<!--begin::General options-->
													<div class="card card-flush py-4">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2>Général</h2>
															</div>
															<div>
												<c:if test="${messageok==true }">
															<div class="alert alert-success">Modification réalisée</div>
															</c:if>
															<c:if test="${messagenope==true }">
															<div class="alert alert-danger">Erreur, veuillez remplir le(s) champs</div>
															</c:if>
												</div>
														</div>
														<!--end::Card header-->
														<!--begin::Card body-->
														<div class="card-body pt-0">
															<!--begin::Input group-->
															<div class="mb-10 fv-row">
																<!--begin::Label-->
																<label class="required form-label">Titre</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="text" name="titre" class="form-control mb-2" placeholder="${cproduit.titre}" value="${cproduit.titre}" />
																<!--end::Input-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Doit être unique.</div>
																<!--end::Description-->
															</div>
															<!--end::Input group-->
															<div class="mb-10 fv-row">
																<!--begin::Label-->
																<label class="required form-label">Prix</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="number" step="0.01" name="prix" class="form-control mb-2" placeholder="${cproduit.prix}" value="${cproduit.prix}" />
																<!--end::Input-->
																<!--begin::Description-->
																<!--end::Description-->
															</div>
															<!--begin::Input group-->
															<div>
																<!--begin::Label-->
																<label class="required form-label">Description</label>
																
																<textarea name="description" class="form-control min-h-200px mb-2" placeholder="${cproduit.presentation}">${cproduit.presentation}</textarea>
																<!--end::Label-->
																<!--begin::Editor-->
																<!-- <div id="kt_ecommerce_add_product_description" name="kt_ecommerce_add_product_description" class="min-h-200px mb-2" ></div>
																end::Editor
																begin::Description
																<div class="text-muted fs-7">Set a description to the product for better visibility.</div> -->
																<!--end::Description-->
															</div>
															<!--end::Input group-->
															<div class="mt-10 fv-row">
																<!--begin::Label-->
																<label class="required form-label">Quantité / Quantité d'alerte / Quantité commandée</label>
																<!--end::Label-->
																<!--begin::Input-->
																<div class="d-flex gap-3">
																	<input type="number" name="qte" class="form-control mb-2" placeholder="${cproduit.stock }" value="${cproduit.stock }" />
																	<input type="number" name="qtecrit" class="form-control mb-2" placeholder="${cproduit.stock_minimum }" value="${cproduit.stock_minimum }" />
																	<p class="form-control mb-2">${qcom }</p></div>
															
																
																<!--end::Input-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Saisir la quantité en stock et le stock d'alerte</div>
																<!--end::Description-->
															</div>
															
														</div>
														<!--end::Card header-->
													</div>
													<!--end::General options-->
													<!--begin::Media-->
													<div class="card card-flush py-4">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2 class="required">Image</h2>
															</div>
															<div class="card-title">
															<a href="AddImage?id=${cproduit.id }" class="btn btn-light-primary btn-sm">Menu Images</a>
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
																
																<input type="text" name="img" class="form-control mb-2" placeholder="${cproduit.img}" value="${cproduit.img}" />
																<!--end::Dropzone-->
															</div>
															<!--end::Input group-->
															<!--begin::Description-->
															<div class="text-muted fs-7">Définir une image principale.</div>
															<!--end::Description-->
														</div>
														<!--end::Card header-->
													</div>
													
													<!--end::Media-->
													<!--begin::Pricing-->
													<!-- <div class="card card-flush py-4">
														begin::Card header
														<div class="card-header">
															<div class="card-title">
																<h2>Promotion</h2>
															</div>
														</div>
														end::Card header
														begin::Card body
														<div class="card-body pt-0">
															begin::Input group
															<div class="mb-10 fv-row">
																begin::Label
																<label class="required form-label">Base Price</label>
																end::Label
																begin::Input
																<input type="text" name="price" class="form-control mb-2" placeholder="Product price" value="199.99" />
																end::Input
																begin::Description
																<div class="text-muted fs-7">Set the product price.</div>
																end::Description
															</div>
															end::Input group
															begin::Input group
															<div class="fv-row mb-10">
																begin::Label
																<label class="fs-6 fw-bold mb-2">Discount Type
																<i class="fas fa-exclamation-circle ms-2 fs-7" data-bs-toggle="tooltip" title="Select a discount type that will be applied to this product"></i></label>
																End::Label
																begin::Row
																<div class="row row-cols-1 row-cols-md-3 row-cols-lg-1 row-cols-xl-3 g-9" data-kt-buttons="true" data-kt-buttons-target="[data-kt-button='true']">
																	begin::Col
																	<div class="col">
																		begin::Option
																		<label class="btn btn-outline btn-outline-dashed btn-outline-default d-flex text-start p-6" data-kt-button="true">
																			begin::Radio
																			<span class="form-check form-check-custom form-check-solid form-check-sm align-items-start mt-1">
																				<input class="form-check-input" type="radio" name="discount_option" value="1" />
																			</span>
																			end::Radio
																			begin::Info
																			<span class="ms-5">
																				<span class="fs-4 fw-bolder text-gray-800 d-block">No Discount</span>
																			</span>
																			end::Info
																		</label>
																		end::Option
																	</div>
																	end::Col
																	begin::Col
																	<div class="col">
																		begin::Option
																		<label class="btn btn-outline btn-outline-dashed btn-outline-default active d-flex text-start p-6" data-kt-button="true">
																			begin::Radio
																			<span class="form-check form-check-custom form-check-solid form-check-sm align-items-start mt-1">
																				<input class="form-check-input" type="radio" name="discount_option" value="2" checked="checked" />
																			</span>
																			end::Radio
																			begin::Info
																			<span class="ms-5">
																				<span class="fs-4 fw-bolder text-gray-800 d-block">Percentage %</span>
																			</span>
																			end::Info
																		</label>
																		end::Option
																	</div>
																	end::Col
																	begin::Col
																	<div class="col">
																		begin::Option
																		<label class="btn btn-outline btn-outline-dashed btn-outline-default d-flex text-start p-6" data-kt-button="true">
																			begin::Radio
																			<span class="form-check form-check-custom form-check-solid form-check-sm align-items-start mt-1">
																				<input class="form-check-input" type="radio" name="discount_option" value="3" />
																			</span>
																			end::Radio
																			begin::Info
																			<span class="ms-5">
																				<span class="fs-4 fw-bolder text-gray-800 d-block">Fixed Price</span>
																			</span>
																			end::Info
																		</label>
																		end::Option
																	</div>
																	end::Col
																</div>
																end::Row
															</div>
															end::Input group
															begin::Input group
															<div class="mb-10 fv-row" id="kt_ecommerce_add_product_discount_percentage">
																begin::Label
																<label class="form-label">Set Discount Percentage</label>
																end::Label
																begin::Slider
																<div class="d-flex flex-column text-center mb-5">
																	<div class="d-flex align-items-start justify-content-center mb-7">
																		<span class="fw-bolder fs-3x" id="kt_ecommerce_add_product_discount_label">0</span>
																		<span class="fw-bolder fs-4 mt-1 ms-2">%</span>
																	</div>
																	<div id="kt_ecommerce_add_product_discount_slider" class="noUi-sm"></div>
																</div>
																end::Slider
																begin::Description
																<div class="text-muted fs-7">Set a percentage discount to be applied on this product.</div>
																end::Description
															</div>
															end::Input group
															begin::Input group
															<div class="d-none mb-10 fv-row" id="kt_ecommerce_add_product_discount_fixed">
																begin::Label
																<label class="form-label">Fixed Discounted Price</label>
																end::Label
																begin::Input
																<input type="text" name="dicsounted_price" class="form-control mb-2" placeholder="Discounted price" />
																end::Input
																begin::Description
																<div class="text-muted fs-7">Set the discounted product price. The product will be reduced at the determined fixed price</div>
																end::Description
															</div>
															end::Input group
															begin::Tax
															<div class="d-flex flex-wrap gap-5">
																begin::Input group
																<div class="fv-row w-100 flex-md-root">
																	begin::Label
																	<label class="required form-label">Tax Class</label>
																	end::Label
																	begin::Select2
																	<select class="form-select mb-2" name="tax" data-control="select2" data-hide-search="true" data-placeholder="Select an option">
																		<option></option>
																		<option value="0">Tax Free</option>
																		<option value="1" selected="selected">Taxable Goods</option>
																		<option value="2">Downloadable Product</option>
																	</select>
																	end::Select2
																	begin::Description
																	<div class="text-muted fs-7">Set the product tax class.</div>
																	end::Description
																</div>
																end::Input group
																begin::Input group
																<div class="fv-row w-100 flex-md-root">
																	begin::Label
																	<label class="form-label">VAT Amount (%)</label>
																	end::Label
																	begin::Input
																	<input type="text" class="form-control mb-2" value="35" />
																	end::Input
																	begin::Description
																	<div class="text-muted fs-7">Set the product VAT about.</div>
																	end::Description
																</div>
																end::Input group
															</div>
															end:Tax
														</div>
														end::Card header
													</div> -->
													<!--end::Pricing-->
												</div>
												<div class="d-flex justify-content-end mt-10">
											
											<button type="submit" name="bajouter" id="kt_ecommerce_add_product_submit" class="btn btn-primary mb-10">
												<span class="indicator-label">Sauvegarder</span>
												<span class="indicator-progress">Please wait...
												<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
											</button>
											<!--end::Button-->
										</div>
											</div>
											<!--end::Tab pane-->
											<!--begin::Tab pane-->
											<%-- <div class="tab-pane fade" id="kt_ecommerce_add_product_advanced" role="tab-panel">
												<div class="d-flex flex-column gap-7 gap-lg-10">
													<!--begin::Inventory-->
													<div class="card card-flush py-4">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2>Inventory</h2>
															</div>
														</div>
														<!--end::Card header-->
														<!--begin::Card body-->
														<div class="card-body pt-0">
															<!--begin::Input group-->
															
															<!--end::Input group-->
															<!--begin::Input group-->
															
															<!--end::Input group-->
															<!--begin::Input group-->
															<div class="mb-10 fv-row">
																<!--begin::Label-->
																<label class="required form-label">Quantity</label>
																<!--end::Label-->
																<!--begin::Input-->
																<div class="d-flex gap-3">
																	<input type="number" name="qte" class="form-control mb-2" placeholder="${cproduit.stock }" value="${cproduit.stock }" />
																	<input type="number" name="warehouse" class="form-control mb-2" placeholder="In warehouse" />
																</div>
																<!--end::Input-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Enter the product quantity.</div>
																<!--end::Description-->
															</div>
															<!--end::Input group-->
															<!--begin::Input group-->
															<!-- <div class="fv-row">
																begin::Label
																<label class="form-label">Allow Backorders</label>
																end::Label
																begin::Input
																<div class="form-check form-check-custom form-check-solid mb-2">
																	<input class="form-check-input" type="checkbox" value="" />
																	<label class="form-check-label">Yes</label>
																</div>
																end::Input
																begin::Description
																<div class="text-muted fs-7">Allow customers to purchase products that are out of stock.</div>
																end::Description
															</div> -->
															<!--end::Input group-->
														</div>
														<!--end::Card header-->
													</div>
													<!--end::Inventory-->
													<!--begin::Variations-->
													
													<!--end::Variations-->
													<!--begin::Shipping-->
													<!-- <div class="card card-flush py-4">
														begin::Card header
														<div class="card-header">
															<div class="card-title">
																<h2>Shipping</h2>
															</div>
														</div>
														end::Card header
														begin::Card body
														<div class="card-body pt-0">
															begin::Input group
															<div class="fv-row">
																begin::Input
																<div class="form-check form-check-custom form-check-solid mb-2">
																	<input class="form-check-input" type="checkbox" id="kt_ecommerce_add_product_shipping_checkbox" value="1" checked="checked" />
																	<label class="form-check-label">This is a physical product</label>
																</div>
																end::Input
																begin::Description
																<div class="text-muted fs-7">Set if the product is a physical or digital item. Physical products may require shipping.</div>
																end::Description
															</div>
															end::Input group
															begin::Shipping form
															<div id="kt_ecommerce_add_product_shipping" class="mt-10">
																begin::Input group
																<div class="mb-10 fv-row">
																	begin::Label
																	<label class="form-label">Weight</label>
																	end::Label
																	begin::Editor
																	<input type="text" name="weight" class="form-control mb-2" placeholder="Product weight" value="4.3" />
																	end::Editor
																	begin::Description
																	<div class="text-muted fs-7">Set a product weight in kilograms (kg).</div>
																	end::Description
																</div>
																end::Input group
																begin::Input group
																<div class="fv-row">
																	begin::Label
																	<label class="form-label">Dimension</label>
																	end::Label
																	begin::Input
																	<div class="d-flex flex-wrap flex-sm-nowrap gap-3">
																		<input type="number" name="width" class="form-control mb-2" placeholder="Width (w)" value="12" />
																		<input type="number" name="height" class="form-control mb-2" placeholder="Height (h)" value="4" />
																		<input type="number" name="length" class="form-control mb-2" placeholder="Lengtn (l)" value="8.5" />
																	</div>
																	end::Input
																	begin::Description
																	<div class="text-muted fs-7">Enter the product dimensions in centimeters (cm).</div>
																	end::Description
																</div>
																end::Input group
															</div>
															end::Shipping form
														</div>
														end::Card header
													</div> -->
													<!--end::Shipping-->
													<!--begin::Meta options-->
													<div class="card card-flush py-4">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2>Meta Options</h2>
															</div>
														</div>
														<!--end::Card header-->
														<!--begin::Card body-->
														<div class="card-body pt-0">
															<!--begin::Input group-->
															<div class="mb-10">
																<!--begin::Label-->
																<label class="form-label">Meta Tag Title</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="text" class="form-control mb-2" name="meta_title" placeholder="Meta tag name" />
																<!--end::Input-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Set a meta tag title. Recommended to be simple and precise keywords.</div>
																<!--end::Description-->
															</div>
															<!--end::Input group-->
															<!--begin::Input group-->
															<div class="mb-10">
																<!--begin::Label-->
																<label class="form-label">Meta Tag Description</label>
																<!--end::Label-->
																<!--begin::Editor-->
																<div id="kt_ecommerce_add_product_meta_description" name="kt_ecommerce_add_product_meta_description" class="min-h-100px mb-2"></div>
																<!--end::Editor-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Set a meta tag description to the product for increased SEO ranking.</div>
																<!--end::Description-->
															</div>
															<!--end::Input group-->
															<!--begin::Input group-->
															<div>
																<!--begin::Label-->
																<label class="form-label">Meta Tag Keywords</label>
																<!--end::Label-->
																<!--begin::Editor-->
																<input id="kt_ecommerce_add_product_meta_keywords" name="kt_ecommerce_add_product_meta_keywords" class="form-control mb-2" />
																<!--end::Editor-->
																<!--begin::Description-->
																<div class="text-muted fs-7">Set a list of keywords that the product is related to. Separate the keywords by adding a comma
																<code>,</code>between each keyword.</div>
																<!--end::Description-->
															</div>
															<!--end::Input group-->
														</div>
														<!--end::Card header-->
													</div>
													<!--end::Meta options-->
												</div>
											</div> --%>
											<!--end::Tab pane-->
											<!--begin::Tab pane-->
											<div class="tab-pane fade mb-10" id="kt_ecommerce_add_product_reviews" role="tab-panel">
												<div class="d-flex flex-column gap-7 gap-lg-10">
													<!--begin::Reviews-->
													<div class="card card-flush py-4 mb-10">
														<!--begin::Card header-->
														<div class="card-header">
															<!--begin::Card title-->
															<div class="card-title">
																<h2>Commentaires Client</h2>
															</div>
															<!--end::Card title-->
															<!--begin::Card toolbar-->
															<div class="card-toolbar">
																<!--begin::Rating label-->
																<span class="fw-bolder me-5">Note Global:</span>
																<!--end::Rating label-->
																<!--begin::Overall rating-->
																<div class="rating">
																<c:choose>
																<c:when test="${ empty requestScope['coms'] }">Produit non noté</c:when>
																<c:otherwise>
																	<c:forEach var="i" begin="1" end="${ requestScope.rate }">
				                                           			<div class="rating-label checked">
																					<!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->
																					<span class="svg-icon svg-icon-2">
																						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																							<path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z" fill="black" />
																						</svg>
																					</span>
																					<!--end::Svg Icon-->
																				</div>
				                                        			</c:forEach>
				                                        			<c:forEach begin="${ requestScope.rate }" end="4">
				                                        			<div class="rating-label">
																					<!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->
																					<span class="svg-icon svg-icon-2">
																						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																							<path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z" fill="black" />
																						</svg>
																					</span>
																					<!--end::Svg Icon-->
																				</div>
				                                        			</c:forEach>
				                                        			</c:otherwise></c:choose>
																</div>
																<!--end::Overall rating-->
															</div>
															<!--end::Card toolbar-->
														</div>
														<!--end::Card header-->
														<!--begin::Card body-->
														<div class="card-body pt-0">
															<!--begin::Table-->
															<div class="table-responsive">
															<table class="table table-row-dashed fs-6 gy-5 my-0" id="kt_ecommerce_add_product_reviews">
																<!--begin::Table head-->
																<thead>
																	<tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
																		<th class="min-w-70px fs-7">Action</th>
																		<th class="min-w-100px">Note</th>
																		
																		<th class="min-w-150px">Commentaire</th>
																		<th class="min-w-150px">Client</th>
																		<th class="min-w-70px">Etat</th>
																		<th class="min-w-100px">Date</th>
																		
																	</tr>
																</thead>
																<!--end::Table head-->
																<!--begin::Table body-->
																<tbody>
																<c:forEach var="c" items="${requestScope['coms']}" >
												
																	<tr>
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
															
															<!--end::Menu item-->
															<!--begin::Menu item-->
															
															<c:if test="${c.del==false}">
															<div class="menu-item px-3">
																<a href="ModifierProduit?id=${cproduit.id }&idtohide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Cacher</a>
															</div>
															</c:if>
															
															<c:if test="${c.del==true}">
															<div class="menu-item px-3">
																<a href="ModifierProduit?id=${cproduit.id }&idtounhide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Rétablir</a>
															</div>
															</c:if>
															
															<div class="menu-item px-3">
																<a href="ModifierProduit?id=${cproduit.id }&idtodelcom=${ c.id }" class="menu-link px-3" >Supprimer</a>
															</div>
															
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
																		<td data-order="rating-5">
																			<!--begin::Rating-->
																			<div class="rating">
																			
																			<c:forEach var="i" begin="1" end="${ c.note }">
                            													<div class="rating-label checked">
																					<!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->
																					<span class="svg-icon svg-icon-2">
																						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																							<path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z" fill="black" />
																						</svg>
																					</span>
																					<!--end::Svg Icon-->
																				</div>
			              													</c:forEach>
																			<c:forEach begin="${ c.note }" end="4">
                                        									<div class="rating-label">
																					<!--begin::Svg Icon | path: icons/duotune/general/gen029.svg-->
																					<span class="svg-icon svg-icon-2">
																						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																							<path d="M11.1359 4.48359C11.5216 3.82132 12.4784 3.82132 12.8641 4.48359L15.011 8.16962C15.1523 8.41222 15.3891 8.58425 15.6635 8.64367L19.8326 9.54646C20.5816 9.70867 20.8773 10.6186 20.3666 11.1901L17.5244 14.371C17.3374 14.5803 17.2469 14.8587 17.2752 15.138L17.7049 19.382C17.7821 20.1445 17.0081 20.7069 16.3067 20.3978L12.4032 18.6777C12.1463 18.5645 11.8537 18.5645 11.5968 18.6777L7.69326 20.3978C6.99192 20.7069 6.21789 20.1445 6.2951 19.382L6.7248 15.138C6.75308 14.8587 6.66264 14.5803 6.47558 14.371L3.63339 11.1901C3.12273 10.6186 3.41838 9.70867 4.16744 9.54646L8.3365 8.64367C8.61089 8.58425 8.84767 8.41222 8.98897 8.16962L11.1359 4.48359Z" fill="black" />
																						</svg>
																					</span>
																					<!--end::Svg Icon-->
																				</div>
                                        			
                                        									</c:forEach>
                           
																				
																				
																				
																				
																			</div>
																			<!--end::Rating-->
																		</td>
																		
																		<td class="text-gray-500 fw-bolder">${ c.contenu }</td>
																		<td>
																			<a href="Userdetail?iduser=${ c.getUser().id }" class="d-flex text-dark text-gray-800 text-hover-primary">
																				<!--begin::Avatar-->
																				<!-- <div class="symbol symbol-circle symbol-25px me-3">
																					<div class="symbol-label bg-light-danger">
																						<span class="text-danger">M</span>
																					</div>
																				</div>
																				<div class="symbol symbol-circle symbol-25px me-3">
																					<span class="symbol-label" style="background-image:url(assets/media/avatars/300-1.jpg)"></span>
																				</div> -->
																				<!--end::Avatar-->
																				<!--begin::Name-->
																				<span class="fw-bolder">${ c.getUser().nom } ${ c.getUser().prenom }</span>
																				<!--end::Name-->
																			</a>
																		</td>
																		<c:if test="${c.del==true}">
																		<td class=" pe-0" data-order="Ma">
																			<!--begin::Badges-->
																			<div class="badge badge-light-danger">Masqué</div>
																			<!--end::Badges-->
																		</td>
																		</c:if>
																		<c:if test="${c.del==false}">
																		<td class=" pe-0" data-order="Visi">
																			<!--begin::Badges-->
																			<div class="badge badge-light-success">Visible</div>
																			
																			<!--end::Badges-->
																			</td>
																			</c:if>
																		
																		<td>
																			<span class="fw-bold text-muted">${ c.day }</span>
																		</td>
																		
																	</tr>
																	
																</c:forEach>
																	
																	
																</tbody>
																<!--end::Table body-->
															</table>
															</div>
															<!--end::Table-->
														</div>
														<!--end::Card body-->
													</div>
													<!--end::Reviews-->
												</div>
												
											</div>
											
											<div class="tab-pane fade mb-10" id="kt_ecommerce_add_product_cmd" role="tab-panel">
											<div class="card card-flush py-4 mb-10">
														<!--begin::Card header-->
														<div class="card-header">
															<div class="card-title">
																<h2>Passer Commande</h2>
																
															</div>
															<div class="card-title">
															<button type="submit" name="bajouterc" id="kt_ecommerce_edit_order_submit" class="btn btn-light-primary btn-sm">
																<span class="indicator-label">Valider Commande</span>
																<span class="indicator-progress">Please wait...
																<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
															</button>
															</div>
														</div>
														
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
																<label class="required form-label">Fournisseur</label>
																<select name="id_f" id="id_f" parsley-trigger="change" required  class="form-select mb-2">
				                                            	<c:forEach var="f" items="${requestScope['fours']}">
																<option value="${f.id}">${f.nom}</option>
																</c:forEach>
				                                            	</select>
				                                            	<label class="required form-label">Quantité</label>
																<input type="text" name="qtec" class="form-control mb-2"/>
																
																<!--end::Dropzone-->
															</div>
															<!--end::Input group-->
															<!--begin::Description-->
															
															<!--end::Description-->
														</div>
														<!--end::Card header-->
													</div>
													
													<div class="card card-flush py-4 mb-10">
											<!--begin::Card header-->
											<div class="card-header">
												
												<div class="card-title">
													<h2>Commandes pour ce produit</h2>
												</div>
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
														<input type="text" data-kt-ecommerce-edit-order-filter="search" class="form-control form-control-solid w-100 w-lg-50 ps-14" placeholder="Chercher Commande" />
														
														
													</div>
													<!--end::Search products-->
													<!--begin::Table-->
													<div class="table-responsive">
													<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_edit_order_product_table">
														<!--begin::Table head-->
														<thead>
															<tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
																<th class="min-w-50px">REF</th>
																<th class="min-w-70px text-center pe-5">Etat</th>
																<th class="min-w-70px text-center pe-5">Action</th>
																<th class="min-w-30px text-center pe-5">Qté com</th>
																<th class="min-w-100px text-end pe-5">Date</th>
															</tr>
														</thead>
														<!--end::Table head-->
														<!--begin::Table body-->
														<tbody class="fw-bold text-gray-600">
															<!--begin::Table row-->
															<!--boucler ici-->
															
															
															<c:forEach var="e" items="${requestScope['eess']}" >
															
															<c:forEach var="ed" items="${requestScope['eesdel2']}" >
															<c:if test="${ e.id==ed.id }"><c:set var="idel" value="${ ed.id }" scope="page"></c:set></c:if>
															</c:forEach>
															
															<tr>
																<!--begin::Checkbox-->
																
																<!--end::Checkbox-->
																<!--begin::Product=-->
																<td>
																	
																		
																			<!--begin::Title-->N° ${ e.id }
																			
																</td>
																
																<c:if test="${e.del==true}">
													<td class="text-center pe-0" data-order="Ma">
														<!--begin::Badges-->
														<div class="badge badge-light-success">Reçue
														
														
														
														<c:if test="${e.id!=idel }"><div><a href="InterfaceStock?id=${ e.id_fournisseur }&idp=${e.id_produit}&ide=${e.id}&add=${e.qte}" class="badge badge-success">+ stock</a></div></div></c:if>
														<!--end::Badges-->
													</td>
													</c:if>
													<c:if test="${e.del==false}">
													<td class="text-center pe-0" data-order="Visi">
														<!--begin::Badges-->
														<div class="badge badge-light-warning">En traitement</div>
														<!--end::Badges-->
														</td>
														</c:if>
																<td class="text-center">
													
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
															<c:if test="${e.del==false}">
															<div class="menu-item px-3">
																<a href="InterfaceStock?id=${ e.id_fournisseur }&idtohide=${ e.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Reçue</a>
															</div>
															</c:if>
															
															<c:if test="${e.del==true}">
															<div class="menu-item px-3">
																<a href="InterfaceStock?id=${ e.id_fournisseur }&idtounhide=${ e.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">remonter pb</a>
															</div>
															</c:if>
															
															<div class="menu-item px-3">
																<a href="InterfaceStock?id=${ e.id_fournisseur }&idtodelees=${ e.id }" class="menu-link px-3" >Supprimer</a>
															</div>
															
															<!--end::Menu item-->
														</div>
														<!--end::Menu-->
													</td>
																<td class="text-center">${ e.qte }</td>
																<td class="text-end">${ e.datee }</td>
																<!--end::Product=-->
																<!--begin::Qty=-->
																

																<!--mettre les mêmes actions que sur le produit-->
																
																<!--end::Qty=-->
															</tr>
															</c:forEach>
															
															
														</tbody>
														<!--end::Table body-->
													</table>
													</div>
													<!--end::Table-->
												</div>
											</div>
											<!--end::Card header-->
										</div>
												
													</div>
											<!--end::Tab pane-->
										</div>
										<!--end::Tab content-->
										
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
		<script src="assets/js/custom/apps/ecommerce/catalog/save-product.js"></script>
		<script src="assets/js/widgets.bundle.js"></script>
		<script src="assets/js/custom/widgets.js"></script>
		<script src="assets/js/custom/apps/chat/chat.js"></script>
		<script src="assets/js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="assets/js/custom/utilities/modals/create-app.js"></script>
		<script src="assets/js/custom/utilities/modals/users-search.js"></script>

</body>
</html>