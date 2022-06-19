<x-app-layout :assets="$assets ?? []">

    @if (session('status'))
    <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif
    <a href="{{ route('stores.index') }}" type="button" class="btn btn-primary">< Back</a>
    <br><br>
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <div class="header-title">
                <h4 class="card-title">Register New Store</h4>
            </div>
        </div>
        <div class="card-body">

            <form method="POST">
                @csrf
                <div class="form-group">
                    <label class="form-label" for="store_name">Store Name:</label>
                    <input type="text" class="form-control" name="store_name" value="{{ old('store_name') }}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="establish_date">Date of Establishment:</label>
                    <input type="date" class="form-control" name="establish_date"
                        value="{{ old('establish_date') }}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="store_location">Store Location:</label>
                    <input type="text" class="form-control" name="store_location"
                        value="{{ old('store_location') }}">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-danger">Cancel</button>
            </form>
        </div>
    </div>



</x-app-layout>
