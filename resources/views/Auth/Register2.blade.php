@extends('Auth/template/Auth2')
@section('title', 'Sign Up | Infinite Mart')

@section('content')

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-7">
                <div class="wrap">
                    <div>
                        <img class="img" src="{{asset('img')}}/bg-1.jpg" style="width: 100%;">
                    </div>
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4">Sign Up</h3>
                            </div>
                            <div>
                            </div>
                        </div>
                        <form action="#" class="signin-form" id="registerAccount">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group mt-3">
                                        <input type="email" id="email" class="form-control" required>
                                        <label class="form-control-placeholder" for="email">Email</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group mt-3">
                                        <input type="text" id="username" class="form-control" required>
                                        <label class="form-control-placeholder" for="username">Username</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" id="firstName" class="form-control" required>
                                        <label class="form-control-placeholder" for="firstName">First Name</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" id="lastName" class="form-control" required>
                                        <label class="form-control-placeholder" for="lastName">Last Name</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon1">+62</span>
                                            <input type="text" id="PhoneNumber" class="form-control"
                                                onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"
                                                required aria-describedby="basic-addon1">
                                            <label class="form-control-placeholder ml-5" for="PhoneNumber">Phone
                                                Number</label>
                                        </div>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" id="postal_code" class="form-control"
                                            onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"
                                            required>
                                        <label class="form-control-placeholder" for="postal_code">Post Code</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" id="kota" class="form-control" required>
                                        <label class="form-control-placeholder" for="kota">City</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" id="country_code" class="form-control" required
                                            list="datalistCountry">
                                        <label class="form-control-placeholder" for="country_code">Code Country</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                    <datalist id="datalistCountry"></datalist>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input id="password-field" type="password" class="form-control" required>
                                        <label class="form-control-placeholder" for="password-field">Password</label>
                                        <span toggle="#password-field"
                                            class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea id="address" type="text" class="form-control" required
                                            style="resize: none; height: 100px;"></textarea>
                                        <label class="form-control-placeholder" for="address">Address</label>
                                        <small class="validate text-danger"></small>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3" id="btn-register">Sign
                                    Up</button>
                            </div>
                        </form>
                        <p class="text-center">Already have an account? <a data-toggle="tab"
                                href="{{url("/login")}}">Sign In</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection