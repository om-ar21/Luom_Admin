<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
Author: Keenthemes
Product Name: Metronic - Bootstrap 5 HTML, VueJS, React, Angular & Laravel Admin Dashboard Theme
Purchase: https://1.envato.market/EA4JP
Website: http://www.keenthemes.com
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
License: For each use you must have a valid license purchased only from above link in order to legally use the theme for your project.
-->
<html lang="fr">
	<!--begin::Head-->
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
		
		<!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="bg-body">
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Authentication - Signup Free Trial-->
			<div class="d-flex flex-column flex-xl-row flex-column-fluid">
				<!--begin::Aside-->
				<div class="d-flex flex-column flex-center flex-lg-row-fluid">
					<!--begin::Content-->
					<div class="d-flex align-items-start flex-column p-5 p-lg-15">
						<!--begin::Logo-->
						<a href="../../demo1/dist/index.html" class="mb-15">
							<img alt="Logo" src="assets/media/logos/logo-1.svg" class="h-40px" />
						</a>
						<!--end::Logo-->
						<!--begin::Title-->
						<h1 class="text-dark fs-2x mb-3">Bienvenue sur l'interface Administrateur de Luom</h1>
						<!--end::Title-->
						<!--begin::Description-->
						<div class="fw-bold fs-4 text-gray-400 mb-10">Veuillez vous authentifier
						</div>
						<!--begin::Description-->
						<!--begin::Illustration-->
						<img src="assets/media/illustrations/sketchy-1/8.png" class="h-250px h-lg-350px" />
						<!--end::Illustration-->
					</div>
					<!--end::Content-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="flex-row-fluid d-flex flex-center justfiy-content-xl-first p-10">
					<!--begin::Wrapper-->
					<div class="d-flex flex-center p-15 shadow-sm bg-body rounded w-100 w-md-550px mx-auto ms-xl-20">
						<!--begin::Form-->
						<form class="form" method="POST">
							<!--begin::Heading-->
							<c:if test="${etat==false }">
							<div class="alert alert-danger" role="alert">
							  Les informations que vous avez saisie ne sont pas correctes, veuillez contacter votre supérieur si le problème persiste.
							</div></c:if>
							<div class="text-center mb-10">
								<!--begin::Title-->
								<h1 class="text-dark mb-3">Connexion</h1>
								<!--end::Title-->
								<!--begin::Link-->
								<!--<div class="text-gray-400 fw-bold fs-4">Have questions ? Check out
								<a href="#" class="link-primary fw-bolder">FAQ</a>.</div>-->
								<!--end::Link-->
							</div>
							<!--begin::Heading-->
							<!--begin::Input group-->
							<div class="fv-row mb-10">
								<label class="form-label fw-bolder text-dark fs-6">Email</label>
								<input class="form-control form-control-solid" type="email" placeholder="" name="email" autocomplete="off" />
							</div>
							<!--end::Input group-->
							<!--begin::Input group-->
							<div class="mb-7 fv-row mb-10" data-kt-password-meter="true">
								<!--begin::Wrapper-->
								<div class="mb-1">
									<!--begin::Label-->
									<label class="form-label fw-bolder text-dark fs-6">Mot de passe</label>
									<!--end::Label-->
									<!--begin::Input wrapper-->
									<div class="position-relative mb-3">
										<input class="form-control form-control-solid" type="password" placeholder="" name="password" autocomplete="off" />
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
							<!--begin::Row-->
							<!--<div class="fv-row mb-10">
								<label class="form-label fw-bolder text-dark fs-6">Confirm Password</label>
								<input class="form-control form-control-solid" type="password" placeholder="" name="confirm-password" autocomplete="off" />
							</div>-->
							<!--end::Row-->
							<!--begin::Row-->
							<!--<div class="fv-row mb-10">
								<label class="form-check form-check-custom form-check-solid form-check-inline mb-5">
									<input class="form-check-input" type="checkbox" name="toc" value="1" />
									<span class="form-check-label fw-bold text-gray-700">Se souvenir de moi</span>
								</label>
							</div>-->
							<!--end::Row-->
							<!--begin::Row-->
							<div class="text-center pb-lg-0 pb-8">
								<button name="btnco" type="submit" id="kt_free_trial_submit" class="btn btn-lg btn-primary fw-bolder">
									<span class="indicator-label">Se Connecter</span>
									<span class="indicator-progress">Please wait...
									<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
								</button>
							</div>
							<!--end::Row-->
						</form>
						<!--end::Form-->
					</div>
					<!--end::Wrapper-->
				</div>
				<!--end::Right Content-->
			</div>
			<!--end::Authentication - Signup Free Trial-->
		</div>
		<!--end::Root-->
		<!--end::Main-->
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="assets/js/custom/authentication/sign-up/free-trial.js"></script>
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>