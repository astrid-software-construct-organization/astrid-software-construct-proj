<x-app-layout :assets="$assets ?? []">

    @if (session('status'))
        <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif

    <a href="{{ route('registerstaff') }}" class="btn btn-primary">

        <svg width="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd"
                d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z"
                stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
                d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z"
                stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                stroke-linejoin="round"></path>
            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                stroke-linejoin="round"></path>
        </svg>
        Register New Staff
    </a>
    {{-- <a href="{{ url('salary-staff') }}" class="btn btn-primary">

        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-clipboard-plus" width="24"
            height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
            stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
            <path d="M9 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-12a2 2 0 0 0 -2 -2h-2"></path>
            <rect x="9" y="3" width="6" height="4" rx="2"></rect>
            <path d="M10 14h4"></path>
            <path d="M12 12v4"></path>
        </svg>
        Calculate Staff Salary
    </a> --}}
    <br><br>



    <div class="page-body">
        <div class="container-xl">
            <div class="row row-cards">
                @foreach ($staffs as $staff)
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">{{ $staff->staff_name }}</h3>

                            </div>

                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td>Staff Name:</td>
                                        <td>{{ $staff->staff_name }}</td>
                                    </tr>
                                    <tr>
                                        <td>Gender:</td>
                                        <td>{{ $staff->gender }}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth:</td>
                                        <td>{{ $staff->DOB }}</td>
                                    </tr>
                                    <tr>
                                        <td>IC Number</td>
                                        <td>{{ $staff->ic_no }}</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>{{ $staff->address }}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number:</td>
                                        <td>{{ $staff->telNo }}</td>
                                    </tr>
                                    <tr>
                                        <td>Emergency Contact Number:</td>
                                        <td> {{ $staff->emergency_telNo }}</td>
                                    </tr>
                                    <tr>
                                        <td>Assigned To:

                                            @foreach ($stores as $store)
                                                @if ($store->id == $staff->storeID)
                                        <td>{{ $store->store_name }}</td>
                @endif
                @endforeach
                </tr>
                <tr>
                    <td>Salary Per Day:</td>
                    <td> {{ $staff->salaryDay }}</td>
                </tr>
                </table>

                    <br>

                <div class="card-actions">
                    <table>
                        <tr>
                            <td><a href="{{ url('attendance-staff/' . $staff->id) }}"
                                    class="btn btn-success">Attendance</a>
                            </td>
                            <td><a href="{{ url('staff/' . $staff->id . '/edit') }}" class="btn btn-primary">Edit</a>
                            </td>
                            <td>
                                <form method="post" action="{{ route('staff.destroy', $staff->id) }}">
                                    @method('delete')
                                    @csrf
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>

                        </tr>
                    </table>
                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>




</x-app-layout>
