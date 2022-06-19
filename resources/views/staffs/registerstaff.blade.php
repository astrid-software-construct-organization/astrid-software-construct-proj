<x-app-layout :assets="$assets ?? []">


    @if (session('status'))
        <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <div class="header-title">
                <h4 class="card-title">Register New Staff</h4>
            </div>
        </div>
        <div class="card-body">

            <form method="POST">
                @csrf
                <div class="form-group">
                    <label class="form-label" for="staff_name">Staff Name:</label>
                    <input type="text" class="form-control" name="staff_name" value="{{ old('staff_name') }}">
                </div>
                <div class="form-group">
                    <label class="form-label" for="gender">Gender</label>
                    <select class="form-select" data-trigger name="gender" id="gender">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label" for="DOB">Date of Birth:</label>
                    <input type="date" class="form-control" name="DOB" value="{{ old('DOB') }}">
                </div>

                <div class="form-group">
                    <label class="form-label" for="ic_no">IC Number:</label>
                    <input type="text" class="form-control" name="ic_no" value="{{ old('ic_no') }}">
                </div>

                <div class="form-group">
                    <label class="form-label" for="telNo">Phone Number:</label>
                    <input type="text" class="form-control" name="telNo" value="{{ old('telNo') }}">
                </div>

                <div class="form-group">
                    <label class="form-label" for="emergency_telNo">Emergency Contact Number:</label>
                    <input type="text" class="form-control" name="emergency_telNo"
                        value="{{ old('emergency_telNo') }}">
                </div>

                <div class="form-group">
                    <label class="form-label" for="address">Address:</label>
                    <input type="text" class="form-control" name="address" value="{{ old('address') }}">
                </div>

                <label class="form-label" for="storeID">Assigned To:</label>
                <select class="form-select" data-trigger name="storeID">
                    @foreach ($stores as $store)
                        <option value="{{ $store->id }}">{{ $store->store_name }}</option>
                    @endforeach
                </select>
                <br>

                <div class="form-group">
                    <label class="form-label" for="salaryHour">Salary Per Hour:</label>
                    <input type="number" class="form-control" name="salaryHour" value="{{ old('salaryHour') }}"
                        pattern="(?:\d*\.\d{1,2}|\d+)$">
                </div>

                <div class="form-group">
                    <label class="form-label" for="salaryDay">Salary Per Day:</label>
                    <input type="number" class="form-control" name="salaryDay" value="{{ old('salaryDay') }}"
                        pattern="(?:\d*\.\d{1,2}|\d+)$">
                </div>



                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="reset" class="btn btn-danger">Cancel</button>
            </form>
        </div>
    </div>



</x-app-layout>
