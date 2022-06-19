<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-order">
                Add Order
            </button><br><br>
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header d-grid gap-3 d-flex justify-content-between">
                        {{-- <div class="d-grid gap-3 d-md-flex justify-content"> --}}
                        <div class="header-title">
                            <h4> Order for Today :{{ $store->store_name }}

                        {{-- <a href="{{ route('registerstore') }}" class="btn btn-success btn-sm">

                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-refresh" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <path d="M20 11a8.1 8.1 0 0 0 -15.5 -2m-.5 -4v4h4"></path>
                                <path d="M4 13a8.1 8.1 0 0 0 15.5 2m.5 4v-4h-4"></path>
                             </svg>
                        </a> --}}
                            </h4>
                        {{-- </div> --}}
                        </div>

                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive mt-4">
                            <table id="basic-table" class="table table-striped mb-0" role="grid">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Quantity</th>
                                        <th>Description</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders as $order)

                                    <tr>
                                        <td>
                                            <h6>{{ $order->order }}</h6>
                                        </td>
                                        <td>
                                            {{ $order->quantity }}
                                        </td>
                                        <td> {{ $order->description }} </td>

                                        <td>
                                            <div class="d-grid gap-2 d-md-flex justify-content">
                                                {{-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit-order">
                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                        class="icon icon-tabler icon-tabler-edit" width="24" height="24"
                                                        viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                                        fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                        <path
                                                            d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1">
                                                        </path>
                                                        <path
                                                            d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z">
                                                        </path>
                                                        <path d="M16 5l3 3"></path>
                                                    </svg>

                                                </button> --}}
                                                <form method="post" action="{{ route('order.destroy' , $order->id ) }}">
                                                    @method('DELETE')
                                                    @csrf
                                                    <button type="submit" action="" class="btn btn-danger btn-sm">
                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                            class="icon icon-tabler icon-tabler-trash" width="24"
                                                            height="24" viewBox="0 0 24 24" stroke-width="2"
                                                            stroke="currentColor" fill="none" stroke-linecap="round"
                                                            stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                            <line x1="4" y1="7" x2="20" y2="7"></line>
                                                            <line x1="10" y1="11" x2="10" y2="17"></line>
                                                            <line x1="14" y1="11" x2="14" y2="17"></line>
                                                            <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12">
                                                            </path>
                                                            <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3"></path>
                                                        </svg>

                                                    </button>


                                                </form>
                                            </div>
                                        </td>

                                    </tr>

                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>



                <div class="d-grid col-4 mx-auto">
                    <a href="{{ url('order-pdf/' . $storeID . '/' . $order_date )}}" class="btn btn-primary" type="button">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-printer" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <path d="M17 17h2a2 2 0 0 0 2 -2v-4a2 2 0 0 0 -2 -2h-14a2 2 0 0 0 -2 2v4a2 2 0 0 0 2 2h2"></path>
                            <path d="M17 9v-4a2 2 0 0 0 -2 -2h-6a2 2 0 0 0 -2 2v4"></path>
                            <rect x="7" y="13" width="10" height="8" rx="2"></rect>
                         </svg>
                         Print Order</a>
                </div>

            </div>
        </div>

        <div class="modal modal-blur fade" id="add-order" tabindex="-1" style="display: none;" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Order</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form method="POST" action="{{ route('order.store') }}">
                            @csrf
                            <div class="mb-3">
                                <label class="form-label" for="storeID">Store:</label>
                                <input type="text" class="form-control" name="order" value="{{ $store->store_name }}" readonly>
                                        </div>
                             <input type="hidden" class="form-control" name="store_id" value="{{ $store->id }}" readonly>

                            <div class="mb-3">
                                <label class="form-label">Order</label>
                                <input type="text" class="form-control" name="order" value="{{ old('order') }}"
                                    placeholder="Your order">
                            </div>
                            <div class="mb-3">

                                <label class="form-label">Quantity</label>
                                <input type="number" class="form-control" name="quantity" value="{{ old('quantity') }}"
                                    placeholder="Quantity">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <input type="text" class="form-control" value="{{ old('description') }}"
                                    name="description" placeholder="Description of order">
                            </div>
                            <input type="hidden" value="{{ $order_date }}" name="order_date">
                            <div class="modal-footer">
                                <a href=# class="btn btn-link link-secondary" data-bs-dismiss="modal">
                                    Cancel
                                </a>
                                <button type="submit" class="btn btn-primary ms-auto" data-bs-dismiss="modal">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                        viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                        stroke-linecap="round" stroke-linejoin="round">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                        <line x1="12" y1="5" x2="12" y2="19"></line>
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                    </svg>
                                    Add Order
                                    </a>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

    {{-- <div class="modal modal-blur fade" id="edit-order" tabindex="-1" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Order</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Order</label>
                        <input type="text" class="form-control" name="order" value="order" placeholder="Your order">
                    </div>
                    <div class="mb-3">

                        <label class="form-label">Quantity</label>
                        <input type="number" class="form-control" name="quantity" value="" placeholder="Quantity">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <input type="text" class="form-control" value="" name="description"
                            placeholder="Description of order">
                    </div>

                    <div class="modal-footer">
                        <a href="#" class="btn btn-link link-secondary" data-bs-dismiss="modal">
                            Cancel
                        </a>
                        <a href="#" class="btn btn-primary ms-auto" data-bs-dismiss="modal">
                            <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                stroke-linecap="round" stroke-linejoin="round">
                                <desc>Download more icon variants from https://tabler-icons.io/i/plus</desc>
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <line x1="12" y1="5" x2="12" y2="19"></line>
                                <line x1="5" y1="12" x2="19" y2="12"></line>
                            </svg>
                            Update Order
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
</div>
</div>

</x-app-layout>

