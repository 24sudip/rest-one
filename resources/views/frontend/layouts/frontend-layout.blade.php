@php
    $general_settings = \App\Models\GeneralSetting::first();
    $seo_settings = \App\Models\SeoSetting::first();
@endphp
<!doctype html>
<html class="no-js" lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" id="csrf-token" content="{{ csrf_token() }}">
    <meta name="description" content="{{ @$seo_settings->description }}">
    <meta name="keywords" content="{{ @$seo_settings->keyword }}">
	<title>{{ @$seo_settings->title }}</title>
	<link rel="shortcut icon" type="image/ico" href="{{ asset($general_settings->favicon) }}" />
	<link rel="stylesheet" href="{{ asset('frontend_assets/css') }}/bootstrap.min.css">
	<link rel="stylesheet" href="{{ asset('frontend_assets/css') }}/normalize.css">
	<link rel="stylesheet" href="{{ asset('frontend_assets/css') }}/style-plugin-collection.css">
	<link rel="stylesheet" href="{{ asset('frontend_assets/css') }}/theme.css">
	<link rel="stylesheet" href="{{ asset('frontend_assets/css') }}/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
</head>

<body>
	<div class="preloader">
		<img src="{{ asset('frontend_assets/images') }}/preloader.gif" alt="">
	</div>

	@include('frontend.layouts.navbar')

	<div class="main_wrapper" data-bs-spy="scroll" data-bs-target="#main_menu_area" data-bs-root-margin="0px 0px -40%"
		data-bs-smooth-scroll="true" class="scrollspy-example bg-body-tertiary" tabindex="0">

		@yield('frontend_content')

		<!-- Footer-Area-Start -->
		@include('frontend.layouts.footer')
		<!-- Footer-Area-End -->
	</div>


	<script src="{{ asset('frontend_assets/js') }}/vendor/jquery-min.js"></script>
	<script src="{{ asset('frontend_assets/js') }}/bootstrap.bundle.min.js"></script>
	<script src="{{ asset('frontend_assets/js') }}/contact-form.js"></script>
	<script src="{{ asset('frontend_assets/js') }}/jquery-plugin-collection.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script src="{{ asset('frontend_assets/js') }}/vendor/modernizr.js"></script>
	<script src="{{ asset('frontend_assets/js') }}/main.js"></script>
    @stack('scripts')
</body>

</html>
