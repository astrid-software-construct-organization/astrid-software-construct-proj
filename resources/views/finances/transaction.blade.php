<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Transaction</h4>
                    </div>
                </div>

                <div class="card-body">

                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped" role="grid">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Store</th>
                                    <th>Note</th>
                                    <th>Category</th>
                                    <th>Amount</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($transactions as $transaction)
                                    <tr>
                                        <td>{{ $transaction->date }}</td>
                                        @if (empty($transaction->store_id))
                                            <td>-</td>
                                        @else
                                            @foreach ($stores as $store)
                                                @if ($store->id == $transaction->store_id)
                                                    <td>{{ $store->store_name }}</td>
                                                @endif
                                            @endforeach
                                        @endif
                                        <td>{{ $transaction->note }}</td>
                                        <td>{{ $transaction->category }}</td>
                                        @if ($transaction->record_type == 'Income')
                                            <td style="color:blue"> {{ $transaction->amount }} </td>
                                        @else
                                            <td style="color:red"> {{ $transaction->amount }} </td>
                                        @endif
                                    </tr>
                                @endforeach

                            <tfoot>
                                <tr>
                                    <th>Date</th>
                                    <th>Store</th>
                                    <th>Note</th>
                                    <th>Category</th>
                                    <th>Amount</th>

                                </tr>
                            </tfoot>
                        </table>
                    </div>

                    <div class="d-grid col-4 mx-auto">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#print-report">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-printer"
                                width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <path
                                    d="M17 17h2a2 2 0 0 0 2 -2v-4a2 2 0 0 0 -2 -2h-14a2 2 0 0 0 -2 2v4a2 2 0 0 0 2 2h2">
                                </path>
                                <path d="M17 9v-4a2 2 0 0 0 -2 -2h-6a2 2 0 0 0 -2 2v4"></path>
                                <rect x="7" y="13" width="10" height="8" rx="2"></rect>
                            </svg>

                            Generate Report</button>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal modal-blur fade" id="print-report" tabindex="-1" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-md modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Choose Period of The Report</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                        <form method="POST" action="{{ url('/report') }}">
                            @csrf

                                <div class="form-group">
                                    Start Date: <input type="date" class="form-control" name="startdate"
                                        value="{{ old('startdate') }}">
                                    <br>
                                    End Date: <input type="date" class="form-control" name="enddate"
                                        value="{{ old('enddate') }}">
                                </div>
                    <div class="d-grid mx-auto">

                        <button type="submit" class="btn btn-primary" type="submit">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-square-plus"
                                width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <rect x="4" y="4" width="16" height="16" rx="2"></rect>
                                <line x1="9" y1="12" x2="15" y2="12"></line>
                                <line x1="12" y1="9" x2="12" y2="15"></line>
                            </svg>
                            View Report</button>

                    </div>
                    </form>

                </div>
            </div>

        </div>
</x-app-layout>




<script>
    $('input[type=radio]').click(function(e) {

        var reportperiod = $(this).val();
        $('.result').html(reportperiod);

    });
</script>
