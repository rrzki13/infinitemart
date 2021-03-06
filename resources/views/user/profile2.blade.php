@extends('template.User2')

@section('title', "Profile | InfiniteMart")

@section('content')


<div id="profileSectionReadOnly"></div>

<!-- material-scrolltop button -->
<button class="material-scrolltop" type="button">
    <i class="fas fa-angle-up text-white" style="font-size: 25px;"></i>
</button>

<!-- ...:::: Start Breadcrumb Section:::... -->
<div class="breadcrumb-section breadcrumb-bg-color--golden">
    <div class="breadcrumb-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="breadcrumb-title">My Profile</h3>
                </div>
            </div>
        </div>
    </div>
</div> <!-- ...:::: End Breadcrumb Section:::... -->

<!-- ...:::: Start Account Dashboard Section:::... -->
<div class="account-dashboard" style="margin-bottom: 5rem;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-3 col-lg-3">
                <!-- Nav tabs -->
                <div class="dashboard_tab_button" data-aos="fade-up" data-aos-delay="0">
                    <ul role="tablist" class="nav flex-column dashboard-list">
                        <li><a href="#account-details" data-bs-toggle="tab"
                                class="nav-link btn btn-block btn-md btn-black-default-hover active">Account details</a>
                        </li>
                        <li> <a href="#orders" data-bs-toggle="tab"
                                class="nav-link btn btn-block btn-md btn-black-default-hover" id="btn-history">My
                                History</a></li>
                        <li><a class="nav-link btn btn-block btn-md btn-black-default-hover" id="logout-profile">Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md-9 col-lg-9">
                <!-- Tab panes -->
                <div class="tab-content dashboard_content" data-aos="fade-up" data-aos-delay="200">
                    <div class="tab-pane fade" id="orders">
                        <h4>My History</h4>
                        <div class="table_page table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product_remove">No</th>
                                        <th class="product_thumb">Image</th>
                                        <th class="product_name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_stock">Status</th>
                                    </tr>
                                </thead>
                                <tbody id="history-users"></tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade active" id="account-details">
                        <h3>Account details </h3>
                        <div class="login">
                            <div class="login_form_container">
                                <div class="account_login_form">
                                    <form action="#" id="form-update-profile">
                                        <div class="default-form-box mb-20 mt-3">
                                            <label>Email <Address></Address></label>
                                            <strong id="email-me">Rizki@gmail.com</span>
                                        </div>
                                        <div class="default-form-box mb-20">
                                            <label>First Name</label>
                                            <input type="text" name="first-name" required id="first-name-me">
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="default-form-box mb-20">
                                            <label>Last Name</label>
                                            <input type="text" name="last-name" required id="last-name-me">
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="default-form-box mb-20">
                                            <label>Username</label>
                                            <input type="text" name="email-name" required id="username-me">
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="default-form-box mb-20 input-group">
                                            <label>Phone Number</label>
                                            <input type="text" id="phone-me"
                                                onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"
                                                required aria-describedby="basic-addon1">
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="default-form-box mb-20">
                                            <label>Postal Code</label>
                                            <input type="text" name="email-name" required
                                                onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"
                                                id="postal-code-me">
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="default-form-box mb-20">
                                            <label>Address</label>
                                            <textarea name="" id="address-me"></textarea>
                                            <small class="validation-server-profile text-danger"></small>
                                        </div>
                                        <div class="save_button mt-3">
                                            <button class="btn btn-md btn-black-default-hover" type="submit"
                                                id="btn-save-profile">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- ...:::: End Account Dashboard Section:::... -->
@endsection