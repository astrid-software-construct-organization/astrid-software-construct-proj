<x-app-layout :assets="$assets ?? []">
    <div class="row">
        <div class="col-sm-12">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-order">

                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart-plus" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <circle cx="6" cy="19" r="2"></circle>
                    <circle cx="17" cy="19" r="2"></circle>
                    <path d="M17 17h-11v-14h-2"></path>
                    <path d="M6 5l6.005 .429m7.138 6.573l-.143 .998h-13"></path>
                    <path d="M15 6h6m-3 -3v6"></path>
                 </svg>

                 Add Order
            </button><br><br>


            <div class="col-sm-12">
                <div class="card">

                    <div class="card-header d-flex justify-content-between">

                        <div class="header-title">
                            <h4 class="card-title"> Order for Today</h4>
                        </div>

                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive mt-4">
                            <table id="basic-table" class="table table-striped mb-0" role="grid">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Store</th>
                                        <th>Status</th>
                                        <th>Order</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($stores as $store)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td> {{ $store->store_name }} </td>
                                            <td>
                                                <div class="text-info">New</div>
                                            </td>
                                            <td>
                                                <a href="{{ url('store-order/' . $store->id) }}"
                                                    class="btn btn-primary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                        <circle cx="6" cy="19" r="2"></circle>
                                                        <circle cx="17" cy="19" r="2"></circle>
                                                        <path d="M17 17h-11v-14h-2"></path>
                                                        <path d="M6 5l14 1l-1 7h-13"></path>
                                                     </svg>
                                                    View Order
                                                </a>
                                            </td>
                                    @endforeach

                                </tbody>

                            </table>
                        </div>

                    </div>

                </div>

            </div>


            <div class="modal modal-blur fade" id="add-order" tabindex="-1" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add Order</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form method="POST" action="{{ route('order.store') }}">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="storeID">Store:</label>
                                    <select class="form-select" data-trigger name="store_id">
                                        @foreach ($stores as $store)
                                            <option value="{{ $store->id }}">{{ $store->store_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Order</label>
                                    <input type="text" class="form-control" name="order" value="{{ old('order') }}"
                                        placeholder="Your order">
                                </div>
                                <div class="mb-3">

                                    <label class="form-label">Quantity</label>
                                    <input type="number" class="form-control" name="quantity"
                                        value="{{ old('quantity') }}" placeholder="Quantity">
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
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                            height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                                            fill="none" stroke-linecap="round" stroke-linejoin="round">
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
            {{-- <div class="d-grid col-5 mx-auto">
                <button class="btn btn-primary" type="button">View ALL Order</button>
            </div> --}}
</x-app-layout>
