<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">
    let auth = JSON.parse(localStorage.getItem("auth_session"));
    const token = localStorage.getItem("token");
    const store = JSON.parse(localStorage.getItem("store"));
</script>

@if (isset($middleware))

@if ($middleware == "auth")
<script type="text/javascript">
    if (auth == null) window.location.href = "http://127.0.0.1:8000/login";
</script>
@elseif($middleware == "store")
<script type="text/javascript">
    if (auth == null) window.location.href = "http://127.0.0.1:8000/login";
    if (store.has_store) window.location.href = `http://127.0.0.1:8000/seller`;
</script>
@elseif($middleware == "has_store")
<script type="text/javascript">
    if (auth == null) window.location.href = "http://127.0.0.1:8000/login";
    if (!store.has_store) window.location.href = `http://127.0.0.1:8000`;
</script>
@elseif($middleware == "my_product")
<script type="text/javascript">
    const id_produk = "<?= $id_produk ?>";
    
    if (auth == null) window.location.href = "http://127.0.0.1:8000/login";
    if (!store.has_store) window.location.href = `http://127.0.0.1:8000`;
    if (store.store_product.indexOf(parseInt(id_produk)) == -1) window.location.href = `http://127.0.0.1:8000/toko/`+store.store_data.id_toko;
</script>
@endif

@endif

<!-- Mirrored from htmldemo.hasthemes.com/hono/hono/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Mar 2021 13:37:00 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>@yield('title')</title>

    <!-- ::::::::::::::Favicon icon::::::::::::::-->
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/png">

    <!-- ::::::::::::::All CSS Files here :::::::::::::: -->
    <!-- Vendor CSS -->
    {{-- <link rel="stylesheet" href="{{asset('css')}}/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('css')}}/vendor/ionicons.css">
    <link rel="stylesheet" href="{{asset('css')}}/vendor/simple-line-icons.css">
    <link rel="stylesheet" href="{{asset('css')}}/vendor/jquery-ui.min.css"> --}}

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="{{asset('css')}}/plugins/swiper-bundle.min.css">
    {{-- <link rel="stylesheet" href="{{asset('css')}}/plugins/animate.min.css">
    <link rel="stylesheet" href="{{asset('css')}}/plugins/nice-select.css">
    <link rel="stylesheet" href="{{asset('css')}}/plugins/venobox.min.css">
    <link rel="stylesheet" href="{{asset('css')}}/plugins/jquery.lineProgressbar.css">
    <link rel="stylesheet" href="{{asset('css')}}/plugins/aos.min.css"> --}}
    <script src="https://kit.fontawesome.com/d1a508a7c1.js" crossorigin="anonymous"></script>

    <!-- Main CSS -->
    <!-- <link rel="stylesheet" href="assets/sass/style.css"> -->
    {{-- <link rel='stylesheet' href='{{asset("css/bootstrap.min.css")}}'> --}}
    <link rel="icon" href="{{asset("img/logo_transparent.png")}}">

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
        integrity="sha512-QKC1UZ/ZHNgFzVKSAhV5v5j73eeL9EEN289eKAEFaAjgAiobVAnVv/AGuPbXsKl1dNoel3kNr6PYnSiTzVVBCw=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="{{asset('css')}}/vendor/vendor.min.css">
    <!-- owl carausel -->
    <link rel="stylesheet" href="{{asset('css')}}/owl.carousel.min.css">
    <link rel="stylesheet" href="{{asset('css')}}/owl.theme.default.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"
        integrity="sha512-rRQtF4V2wtAvXsou4iUAs2kXHi3Lj9NE7xJR77DE7GHsxgY9RTWy93dzMXgDIG8ToiRTD45VsDNdTiUagOFeZA=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="{{asset('css')}}/plugins.min.css">
    <link rel="stylesheet" href="{{asset('css')}}/OurTeam.css">
    <link rel="stylesheet" href="{{asset('css')}}/style.min.css">

    @if (isset($toko_section))

    @if ($toko_section)
    <link rel="stylesheet" href="{{url("/")}}/css/tambahProduk.css">
    <link rel="stylesheet" href="{{asset('css')}}/style.css">
    @endif

    @endif
</head>

@include('template.navbar2')

@include('template.modal')

@yield('content')

<div id="search_root"></div>

@include('template.footer2')

<body>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <script src="https://kit.fontawesome.com/d1a508a7c1.js" crossorigin="anonymous"></script>
    <script src="{{asset('js')}}/vendor/vendor.min.js"></script>
    <script src="{{asset('js')}}/plugins.min.js"></script>

    <!-- Main JS -->
    <script src="{{asset('js')}}/main.js"></script>
    <script src="{{asset('js')}}/owl.carousel.min.js"></script>
    <script src="{{asset('js')}}/FormatMoney.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="{{asset("js")}}/App.js"></script>
    <script>
        const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 5000,
    });
    </script>
    <script src="{{asset("js")}}/myScript.min.js"></script>
</body>

</html>