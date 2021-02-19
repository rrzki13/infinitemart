@extends('template.User')

@section('title', "Tambah Produk Sweet Home")

@section('content')

<form action="{{route("editProdukProses")}}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="hidden" name="id_toko" id="id_toko" value="{{$id_toko}}">
    <input type="hidden" name="id_produk" id="id_produk" value="{{$produk["id_produk"]}}">
    <input type="hidden" name="gambar" id="gambar" value="{{$produk["gambar"]}}">
    <input type="hidden" name="gambar_lain" id="gambar_lain" value="{{$produk["gambar_lain"]}}">
    <div class="container mt-5">
        <div class="cardTambahProduk">
            <div class="headerTambahProduk mt-3">
                <h5>Tambah Produk</h5>
            </div>
            <div class="contentTambahProduk">
                <p class="mt-3">Upload Gambar Produk</p>
                <div class="imgFlex">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="cardImgFlex d-flex justify-content-center align-items-center">
                                <img src="http://localhost:8080/uploads/produk/{{$produk["gambar"]}}"
                                    class="img-fluid user-select-none" id="main_img_preview" style="width: 50%">
                            </div>
                            <div class="footerCardImg mt-2 text-center">
                                <label for="main_img" class="text-center" style="cursor: pointer">Gambar Utama</label>
                                <input type="file" name="main_img" class="d-none" id="main_img"
                                    accept="image/jpg,image/png,image/jpeg"><br>
                                <small class="text-danger">
                                    {{Session::get('gambar_error_status')}}
                                </small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="cardImgFlex d-flex justify-content-center align-items-center">
                                <img src="http://localhost:8080/uploads/produk/{{$produk["gambar_lain"]}}"
                                    class="img-fluid user-select-none" id="other_img_preview" style="width: 50%">
                            </div>
                            <div class="footerCardImg mt-2 text-center">
                                <label for="other_img" class="text-center" style="cursor: pointer">Gambar
                                    Lainnya</label>
                                <input type="file" name="other_img" class="d-none" id="other_img"
                                    accept="image/jpg,image/png,image/jpeg"><br>
                                <small class="text-danger">
                                    {{Session::get('gambar_lain_error_status')}}
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="cardDetailProduk mt-4">
            <div class="headerDetailProduk mt-3">
                <h5>Detail Produk</h5>
            </div>
            <div class="contentDetailProduk">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="inputValue d-flex flex-column mt-3">
                                    <label for="" class="mb-2">Nama Produk</label>
                                    <input type="text" class="form-control" name="NamaProduk" placeholder="Nama Produk"
                                        value="{{$produk["nama_produk"]}}">
                                    <small class="validation text-danger">
                                        {{Session::get('nama_produk_error_status')}}
                                    </small>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="inputValue d-flex flex-column mt-3">
                                    <label for="" class="mb-2">Harga Produk</label>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1">Rp</span>
                                        <input type="text" class="form-control" placeholder="Harga Produk"
                                            name="hargaProduk" aria-label="Username" aria-describedby="basic-addon1"
                                            onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"
                                            value="{{$produk["harga"]}}">
                                    </div>
                                    <small class="validation text-danger">
                                        {{Session::get('harga_error_status')}}
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="inputValue d-flex flex-column mt-3">
                            <label for="" class="mb-2">User Di Izinkan</label>
                            <div class="row">
                                <input type="text" name="checkUser" id="checkUser" class="form-control"
                                    value="{{$produk["user_beli"]}}">
                                @if ($user)
                                @php($i=1)

                                @foreach ($user as $key)

                                <div class="col-6">
                                    <div class="form-check">
                                        <input class="form-check-input checkIzinUser2" name="izinUser{{$i}}"
                                            type="checkbox" value="{{$key["id_user"]}}" id="izinUser{{$i}}" {{
                                            (in_array($key["id_user"], $user_permitted)) ? "checked" : "" }}>
                                        <label class="form-check-label" for="izinUser{{$i}}">
                                            {{$key['username']}}
                                        </label>
                                    </div>
                                </div>
                                @php($i++)
                                @endforeach
                                @endif
                                <small class="text-danger">
                                    {{Session::get('user_beli_error_status')}}
                                </small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex mt-3">
                            <button type="submit" class="btn btn-primary" style="width: 15vw;"
                                id="btn-update-produk">Update Produk</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

@endsection