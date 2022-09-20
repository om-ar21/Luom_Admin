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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Ajouter Produit</h1>
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
										
										<li class="breadcrumb-item text-muted"><a href="ProduitAdmin" class="text-muted text-hover-primary">Produits</a></li>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-mutedtext-dark">Ajouter</li>
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
									<div class="d-flex flex-column gap-lg-10 w-100 w-lg-300px mb-7 me-lg-10">
										<!--begin::Thumbnail settings-->
										
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
															<div class="alert alert-success">Ajout réalisé</div>
															</c:if>
															<c:if test="${messagenope==true }">
															<div class="alert alert-danger">Erreur, veuillez remplir tout les champs</div>
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
																<input type="text" name="titre" class="form-control mb-2" placeholder="Titre Produit"/>
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
																<input type="number" step="0.01" name="prix" class="form-control mb-2" placeholder="Prix Produit" />
																<!--end::Input-->
																<!--begin::Description-->
																<!--end::Description-->
															</div>
															<!--begin::Input group-->
															<div>
																<!--begin::Label-->
																<label class="required form-label">Description</label>
																
																<textarea name="description" class="form-control min-h-200px mb-2" placeholder="Entrez la description du produit"></textarea>
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
																<label class="required form-label">Quantité / Quantité d'alerte</label>
																<!--end::Label-->
																<!--begin::Input-->
																<div class="d-flex gap-3">
																	<input type="number" name="qte" class="form-control mb-2" placeholder="Stock" />
																	<input type="number" name="qtemin" class="form-control mb-2" placeholder="Quantité d'alerte"/>
																</div>
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
																
																<input type="text" name="img" class="form-control mb-2" placeholder="Lien image" value="${cproduit.img}" />
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
											
											<!--end::Tab pane-->
										</div>
										<!--end::Tab content-->
										<div class="d-flex justify-content-end">
											<!--begin::Button-->
											<a href="ProduitAdmin" id="kt_ecommerce_add_product_cancel" class="btn btn-light me-5 mb-10">Retour</a>
											<!--end::Button-->
											<!--begin::Button-->
											<button type="submit" name="bajouter" id="kt_ecommerce_add_product_submit" class="btn btn-primary mb-10">
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