<!-- * navbvar -->
<div class="blank"></div>
<nav class="navbar-home mt-3">
    <div class="container">
        <div class="row d-flex align-items-center ">
            <div class="col-3 d-flex align-items-center collapse-nav-home">
                <a class="px-3" href="{{route("home")}}">
                    <img src="{{asset("img/logo_banner_bg-putih.png")}}" alt="InfiniteMart"
                        class="user-select-none brand">
                </a>
            </div>
            <div class="col-md-6 wrap-navbar-login">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <form action="{{route("home")}}" method="GET" id="formSearching">
                            <div class="searchBarWrap p-3">
                                <input type="text" class="searchBar form-control img-fluid"
                                    placeholder="Laper Pengen Seblak" name="keyword" autocomplete="off" id="keywordSearch"
                                    value="{{isset($keyword) ? $keyword : ""}}">
                                <button class="btn mx-2" type="submit">
                                    <i class="fas fa-search" style="transform: rotate(90deg); font-size: 25px; color: white;"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-3 wrap-navbar-login">
                <div class="row justify-content-end d-flex" id="btn-place">
                    {{-- <a href="{{route("login")}}" class="btn btn-login">Login</a>&nbsp;&nbsp;
                    <a href="{{route("register")}}" class="btn btn-signup">Sign up</a> --}}
                    {{-- <a href="{{route("profile")}}" class="btn btn-signup" id="profile">Profile</a> --}}
                </div>
            </div>

            <div class="col-md-3 wrap-navbar-collapse">
                <div class="row justify-content-end">
                    <div class="col d-flex justify-content-end">
                        <img src="{{asset("img/icon/bars.png")}}" alt="" width="35px" class="user-select-none pointer">
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>


<!-- * Collapse Navbar -->
<nav class="collapse-navbar-home">
    <div class="container">
        <div class="wrap-collapse ">
            <div class="row mt-3">
                <div class="col-12">
                    <div class="searchBarWrap p-3">
                        <input type="text" class="searchBar form-control img-fluid" placeholder="Laper Pengen Seblak">
                        <button class="btn mx-2">
                            <img src="{{asset("img/icon/ikon-search-btn.png")}}" alt="">
                        </button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 mt-3">
                    <img src="{{asset("img/icon/kategori-btn.png")}}" alt="" class="user-select-none">
                    <span class="mx-3 fw-bold">Kategori</span>
                </div>
            </div>
            <div class="row">
                <div class="col-12 mt-3">
                    <img src="{{asset("img/icon/ikon-kẻanjang-btn.png")}}" alt="" class="user-select-none">
                    <span class="mx-3 fw-bold">Keranjang</span>
                </div>
            </div>
            <div class="row" id="btn-place2">
                {{-- <div class="col-12 mt-3">
                    <a href="#" class="btn btn-login">Login</a>&nbsp;&nbsp;
                    <a href="#" class="btn btn-signup">Sign up</a>
                </div>
                <div class="col-12 mt-3">
                    <a href="#" class="btn btn-signup">Profile</a>
                </div> --}}
            </div>
        </div>

    </div>
</nav>
<!-- / collapse navbar -->

<!-- /navbar -->