<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Favoris"%> 
    <%@page import="model.FavorisDAO"%>
<%ArrayList<Favoris> fav = new ArrayList<Favoris>();
    fav =(ArrayList)request.getAttribute("fav");%>
       <%@page import="model.Adresse"%> 
    <%@page import="model.AdresseDAO"%> 
    <%@page import="model.Commande"%> 
    <%@page import="model.CommandeDAO"%> 
           <%@page import="model.Recherche"%> 
    <%@page import="model.RechercheDAO"%> 
    <%@page import="java.util.ArrayList"%>
   <%ArrayList<Adresse> adr = new ArrayList<Adresse>();%>  
    <%ArrayList<Recherche> rech = new ArrayList<Recherche>();
    ArrayList<Commande> cmd = new ArrayList<Commande>();
    rech=(ArrayList)request.getAttribute("rech");
    adr=(ArrayList)request.getAttribute("adr");
    cmd=(ArrayList)request.getAttribute("cmd");
    %>  
    
    <%@page import="model.Visite"%> 
    <%@page import="model.VisiteDAO"%>
<%ArrayList<Visite> vis = new ArrayList<Visite>();%>
<%vis = (ArrayList)request.getAttribute("vis");%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
									<h1 class="d-flex align-items-center text-dark fw-bolder fs-3 my-1">Détail client</h1>
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
										<li class="breadcrumb-item text-muted">Clients/commandes</li>
										<!--end::Item-->
										<!--begin::Item-->
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<!--end::Item-->
										<!--begin::Item-->
										<c:if test="${user.del==false && user.id!=1}">
										<li class="breadcrumb-item text-muted"><a href="Utilisateur" class="text-muted text-hover-primary">Compte client</a></li>
										</c:if>
										
										<c:if test="${user.del==true }">
										<li class="breadcrumb-item text-muted"><a href="UnactiveUser" class="text-muted text-hover-primary">Compte désactivés</a></li>
										</c:if>
										
										<c:if test="${user.id==1 }">
										<li class="breadcrumb-item text-muted"><a href="UnactiveUser" class="text-muted text-hover-primary">Compte désactivés</a></li>
										</c:if>
										
										<li class="breadcrumb-item">
											<span class="bullet bg-gray-300 w-5px h-2px"></span>
										</li>
										
										<li class="breadcrumb-item text-mutedtext-dark">Détails</li>
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


<div class="wrapper pt-7 content d-flex flex-column flex-column-fluid" id="kt_content">
						
						<div class="post d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div id="kt_content_container" class="container-xxl">
							
							
								<!--begin::Layout-->
								<div class="d-flex flex-column flex-xl-row">
									<!--begin::Sidebar-->
									<div class="flex-column flex-lg-row-auto w-100 w-xl-350px">
										<!--begin::Card-->
										<div class="card mb-5">
											<!--begin::Card body-->
											<div class="card-body pt-15">
												<!--begin::Summary-->
												<div class="d-flex flex-center flex-column">
													<!--begin::Avatar-->
													<div class="symbol symbol-150px symbol-circle mb-2">
														<img src="assets/media/avatars/blank.png" alt="image" />
													</div>
													<!--end::Avatar-->
													<!--begin::Name-->
													<span class="fs-3 text-gray-800 text-hover-primary fw-bolder mb-1">${user.nom} ${user.prenom}</span>
													<!--end::Name-->
													<!--begin::Email-->
													
													<!--end::Email-->
												</div>
												<!--end::Summary-->
												<!--begin::Details toggle-->
												<div class="d-flex flex-stack fs-4 py-3">
													<div class="fw-bolder">Détails</div>
													<!--begin::Badge-->
													
													<!--begin::Badge-->
												</div>
												<!--end::Details toggle-->
												<div class="separator separator-dashed my-3"></div>
												<!--begin::Details content-->
												<div class="pb-5 fs-6">
													<!--begin::Details item-->
													<div class="fw-bolder mt-5">ID du compte</div>
													<div class="text-gray-600">ID-${user.id }</div>
													<!--begin::Details item-->
													<!--begin::Details item-->
													<c:if test="${user.id!=1}">
													<div class="fw-bolder mt-5">Email</div>
													<div class="text-gray-600">
													<a href="mailto:${user.email}">
														<span class="text-gray-600 text-hover-primary">${user.email}</span>
													</a>
													</div>
													</c:if>
													
													<!--begin::Details item-->
												</div>
												<!--end::Details content-->
											</div>
											<!--end::Card body-->
										</div>
										<!--end::Card-->
										<a href="Utilisateur" id="kt_ecommerce_add_product_cancel" class="m-4 btn btn-primary">Retour</a>
									</div>
									
									<!--end::Sidebar-->
									<!--begin::Content-->
									<div class="flex-lg-row-fluid ms-lg-15">
										<!--begin:::Tabs-->
										<ul class="nav nav-custom nav-tabs nav-line-tabs nav-line-tabs-2x border-0 fs-4 fw-bold mb-8">
                                            <!--begin:::Tab item-->
                                            <c:if test="${user.id!=1}">
                                            <li class="nav-item">
                                                <a class="nav-link text-active-primary pb-4 <c:if test="${user.id!=1}">active</c:if>" data-bs-toggle="tab" href="#kt_ecommerce_customer_overview">Infos</a>
                                            </li></c:if>
                                            <!--end:::Tab item-->
                                            <!--begin:::Tab item-->
                                            <li class="nav-item">
                                                <a class="nav-link text-active-primary pb-4 <c:if test="${user.id==1}">active</c:if>" data-bs-toggle="tab" href="#kt_ecommerce_customer_general">Historique de commandes</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_customer_commentaire">Commentaires</a>
                                            </li>
                                            <!--end:::Tab item-->
                                            <!--begin:::Tab item-->
                                            <c:if test="${user.id!=1}">
                                            <li class="nav-item">
                                                <a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_customer_favoris">Favoris</a>
                                            </li></c:if>
                                            <li class="nav-item">
                                                <a class="nav-link text-active-primary pb-4" data-bs-toggle="tab" href="#kt_ecommerce_customer_interet">Intérêts</a>
                                            </li>
                                            <!--end:::Tab item-->
                                        </ul>
										<!--end:::Tabs-->
										<!--begin:::Tab content-->
										<div class="tab-content" id="myTabContent">
											<!--begin:::Tab pane-->
											<c:if test="${user.id!=1}">
											<div class="tab-pane fade <c:if test="${user.id!=1}">show active</c:if>" id="kt_ecommerce_customer_overview" role="tabpanel">
											
												<!--begin::Card-->
												<div class="card pt-4 mb-xl-7">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Général</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0">
														<!--begin::Table wrapper-->
														<div class="table-responsive">
															<!--begin::Table-->
															<table class="table align-middle table-row-dashed gy-5" id="kt_table_users_login_session">
																<!--begin::Table body-->
																<tbody class="fs-6 fw-bold text-gray-600">
																		
																		<tr>
																		<td>Email</td>
																		
																		<td><a href="mailto:${user.email}" class="text-muted text-hover-primary">${user.email}</a></td>
																
																	</tr>
																		<tr>
																		<td>Date d'inscription</td>
																		<td>${user.inscription}</td>
																
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
											
												
												<!--begin::Card-->
													<div class="card pt-4">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Adresses de livraison</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0">
													<%if(adr.isEmpty()){%>
													<span class="d-flex justify-content-center text-gray-600"> Aucune adresse de livraison n'est fournie par cet utilisateur </span>
													<%}else { %>
														<!--begin::Table-->
														<div class="table-responsive">
														<table class="table align-middle table-row-dashed gy-5" id="kt_table_customers_payment">
															<!--begin::Table head-->
															<thead class="border-bottom border-gray-200 fs-7 fw-bolder">
																<!--begin::Table row-->
																<tr class="text-start text-muted text-uppercase gs-0">
																	<th class="min-w-100px">Rue</th>
																	<th>Code postal</th>
																	<th>Ville</th>
																	<th>Pays</th>
																</tr>
																<!--end::Table row-->
															</thead>
															<!--end::Table head-->
															<!--begin::Table body-->
															<tbody class="fs-6 fw-bold text-gray-600">
																<!--begin::Table row-->
																												 <% 
       		
       		for( Adresse adrs:adr){
       		%>
																<tr>
																	
																
																	<!--end::Status=-->
																	<!--begin::Amount=-->
																	<td><%= adrs.getAdresse() %></td>
																	<!--end::Amount=-->
																	<!--begin::Amount=-->
																	<td><%= adrs.getCp() %></td>
																	<!--end::Amount=-->
																	<!--begin::Date=-->
																	<td><%=adrs.getVille() %></td>
																	<td><%= adrs.getPays() %></td>
																	<!--end::Date=-->
																</tr>
															
												<%} %>			
																<!--end::Table row-->
															</tbody>
															<!--end::Table body-->
														</table></div>
														<%} %>
														<!--end::Table-->
													</div>
													<!--end::Card body-->
												</div>
												
												</div>
												</c:if>
												<div class="tab-pane fade <c:if test="${user.id==1}">show active</c:if>" id="kt_ecommerce_customer_general" role="tabpanel">
												
												<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Historique de commandes</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0 pb-5">
													<%if(cmd.isEmpty()){%>
													<span class="d-flex justify-content-center text-gray-600"> Aucune commande n'a été effectuée par cet utilisateur </span>
													<%}else { %>
														<!--begin::Table-->
														<div class="table-responsive">
														<table class="table align-middle table-row-dashed gy-5" id="kt_table_customers_payment">
															<!--begin::Table head-->
															<thead class="border-bottom border-gray-200 fs-7 fw-bolder">
																<!--begin::Table row-->
																<tr class="text-start text-muted text-uppercase gs-0">
																	<th>REF</th>
																	<th>Date de commande</th>
																	<th>Total</th>
																	<th>Adresse de livraison</th>
																	<th>Etat</th>
																	
																</tr>
																<!--end::Table row-->
															</thead>
															<!--end::Table head-->
															<!--begin::Table body-->
															<tbody class="fs-6 fw-bold text-gray-600">
															
															  <% 
       		
       		for( Commande cmds:cmd){
       		%>
																<!--begin::Table row-->
																<tr>
																	
																
																	<!--end::Status=-->
																	<!--begin::Amount=-->
																	<td><%= cmds.getId() %></td>
																	<!--end::Amount=-->
																	<!--begin::Amount=-->
																	<td><%=cmds.getDatec() %></td>
																	
																	<!--end::Amount=-->
																	<!--begin::Date=-->
																	<td><%= cmds.getTotal()%> €</td>
																	<td><%= cmds.getAdresse().getAdresse()%> <%= cmds.getAdresse().getCp()%> <%= cmds.getAdresse().getVille()%> <%= cmds.getAdresse().getPays()%></td>
																	
																	<%if(cmds.isDelbis()==2){ %><td><span class="badge badge-light-danger">Problème validation</span></td><%}else{ %>
																	
																	<td><%if(cmds.isEtat()==false){ %><span class="badge badge-light-warning">En attente</span><%}else{ %><span class="badge badge-light-success">Validé</span><%} %></td>
																	<!--end::Date=-->
																	<%} %>
																</tr>
															
														<%} %>
																<!--end::Table row-->
															</tbody>
															<!--end::Table body-->
														</table></div>
														<!--end::Table-->
														<%} %>
													</div>
													<!--end::Card body-->
												</div>
												
												</div>
												
												<div class="tab-pane fade " id="kt_ecommerce_customer_commentaire" role="tabpanel">
												
												<div class="d-flex flex-column gap-7 gap-lg-10 mb-10">
													<!--begin::Reviews-->
													<div class="card card-flush py-4">
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
																		<th class="min-w-125px">Date</th>
																		
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
																<a href="Userdetail?iduser=${c.getUser().id }&idtohide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Cacher</a>
															</div>
															</c:if>
															
															<c:if test="${c.del==true}">
															<div class="menu-item px-3">
																<a href="Userdetail?iduser=${c.getUser().id }&idtounhide=${ c.id }" class="menu-link px-3" data-kt-ecommerce-product-filter="hidden_row">Rétablir</a>
															</div>
															</c:if>
															
															<div class="menu-item px-3">
																<a href="Userdetail?iduser=${c.getUser().id }&idtodelcom=${ c.id }" class="menu-link px-3" >Supprimer</a>
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
																			<a href="VoirClient?id=${ c.getUser().id }" class="d-flex text-dark text-gray-800 text-hover-primary">
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
												
												<div class="tab-pane fade " id="kt_ecommerce_customer_interet" role="tabpanel">
												
													<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Recherches</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0 pb-5">
													<%if(rech.isEmpty()){%>
													<span class="d-flex justify-content-center text-gray-600"> Aucune recherche effectuée par cet utilisateur</span>
													<%}else { %>
														<!--begin::Table-->
														<div class="table-responsive">
														<table class="table align-middle table-row-dashed gy-5" id="kt_table_customers_payment">
															<!--begin::Table head-->
															<thead class="border-bottom border-gray-200 fs-7 fw-bolder">
																<!--begin::Table row-->
																<tr class="text-start text-muted text-uppercase gs-0">
																	<th class="min-w-100px">Référence</th>
																	<th>Mot recherché</th>
																	<th>Date de recherche</th>
																	
																</tr>
																<!--end::Table row-->
															</thead>
															<!--end::Table head-->
															<!--begin::Table body-->
															<tbody class="fs-6 fw-bold text-gray-600">
																<!--begin::Table row-->
          <% 
       		
       		for( Recherche rechs:rech){
       		%>
																<tr>
																	
																
																	<!--end::Status=-->
																	<!--begin::Amount=-->
																	<td><%=rechs.getId() %></td>
																	<!--end::Amount=-->
																	<!--begin::Amount=-->
																	<td><%=rechs.getMot() %></td>
																	<!--end::Amount=-->
																	<!--begin::Date=-->
																	<td><%=rechs.getRech() %></td>
																	<!--end::Date=-->
																</tr>
															<%} %>
														
																<!--end::Table row-->
															</tbody>
															<!--end::Table body-->
														</table></div>
														<%} %>
														<!--end::Table-->
													</div>
													<!--end::Card body-->
												</div>
												
												<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Produits visités</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0 pb-5">
													<%if(vis.isEmpty()){%>
													<span class="d-flex justify-content-center text-gray-600"> Aucun produit n'a été visité par cet utilisateur </span>
													<%}else { %>
														<!--begin::Table-->
														<div class="table-responsive">
														<table class="table align-middle table-row-dashed gy-5" id="kt_table_customers_payment">
															<!--begin::Table head-->
															<thead class="border-bottom border-gray-200 fs-7 fw-bolder">
																<!--begin::Table row-->
																<tr class="text-start text-muted text-uppercase gs-0">
																	<th>Référence</th>
																	<th>Image</th>
																	<th>Produit</th>
																	<th>Prix</th>
																	<th class="min-w-100px">Date de visite</th>
																	
																</tr>
																<!--end::Table row-->
															</thead>
															<!--end::Table head-->
															<!--begin::Table body-->
															<tbody class="fs-6 fw-bold text-gray-600">
																<!--begin::Table row-->
          <% 
       		
       		for( Visite visite:vis){
       		%>
																<tr>
																<td><%=visite.getId() %></td>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="  d-flex justify-content-start flex-column">
																		
																			<img class="rounded" alt="image" src="<%= visite.getProduit().getImg() %>" width="100px" />
																			
																		</div>
																	</div>
																	</td>
																	<!--end::Status=-->
																	<!--begin::Amount=-->
																	
																	<!--end::Amount=-->
																	<!--begin::Amount=-->
																	<td><%=visite.getProduit().getTitre() %> </td>
																	<!--end::Amount=-->
																	<!--begin::Date=-->
																	<td><%=visite.getProduit().getPrix() %>€</td>
																	<td><%=visite.getDatev() %></td>
																	<!--end::Date=-->
																</tr>
															<%} %>
														
																<!--end::Table row-->
															</tbody>
															<!--end::Table body-->
														</table></div>
														<%} %>
														<!--end::Table-->
													</div>
													<!--end::Card body-->
												</div>
												
												</div>
												
												<c:if test="${user.id!=1}">
												<div class="tab-pane fade " id="kt_ecommerce_customer_favoris" role="tabpanel">
												
														<div class="card pt-4 mb-6 mb-xl-9">
													<!--begin::Card header-->
													<div class="card-header border-0">
														<!--begin::Card title-->
														<div class="card-title">
															<h2>Favoris</h2>
														</div>
														<!--end::Card title-->
													</div>
													<!--end::Card header-->
													<!--begin::Card body-->
													<div class="card-body pt-0 pb-5">
													<%if(fav.isEmpty()){%>
													<span class="d-flex justify-content-center text-gray-600"> Aucun produit n'est mis en favoris par cet utilisateur </span>
													<%}else { %>
														<!--begin::Table-->
														
														<table class="table align-middle table-row-dashed gy-5" id="kt_table_customers_payment">
															<!--begin::Table head-->
															<thead class="border-bottom border-gray-200 fs-7 fw-bolder">
																<!--begin::Table row-->
																<tr class="text-start text-muted text-uppercase gs-0">
																	<th>Image</th>
																	<th>Produit</th>
																	<th>Prix</th>
																	
																</tr>
																<!--end::Table row-->
															</thead>
															<!--end::Table head-->
															<!--begin::Table body-->
															<tbody class="fs-6 fw-bold text-gray-600">
																<!--begin::Table row-->
          <% 
       		
       		for( Favoris favs:fav){
       		%>
																<tr>
																	<td>
																	<div class="d-flex align-items-center">
																		
																		<div class="  d-flex justify-content-start flex-column">
																		
																			<img class="rounded" alt="image" src="<%= favs.getProduit().getImg() %>" width="100px" />
																			
																		</div>
																	</div>
																	</td>
																	<!--end::Status=-->
																	<!--begin::Amount=-->
																	
																	<!--end::Amount=-->
																	<!--begin::Amount=-->
																	<td><%=favs.getProduit().getTitre() %> </td>
																	<!--end::Amount=-->
																	<!--begin::Date=-->
																	<td><%=favs.getProduit().getPrix() %>€</td>
																	<!--end::Date=-->
																</tr>
															<%} %>
														
																<!--end::Table row-->
															</tbody>
															<!--end::Table body-->
														</table>
														<%} %>
														<!--end::Table-->
													</div>
													<!--end::Card body-->
												</div>
												
												</div></c:if>
												
												<!--end::Card-->
											</div>
											<!--end:::Tab pane-->
											<!--begin:::Tab pane-->
									
									<!--end::Content-->
								</div>
								<!--end::Layout-->
								<!--begin::Modals-->
								<!--begin::Modal - New Address-->
								
								<!--end::Modal - New Address-->
								<!--begin::Modal - Update password-->
						
								<!--end::Modal - Update password-->
								<!--begin::Modal - Update email-->
						
								<!--end::Modal - Update email-->
								<!--begin::Modal - New Address-->
								
						
								<!--end::Modal - Add task-->
								<!--begin::Modal - Add task-->
						
								<!--end::Modal - Add task-->
								<!--end::Modals-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					</div>
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