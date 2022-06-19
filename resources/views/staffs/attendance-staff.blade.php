<?php
use Carbon\Carbon;

?>

<x-app-layout :assets="$assets ?? []">

    @if (session('status'))
        <h6 class="alert alert-danger">{{ session('status') }}</h6>
    @endif

    @if (session('message'))
    <h6 class="alert alert-success">{{ session('message') }}</h6>
    @endif
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Attendance for {{ $staff->staff_name }}</h4>

                    </div>
                    <div class="d-grid col-3 mx-left">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#calculate-salary">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-clipboard-plus"
                                width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <path
                                    d="M9 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-12a2 2 0 0 0 -2 -2h-2">
                                </path>
                                <rect x="9" y="3" width="6" height="4" rx="2"></rect>
                                <path d="M10 14h4"></path>
                                <path d="M12 12v4"></path>
                            </svg>
                            Calculate Salary</button>

                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped" data-toggle="data-table">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Attendance</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($attendances as $attendance)
                                    <tr>
                                        <td>{{ $attendance->date }}</td>
                                        <td>{{ Carbon::createFromFormat('Y-m-d H:i:s', $attendance->datetime)->format('h:i:s') }}
                                            @if ($attendance->attendType == 'Presence')
                                        <td style="color:rgb(14, 188, 23)"> Presence </td>
                                    @else
                                        <td style="color:red"> Absence </td>
                                @endif

                                </tr>
                                @endforeach
                            <tfoot>
                                <tr>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Attendance</th>

                                </tr>
                            </tfoot>
                        </table>
                    </div>



                    <div class="d-grid col-3 mx-auto">
                        <form action="{{ route('attendance.store') }}" method="POST">
                            @csrf
                            <input type="hidden" name="staffID" value="{{ $staff->id }}">
                            {{-- <input type="hidden" name="attendType" value="Presence"> --}}
                            <input type="hidden" name="date" value="{{ Carbon::now()->format('Y-m-d') }}">
                            <input type="hidden" name="datetime" value="{{ Carbon::now() }}">

                            <button type="submit" name="action" value="Presence"
                                class="btn btn-success">Presence</button>
                            <button type="submit" name="action" value="Absence" class="btn btn-danger">Absence</button>

                        </form>

                    </div>

                </div>
            </div>
        </div>

    </div>

    <div class="modal modal-blur fade" id="calculate-salary" tabindex="-1" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Choose Month of The Year</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <table class="table table-striped">
                        <form action="{{ route('totalsalary', $staff->id) }}">
                            <tr>
                                <td>Start Date</td>
                                <td> <input type="date" class="form-control" name="startdate" value=""> </td>
                            </tr>
                            <tr>
                                <td>End Date</td>
                                <td> <input type="date" class="form-control" name="enddate" value=""> </td>
                    </table>

                    <div class="d-grid col-4 mx-auto">

                        <button type="submit" name="calcSalary" value="" class="btn btn-primary btn-md">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-square-plus"
                                width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <rect x="4" y="4" width="16" height="16" rx="2"></rect>
                                <line x1="9" y1="12" x2="15" y2="12"></line>
                                <line x1="12" y1="9" x2="12" y2="15"></line>
                            </svg>
                            Calculate Salary</button>

                    </div>
                    </form>

                    @if (session('message'))
                    <h6 class="alert alert-success">{{ session('message') }}</h6>
                @endif
                </div>
            </div>
        </div>


</x-app-layout>
