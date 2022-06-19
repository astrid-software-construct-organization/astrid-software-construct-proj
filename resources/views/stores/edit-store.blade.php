<x-app-layout :assets="$assets ?? []">

    @if (session('status'))
        <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif

    <a href="{{ route('stores.index') }}" type="button" class="btn btn-primary">< Back</a>

    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <div class="header-title">
                <h4 class="card-title">Edit Store Information</h4>
            </div>
        </div>
        <div class="card-body">

            <form action="{{ url('update-store/' . $store->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label class="form-label" for="store_name">Store Name:</label>
                    <input type="text" class="form-control" name="store_name" value="{{ $store->store_name }}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="establish_date">Date of Establishment:</label>
                    <input type="date" class="form-control" name="establish_date"
                        value="{{ $store->establish_date }}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="store_location">Store Location:</label>
                    <input type="text" class="form-control" name="store_location"
                        value="{{ $store->store_location }}">
                </div>

                <button type="submit" class="btn btn-primary">Update Store</button>
                <button type="reset" class="btn btn-danger">Cancel</button>
            </form>
        </div>
    </div>



</x-app-layout>
