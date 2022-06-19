{{-- <x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-order">
                Add Order
            </button><br><br>
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header d-grid gap-3 d-flex justify-content-between">
                         <div class="d-grid gap-3 d-md-flex justify-content">
                        <div class="header-title">
                            <h4> All Order for Today </h4>
                         </div>
                        </div>

                    </div>
                    <div class="card-body p-0">

                        @if ()



                        <div class="table-responsive mt-4">
                            <table id="basic-table" class="table table-striped mb-0" role="grid">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Quantity</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($orders as $order)
                                        @if ()


                                    <tr>
                                        <td>
                                            <h6>{{ $order->order }}</h6>
                                        </td>
                                        <td>
                                            {{ $order->quantity }}
                                        </td>
                                        <td> {{ $order->description }} </td>
                                    </tr>
                                     @endif
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>

                @endif

                <div class="d-grid col-5 mx-auto">
                    <a href="{{ url('order-pdf/' . $orders[0]->store_id) . '/' . $orders[0]->order_date }}" class="btn btn-primary" type="button">Print Order</a>
                </div>

            </div>
        </div>



</div>
</div>

</x-app-layout>
 --}}
