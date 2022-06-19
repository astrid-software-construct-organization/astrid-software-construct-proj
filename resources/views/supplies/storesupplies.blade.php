    <x-app-layout :assets="$assets ?? []">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">Store Supplies for {{ $store->store_name }}</h4>
                        </div>
                    </div>
                    <div class="card-body">

                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addSupply">
                            Add Supply
                        </button>
                        <br><br>



                        <div class="table-responsive">
                            <table id="datatable" class="table table-striped" data-toggle="data-table">
                                <thead>
                                    <tr>
                                        <th>Item Name</th>
                                        <th>Quantity</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($supplies as $supply)
                                        @if ($supply->store_id == $store->id)
                                            <tr>
                                                <td>{{ $supply->itemName }}</td>
                                                <td>{{ $supply->quantity }}</td>

                                                <td>

                                                    <div class="d-grid gap-2 d-md-flex">

                                                        <a href="" id="edit-supply" class="btn btn-success btn-sm"
                                                            data-bs-toggle="modal" data-bs-target="#editSupply"
                                                            data-id="{{ $supply->id }}">
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

                                                        </a>

                                                        <form method="post"
                                                            action="{{ route('supply.destroy', $supply->id) }}">
                                                            @method('DELETE')
                                                            @csrf
                                                            <button type="submit" class="btn btn-danger btn-sm">
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

                                                            </button>
                                                        </form>

                                                    </div>
                                                </td>
                                        @endif
                                        </tr>
                                    @endforeach

                                <tfoot>
                                    <tr>
                                        <th>Item Name</th>
                                        <th>Quantity</th>
                                        <th>Action</th>

                                    </tr>
                                </tfoot>



                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </x-app-layout>

           {{-- EDIT SUPPLY --}}
           <div class="modal fade" id="editSupply" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Edit Supply</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editsupply" action="{{ url('supply/' . $supply->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <table class="table table-striped">
                                <input type="hidden" id="supply_id" name="supply_id" value="">

                                <input type="hidden" id="store_id" name="store_id" value="{{ $store->id }}">

                                <tr>
                                    <td>Item Name</td>
                                    <td> <input type="text" class="form-control"
                                            name="itemName" id="itemName" value=""> </td>
                                </tr>
                                <tr>
                                    <td>Quantity</td>
                                    <td> <input type="number" class="form-control"
                                            name="quantity" id="quantity" value=""> </td>
                            </table>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="submit"
                            class="btn btn-primary">Update</button>

                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Modal Add-->
        <div class="modal fade" id="addSupply" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Add Supply</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form method="POST" action="{{ url('supply') }}">
                            @csrf
                            <table class="table table-striped">
                                <tr>
                                    <td>Item Name</td>
                                    <td> <input type="text" class="form-control" name="itemName"
                                            value="{{ old('itemName') }}"> </td>
                                </tr>
                                <tr>
                                    <td>Quantity</td>
                                    <td> <input type="number" class="form-control" name="quantity"
                                            value="{{ old('quantity') }}"> </td>
                            </table>

                            <input type="hidden" value="{{ $store->id }}" name="store_id">
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Add Supply</button>

                    </div>
                    </form>
                </div>
            </div>
        </div>






    @push('script')
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script>
            $(document).ready(function() {

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $('body').on('click', '#submit', function(event) {
                    event.preventDefault()
                    var id = $("#supply_id").val();
                    var sid = $("#store_id").val();
                    var itemName = $("#itemName").val();
                    var quantity = $("#quantity").val();

                    $.ajax({
                        urlpw: 'supply/' + id,
                        type: "POST",
                        data: {
                            id: id,
                            sid: sid,
                            itemName: itemName,
                            quantity: quantity,
                        },
                        dataType: 'json',
                        success: function(data) {

                            $('#editsupply').trigger("reset");
                            $('#editSupply').modal('hide');
                            window.location.reload(true);
                        }
                    });
                });

                $('body').on('click', '#edit-supply', function(event) {

                    event.preventDefault();
                    var id = $(this).data('id');
                    var sid = $(this).data('sid');

                    console.log(id)
                    $.get('supply/' + id + '/edit', function(data) {
                        $('#userCrudModal').html("Edit category");
                        $('#submit').val("Edit category");
                        $('#practice_modal').modal('show');
                        $('#supply_id').val(data.data.id);
                        $('#store_id').val(data.data.sid);

                        $('#itemName').val(data.data.itemName);
                        $('#quantity').val(data.data.quantity);

                    })
                });

            });
        </script>
    @endpush
