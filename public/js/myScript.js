const formatter = new FormatMoney();
setNavbar();
handleLogout();
handleBuyByModal();

function setNavbar() {
  let handler = "";
  let handler2 = "";
  if (auth != null) {
    handler = /*html*/ `
        <li>
            <a href="${BASE_URL}/profile">Profile</a>
        </li>
    `;
    if (store.has_store) {
      handler += /* html */ ` 
        <li>
          <a href="${BASE_URL}/toko/${store.store_data.id_toko}">My Store</a>
        </li>
        <li>
        <li>
            <a href="${BASE_URL}/logout" id="logout-btn">Logout</a>
        </li>
      `;
    } else {
      handler += /* html */ `
        <li>
          <a href="${BASE_URL}/seller">Open Store</a>
        </li>
        <li>
        <li>
            <a href="${BASE_URL}/logout" id="logout-btn">Logout</a>
        </li>
      `;
    }

    handler2 = /* html */ `
    <li><a href="wishlist.html">Profile</a></li>
    <li><a href="${BASE_URL}/OurTeam">Team</a></li>
    `;
  } else {
    handler = /* html */ `
        <li>
            <a href="${BASE_URL}/login">Sign In</a>
        </li>
        <li>
            <a href="${BASE_URL}/register">Sign Up</a>
        </li>
        `;
    handler2 = /* html */ `
        <li><a href="${BASE_URL}/login">Sign In</a></li>
        <li><a href="${BASE_URL}/register">Sign Up</a></li>
        <li><a href="${BASE_URL}/OurTeam">Team</a></li>
        `;
  }
  $("#nav-account").html(handler);
  $("#nav-account2").html(handler);
  $("#nav-slide-link").html(handler2);
  $("#nav-slide-link2").html(handler2);
}

// * section home
if ($("#homeSectionReadOnly").length > 0) {
  showAllProduk();
  handleDetailProduk();
  showBestSeller();
}

// * section detail
if ($("#detailSectionReadOnly").length > 0) {
  const id_produk = document.querySelector("#idProduk").dataset.idproduk;
  showAllProduk();
  handleDetailProduk();

  showDetail(id_produk);

  $("#btn-checkout-detail").click(function (e) {
    e.preventDefault();
    if (validateCheckout()) {
      checkout(
        $("#idtoko").val(),
        $("#hargaBarang").val(),
        $("#namaBarang").val(),
        $("#userbeli").val(),
        $("#note").val(),
        $("#quantity").val(),
        document.querySelector("#idProduk").dataset.idproduk
      );
    }
  });

  function validateCheckout() {
    let turn = true;
    if ($("#note").val() == "") {
      turn = false;
      $(".note-validate").html("harus diisi");
    } else {
      $(".note-validate").html("");
    }

    if ($("#quantity").val() == "") {
      turn = false;
      $(".quantity-validate").html("harus diisi");
    } else {
      if ($("#quantity").val() == 0) {
        turn = false;
        $(".quantity-validate").html("harus lebih dari 0");
      } else {
        $(".quantity-validate").html("");
      }
    }

    return turn;
  }
}

// * section our team
if ($("#sectionOurTeamReadonly").length > 0) {
  $(".WrapperOwl").owlCarousel({
    margin: 20,
    loop: true,
    autoWidth: true,
    items: 4,
    autoplay: true,
    autoplayTimeout: 5000,
  });
}

// * function for show all produk
function showAllProduk() {
  $.ajax({
    url: BASE_URL_SERVER + "/produk",
    type: "GET",
    success: function (res) {
      let handler = "";
      if (res.success) {
        res.data.map((result) => {
          handler += /* html */ `
            <div class="product-default-single-item product-color--golden swiper-slide">
                <div class="image-box">
                    <a href="${BASE_URL}/detail/${
            result.id_produk
          }" class="image-link">
                        <img src="${BASE_URL_FILE}/uploads/produk/${
            result.gambar
          }" alt="" style="height:250px;">
                        <img src="${BASE_URL_FILE}/uploads/produk/${
            result.gambar_lain
          }" alt="" style="height:250px;">
                    </a>
                    <div class="tag">
                        <span>sale</span>
                    </div>
                    <div class="action-link">
                        <div class="action-link-left">
                            <a href="" id="showQuickViewProduct" data-bs-toggle="modal" data-bs-target="#modalQuickview" data-idproduk="${
                              result.id_produk
                            }">Buy
                                Now</a>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="content-left">
                        <h6 class="title"><a href="${BASE_URL}/detail/${
            result.id_produk
          }">${result.nama_produk}</a></h6>
                        <ul class="review-star">
                            Stock Available
                        </ul>
                    </div>
                    <div class="content-right">
                        <span class="price">${formatter.toRupiah(
                          result.harga
                        )}</span>
                    </div>

                </div>
            </div>
            `;
        });
        if ($("#produk-all").length > 0) {
          $("#produk-all").html(handler);
          setSlider();
        }
      }
    },
    error: function (e) {
      alert("error");
      console.log(e);
    },
  });
}

function setSlider() {
  /****************************************
   *   Product Slider Active - 4 Grid 2 Rows
   *****************************************/
  var productSlider4grid2row = new Swiper(
    ".product-default-slider-4grid-2row.swiper-container",
    {
      slidesPerView: 4,
      spaceBetween: 30,
      speed: 1500,
      slidesPerColumn: 2,
      slidesPerColumnFill: "row",

      navigation: {
        nextEl: ".product-slider-default-2rows .swiper-button-next",
        prevEl: ".product-slider-default-2rows .swiper-button-prev",
      },

      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        576: {
          slidesPerView: 2,
        },
        768: {
          slidesPerView: 2,
        },
        992: {
          slidesPerView: 3,
        },
        1200: {
          slidesPerView: 4,
        },
      },
    }
  );
}

function setSlider1row() {
  /*********************************************
   *   Product Slider Active - 4 Grid Single Rows
   **********************************************/
  var productSlider4grid1row = new Swiper(
    ".product-default-slider-4grid-1row.swiper-container",
    {
      slidesPerView: 4,
      spaceBetween: 30,
      speed: 1500,

      navigation: {
        nextEl: ".product-slider-default-1row .swiper-button-next",
        prevEl: ".product-slider-default-1row .swiper-button-prev",
      },

      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        576: {
          slidesPerView: 2,
        },
        768: {
          slidesPerView: 2,
        },
        992: {
          slidesPerView: 3,
        },
        1200: {
          slidesPerView: 4,
        },
      },
    }
  );
}

function setSliderDetail() {
  /******************************************************
   * Quickview Product Gallery - Horizontal
   ******************************************************/
  var modalGalleryThumbs = new Swiper(".modal-product-image-thumb", {
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesVisibility: true,
    watchSlidesProgress: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });

  var modalGalleryTop = new Swiper(".modal-product-image-large", {
    thumbs: {
      swiper: modalGalleryThumbs,
    },
  });
}

function handleDetailProduk() {
  document.body.addEventListener("click", function (e) {
    if (e.target.getAttribute("id") == "showQuickViewProduct") {
      const id_produk = e.target.dataset.idproduk;
      const modal = document.querySelector("#quickViewModal1");
      const modal2 = document.querySelector("#quickViewModal2");
      const img_main1 = modal.childNodes[1].childNodes[1];
      const img_main2 = modal.childNodes[3].childNodes[1];
      const img_other1 = modal2.childNodes[1].childNodes[1];
      const img_other2 = modal2.childNodes[3].childNodes[1];

      img_main1.setAttribute("src", "");
      img_main2.setAttribute("src", "");
      img_other1.setAttribute("src", "");
      img_other2.setAttribute("src", "");
      $("#idtokoQuickView").val("");
      $("#hargaBarangQuickView").val("");
      $("#namaBarangQuickView").val("");
      $("#userbeliQuickView").val("");
      $.ajax({
        url: BASE_URL_SERVER + "/produk/" + id_produk,
        type: "GET",
        success: function (res) {
          if (res.success) {
            const data = res.data[0];
            $("#idprodukQuickView").val(id_produk);
            $("#idtokoQuickView").val(data.id_toko);
            $("#hargaBarangQuickView").val(data.harga);
            $("#namaBarangQuickView").val(data.nama_produk);
            $("#userbeliQuickView").val(data.user_beli);
            setGambar(data, img_main1, img_main2, img_other1, img_other2);
            $("#detailQuickViewTitle").html(data.nama_produk);
            $("#detailQuickViewFare").html(formatter.toRupiah(data.harga));
            setSliderDetail();
          }
        },
        error: function () {
          alert("error");
        },
      });
    }
  });

  function setGambar(data, img_main1, img_main2, img_other1, img_other2) {
    img_main1.setAttribute(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar
    );
    img_main2.setAttribute(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar_lain
    );
    img_other1.setAttribute(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar
    );
    img_other2.setAttribute(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar_lain
    );
  }
}

function showDetail(id_produk) {
  $.ajax({
    url: BASE_URL_SERVER + "/produk/" + id_produk,
    type: "GET",
    success: function (res) {
      if (res.success) {
        const data = res.data[0];
        $(".titleDetail").html(data.nama_produk);
        $(".priceDetail").html(formatter.toRupiah(data.harga));

        $("#idtoko").val(data.id_toko);
        $("#hargaBarang").val(data.harga);
        $("#namaBarang").val(data.nama_produk);
        $("#userbeli").val(data.user_beli);

        setGambarDetail(data);
      }
    },
    error: function () {
      alert("error");
    },
  });

  function setGambarDetail(data) {
    $(".imgDetailMain1").attr(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar
    );
    $(".imgDetailMain2").attr(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar_lain
    );
    $(".imgOtherDetailMain1").attr(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar
    );
    $(".imgOtherDetailMain2").attr(
      "src",
      BASE_URL_FILE + "/uploads/produk/" + data.gambar_lain
    );
  }
}

function handleLogout() {
  document.body.addEventListener("click", function (e) {
    if (e.target.getAttribute("id") == "logout-btn") {
      e.preventDefault();
      localStorage.removeItem("token");
      localStorage.removeItem("auth_session");
      localStorage.removeItem("store");
      document.location.href = BASE_URL + "/login";
    }
  });
}

// * function for checkout
function checkout(
  idToko,
  harga,
  nama_barang,
  user_beli,
  note,
  quantity,
  id_produk
) {
  $(".blankLoad").show();
  $(".blankLoad").css("display", "flex");
  document.body.style.overflowY = "hidden";
  // * cek apakah user boleh beli atau tidak

  const id_user = auth.id_user;
  const user_beli_split = user_beli.split(",");
  if (user_beli == "all") {
    // * mulai transaksi

    let today = new Date();

    let date =
      today.getFullYear() +
      "-" +
      (today.getMonth() + 1 < 10 ? "0" : "") +
      (today.getMonth() + 1) +
      "-" +
      (today.getDate() + 1 < 10 ? "0" : "") +
      today.getDate() +
      " " +
      today.getHours() +
      ":" +
      today.getMinutes() +
      ":" +
      today.getSeconds();

    let form = new FormData();
    form.append("id_produk", id_produk);
    form.append("id_user", auth.id_user);
    form.append("id_toko", idToko);
    form.append("tanggal", date);
    form.append("deskripsi", note);
    form.append("total_barang", quantity);
    form.append("harga", harga);
    form.append("status", 1);
    form.append("first_name", auth.first_name);
    form.append("last_name", auth.last_name);
    form.append("address", auth.address);
    form.append("city", auth.city);
    form.append("postal_code", auth.postal_code);
    form.append("phone", auth.phone);
    form.append("country_code", auth.country_code);
    form.append("barang", nama_barang);

    $.ajax({
      url: BASE_URL_SERVER + "/payment/midtrans",
      headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        Authorization: "Bearer " + token,
      },
      data: form,
      method: "POST",
      dataType: "json",
      cache: false,
      contentType: false,
      processData: false,
      success: (res) => {
        $("#modalQuickview").modal("hide");
        $(".blankLoad").hide();
        document.body.style.overflowY = "auto";
        if (res.status != null) {
          errorToken();
        }

        if (res.code == 1) {
          Toast.fire({
            icon: "success",
            title: "Sukses Memesan Produk, selesaikan pembayaran",
          });
          let strWindowFeatures =
            "location=yes,height=650,width=520,scrollbars=yes,status=yes";
          let URL = res.redirect_url;
          window.open(URL, "_blank", strWindowFeatures);
        }
      },
      error: (err) => {
        $(".blankLoad").hide();
        document.body.style.overflowY = "auto";
        Toast.fire({
          icon: "error",
          title: "Error Pesan Produk",
        });
        const error = err.responseJSON;
        console.log(err.responseText);
      },
    });
  } else {
    if (user_beli_split.indexOf(id_user.toString()) == -1) {
      $("#modalQuickview").modal("hide");
      $(".blankLoad").hide();
      document.body.style.overflowY = "auto";
      Swal.fire({
        icon: "error",
        title: "Oops...",
        text: "Kamu tidak diizinkan membeli barang ini!",
      });
    } else {
      // * mulai transaksi

      let today = new Date();

      let date =
        today.getFullYear() +
        "-" +
        (today.getMonth() + 1 < 10 ? "0" : "") +
        (today.getMonth() + 1) +
        "-" +
        (today.getDate() + 1 < 10 ? "0" : "") +
        today.getDate() +
        " " +
        today.getHours() +
        ":" +
        today.getMinutes() +
        ":" +
        today.getSeconds();

      let form = new FormData();
      form.append(
        "id_produk",
        document.querySelector("#idProduk").dataset.idproduk
      );
      form.append("id_user", auth.id_user);
      form.append("id_toko", idToko);
      form.append("tanggal", date);
      form.append("deskripsi", note);
      form.append("total_barang", quantity);
      form.append("harga", harga);
      form.append("status", 1);
      form.append("first_name", auth.first_name);
      form.append("last_name", auth.last_name);
      form.append("address", auth.address);
      form.append("city", auth.city);
      form.append("postal_code", auth.postal_code);
      form.append("phone", auth.phone);
      form.append("country_code", auth.country_code);
      form.append("barang", nama_barang);

      $.ajax({
        url: BASE_URL_SERVER + "/payment/midtrans",
        headers: {
          "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
          Authorization: "Bearer " + token,
        },
        data: form,
        method: "POST",
        dataType: "json",
        cache: false,
        contentType: false,
        processData: false,
        success: (res) => {
          $(".blankLoad").hide();
          document.body.style.overflowY = "auto";
          if (res.status != null) {
            if (res.status == "Token is Expired") {
              errorToken();
            }
          }

          if (res.code == 1) {
            Toast.fire({
              icon: "success",
              title: "Sukses Memesan Produk, selesaikan pembayaran",
            });
            let strWindowFeatures =
              "location=yes,height=650,width=520,scrollbars=yes,status=yes";
            let URL = res.redirect_url;
            window.open(URL, "_blank", strWindowFeatures);
          }
        },
        error: (err) => {
          $(".blankLoad").hide();
          document.body.style.overflowY = "auto";
          Toast.fire({
            icon: "error",
            title: "Error Pesan Produk",
          });
          const error = err.responseJSON;
          console.log(error);
        },
      });
    }
  }
}

function handleBuyByModal() {
  $("#btnBuyQuickView").click(function () {
    if (validateCheckoutModal()) {
      if (auth == null) {
        notLoginYet();
      } else {
        checkout(
          $("#idtokoQuickView").val(),
          $("#hargaBarangQuickView").val(),
          $("#namaBarangQuickView").val(),
          $("#userbeliQuickView").val(),
          $("#noteQuickView").val(),
          $("#quantityQuickView").val(),
          $("#idprodukQuickView").val()
        );
      }
    }
  });

  function validateCheckoutModal() {
    let turn = true;
    if ($("#noteQuickView").val() == "") {
      turn = false;
      $(".noteQuickView-validate").html("harus diisi");
    } else {
      $(".noteQuickView-validate").html("");
    }

    if ($("#quantityQuickView").val() == "") {
      turn = false;
      $(".quantityQuickView-validate").html("harus diisi");
    } else {
      if ($("#quantityQuickView").val() == 0) {
        turn = false;
        $(".quantityQuickView-validate").html("harus lebih dari 0");
      } else {
        $(".quantityQuickView-validate").html("");
      }
    }

    return turn;
  }
}

function showBestSeller() {
  $.ajax({
    url: BASE_URL_SERVER + "/bestproduk",
    type: "GET",
    success: function (res) {
      let handler = "";
      if (res.success) {
        res.data.map((result) => {
          handler += /* html */ `
            <div class="product-default-single-item product-color--golden swiper-slide">
                <div class="image-box">
                    <a href="${BASE_URL}/detail/${
            result.id_produk
          }" class="image-link">
                        <img src="${BASE_URL_FILE}/uploads/produk/${
            result.gambar
          }" alt="" style="height:250px;">
                        <img src="${BASE_URL_FILE}/uploads/produk/${
            result.gambar_lain
          }" alt="" style="height:250px;">
                    </a>
                    <div class="tag">
                        <span>sale</span>
                    </div>
                    <div class="action-link">
                        <div class="action-link-left">
                            <a href="" id="showQuickViewProduct" data-bs-toggle="modal" data-bs-target="#modalQuickview" data-idproduk="${
                              result.id_produk
                            }">Buy
                                Now</a>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="content-left">
                        <h6 class="title"><a href="${BASE_URL}/detail/${
            result.id_produk
          }">${result.nama_produk}</a></h6>
                        <ul class="review-star">
                            Stock Available
                        </ul>
                    </div>
                    <div class="content-right">
                        <span class="price">${formatter.toRupiah(
                          result.harga
                        )}</span>
                    </div>

                </div>
            </div>
            `;
        });

        if ($("#produk-slider").length > 0) {
          $("#produk-slider").html(handler);
          setSlider1row();
        }
      }
    },
    error: function (e) {
      alert("error");
      console.log(e);
    },
  });
}