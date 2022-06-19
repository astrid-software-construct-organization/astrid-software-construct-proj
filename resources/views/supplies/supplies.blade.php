<x-app-layout :assets="$assets ?? []">


    @if (session('status'))
        <h6 class="alert alert-success">{{ session('status') }}</h6>
    @endif

    <a href="{{ route('registerstore') }}" class="btn btn-primary">

        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-building-store" width="32"
            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
            stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
            <line x1="3" y1="21" x2="21" y2="21"></line>
            <path d="M3 7v1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1m0 1a3 3 0 0 0 6 0v-1h-18l2 -4h14l2 4"></path>
            <line x1="5" y1="21" x2="5" y2="10.85"></line>
            <line x1="19" y1="21" x2="19" y2="10.85"></line>
            <path d="M9 21v-4a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v4"></path>
        </svg>
        Register New Store
    </a>


    <br><br>
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
                                <th>Store Name</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($stores as $store)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td> {{ $store->store_name }} </td>

                                    <td>
                                        <a href="{{ url('store-supplies/' . $store->id) }}" class="btn btn-primary">
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                class="icon icon-tabler icon-tabler-box" width="24" height="24"
                                                viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                                stroke-linecap="round" stroke-linejoin="round">

                                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                <polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3">
                                                </polyline>
                                                <line x1="12" y1="12" x2="20" y2="7.5"></line>
                                                <line x1="12" y1="12" x2="12" y2="21"></line>
                                                <line x1="12" y1="12" x2="4" y2="7.5"></line>
                                            </svg>
                                            View Supplies
                                        </a>
                                    </td>
                            @endforeach

                        </tbody>

                    </table>
                </div>

            </div>

        </div>

    </div>

</x-app-layout>
