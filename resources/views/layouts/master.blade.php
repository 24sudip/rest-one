<!-- Walk as if you are kissing the Earth with your feet. - Thich Nhat Hanh body-tertiary -->
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD</title>
    <link rel="stylesheet" href="{{ asset('backend_assets/bootstrap.min.css') }}">
</head>
<body>
    @include('layouts.header')
    <!-- Begin Page Content -->
    <main role="main" class="container">
        @yield('content')
    </main>

    @include('layouts.footer')

    <script src="{{ asset('backend_assets/bootstrap.bundle.min.js') }}"></script>
</body>
</html>
