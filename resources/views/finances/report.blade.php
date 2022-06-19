<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Report: {{ $startdate }} to {{ $enddate }}</h4>
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
                                        <td>store_name</td>
                                        {{-- @if (empty($transaction->store_id))
                                            <td>-</td>
                                        @else
                                            @foreach ($stores as $store)
                                                @if ($store->id == $transaction->store_id)

                                                @endif
                                            @endforeach
                                        @endif --}}
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
                        <a href="{{ url('report-pdf/' . $startdate . '/' . $enddate ) }}" class="btn btn-primary">
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

                            Generate Report</a>


                    </div>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>



