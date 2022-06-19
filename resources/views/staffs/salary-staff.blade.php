<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Staff Salary</h4>
                    </div>
                </div>
                <div class="card-body">

                    <table>
                        <tr>
                            <td>
                                <h6 class="card-title">Start Date </h6>
                            </td>
                            <td> <input type="date" class="form-control" name="startdate" value="">
                            </td>
                            <td>
                                <h6 class="card-title">---- End Date</h6>
                            </td>
                            <td> <input type="date" class="form-control" name="enddate" value="">
                            </td>

                            <td>

                                <a href="{{ route('registerstaff') }}"  class="btn btn-primary btn-sm">

                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-square-plus" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                        <desc>Download more icon variants from https://tabler-icons.io/i/square-plus</desc>
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                        <rect x="4" y="4" width="16" height="16" rx="2"></rect>
                                        <line x1="9" y1="12" x2="15" y2="12"></line>
                                        <line x1="12" y1="9" x2="12" y2="15"></line>
                                     </svg>
                                    Calculate Total Salary
                                </a>
                            </td>

                        </tr>
                    </table><br><br>
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped" data-toggle="data-table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Staff Name</th>
                                    <th>Calculated Salary</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td> 1</td>

                                    <td>Staff Name</td>


                                    <td>RM5000</td>

                                </tr>


                            <tfoot>
                                <tr>
                                    <th>No.</th>
                                    <th>Staff Name</th>
                                    <th>Calculated Salary</th>

                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
