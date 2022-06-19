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


    <div class="page-body">
        <div class="container-xl">
            <div class="row row-cards">
                @foreach ($stores as $store)
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">{{ $store->store_name }}</h3>

                            </div>
                            <div class="card-body">

                                <table>
                                    <tr>
                                        <td>Store Name:</td>
                                        <td>{{ $store->store_name }}</td>
                                    </tr>
                                    <tr>
                                        <td>Establishment Date:</td>
                                        <td>{{ $store->establish_date }}</td>
                                    </tr>
                                    <tr>
                                        <td>Store Location:</td>
                                        <td>{{ $store->store_location }}</td>
                                    </tr>
                                </table>
                                <br>
                                <div class="card-actions">
                                    <table>
                                        <tr>
                                            <td><a href="{{ url('edit-store/' . $store->id) }}"
                                                    class="btn btn-primary">

                                                    <svg xmlns="http://www.w3.org/2000/svg"
                                                                class="icon icon-tabler icon-tabler-edit" width="24"
                                                                height="24" viewBox="0 0 24 24" stroke-width="2"
                                                                stroke="currentColor" fill="none" stroke-linecap="round"
                                                                stroke-linejoin="round">
                                                                <path stroke="none" d="M0 0h24v24H0z" fill="none">
                                                                </path>
                                                                <path
                                                                    d="M7 7h-1a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-1">
                                                                </path>
                                                                <path
                                                                    d="M20.385 6.585a2.1 2.1 0 0 0 -2.97 -2.97l-8.415 8.385v3h3l8.385 -8.415z">
                                                                </path>
                                                                <path d="M16 5l3 3"></path>
                                                            </svg>
                                                    Edit</a>
                                            </td>
                                            <td>
                                                <form method="post"
                                                    action="{{ route('stores.destroy', $store->id) }}">
                                                    @method('delete')
                                                    @csrf
                                                    <a type="submit" class="btn btn-danger">
                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                        class="icon icon-tabler icon-tabler-trash"
                                                        width="24" height="24" viewBox="0 0 24 24"
                                                        stroke-width="2" stroke="currentColor" fill="none"
                                                        stroke-linecap="round" stroke-linejoin="round">
                                                        <path stroke="none" d="M0 0h24v24H0z" fill="none">
                                                        </path>
                                                        <line x1="4" y1="7" x2="20" y2="7"></line>
                                                        <line x1="10" y1="11" x2="10" y2="17"></line>
                                                        <line x1="14" y1="11" x2="14" y2="17"></line>
                                                        <path
                                                            d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12">
                                                        </path>
                                                        <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3">
                                                        </path>
                                                    </svg>
                                                        Delete</a>
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


