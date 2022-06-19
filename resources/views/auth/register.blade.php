<x-guest-layout>
    <section class="login-content">
        <div class="row m-0 align-items-center bg-white vh-100">
            <div class="col-md-6 d-md-block d-none bg-primary p-0 mt-n1 vh-100 overflow-hidden">
                <img src="{{ asset('images/auth/01.jpg') }}" class="img-fluid gradient-main animated-scaleX"
                    alt="images">
            </div>
            <div class="col-md-6">
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="card card-transparent auth-card shadow-none d-flex justify-content-center mb-0">
                            <div class="card-body">

                                <h2 class="mb-2 text-center">Sign Up</h2>
                                <p class="text-center">Create your {{ env('APP_NAME') }} account.</p>
                                {{-- <x-auth-session-status class="mb-4" :status="session('status')" /> --}}

                                <!-- Validation Errors -->
                                {{-- <x-auth-validation-errors class="mb-4" :errors="$errors" /> --}}
                                <form method="POST" action="{{ route('register') }}" data-toggle=" validator">
                                    @csrf
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="full-name" class="form-label">Full Name</label>
                                                <input id="name" type="text"
                                                    class="form-control @error('name') is-invalid @enderror" name="name"
                                                    value="{{ old('name') }}" required autocomplete="name" autofocus>

                                                @error('name')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input id="email" type="email"
                                                    class="form-control @error('email') is-invalid @enderror"
                                                    name="email" value="{{ old('email') }}" required
                                                    autocomplete="email">

                                                @error('email')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="password" class="form-label">Password</label>
                                                <input id="password" type="password"
                                                    class="form-control @error('password') is-invalid @enderror"
                                                    name="password" required autocomplete="new-password">

                                                @error('password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="confirm-password" class="form-label">Confirm
                                                    Password</label>
                                                <input id="password-confirm" type="password" class="form-control"
                                                    name="password_confirmation" required autocomplete="new-password">

                                            </div>
                                        </div>

                                        <input id="role" type="hidden" name="role" value="admin" >

                                        {{-- <div class="d-flex justify-content-center">
                                            <div class="form-check mb-3">
                                                <label class="form-check-label" for="customCheck1">I agree with the
                                                    terms of use</label>
                                                <input type="checkbox" class="custom-control-input" id="customCheck1"
                                                    required>
                                            </div>
                                        </div> --}}
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <button type="submit" class="btn btn-primary"> {{ __('sign up') }}</button>
                                    </div>

                                    <p class="mt-3 text-center">
                                        Already have an Account <a href="{{ route('login') }}"
                                            class="text-underline">Sign In</a>
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</x-guest-layout>

