<x-app-layout :assets="$assets ?? []">

    @if (session('status'))
        <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <div class="header-title">
                <h4 class="card-title">Edit Store Information</h4>
            </div>
        </div>
        <div class="card-body">

            <form action="{{ url('update-account/' . $user->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label class="form-label" for="name">Store Name:</label>
                    <input type="text" class="form-control" name="name" value="{{ $user->name }}" required>
                </div>
                <div class="form-group">
                    <label class="form-label" for="email">Email:</label>
                    <input type="email" class="form-control" name="email" value="{{ $user->email }}" required>
                </div>
                <div class="form-group">
                    <label class="form-label" for="role">Role:</label>
                    <select class="form-select" data-trigger name="role">
                        <option value="Admin">Admin</option>
                        <option value="Staff">Staff</option>
                    </select>
                </div>


                <button type="submit" class="btn btn-primary">Update Account</button>
                <button type="reset" class="btn btn-danger">Cancel</button>
            </form>
        </div>
    </div>




</x-app-layout>
