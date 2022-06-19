<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Sales</h4>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped" data-toggle="data-table">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Store</th>
                                    <th>Category</th>
                                    <th>Amount</th>

                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($sales as $sale)
                                    <tr>
                                        <td>{{ $sale->date }}</td>
                                        @if (empty($sale->store_id))
                                            <td>-</td>
                                        @else
                                            @foreach ($stores as $store)
                                                @if ($store->id == $sale->store_id)
                                                    <td>{{ $store->store_name }}</td>
                                                @endif
                                            @endforeach
                                        @endif
                                        <td>{{ $sale->category }}</td>

                                        <td style="color:green"> {{ $sale->amount }} </td>
                                    </tr>
                                @endforeach

                            <tfoot>
                                <tr>
                                    <th>Date</th>
                                    <th>Store</th>
                                    <th>Category</th>
                                    <th>Amount</th>

                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
