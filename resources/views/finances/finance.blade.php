<x-app-layout :assets="$assets ?? []">
    @if (session('status'))
    <h6 class="alert alert-success">{{ session('status') }}</h6>
@endif

    <div class="col-md-12">
        <div class="card">
            <ul class="nav nav-tabs nav-fill" data-bs-toggle="tabs">
                <li class="nav-item">
                    <a href="#tabs-income" class="nav-link" data-bs-toggle="tab">
                        <!-- Download SVG icon from https://tabler-icons.io/i/circle-plus -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-circle-plus"
                            width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                            fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <circle cx="12" cy="12" r="9"></circle>
                            <line x1="9" y1="12" x2="15" y2="12"></line>
                            <line x1="12" y1="9" x2="12" y2="15"></line>
                        </svg>
                        Income
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#tabs-expense" class="nav-link" data-bs-toggle="tab">
                        <!-- Download SVG icon from https://tabler-icons.io/i/circle-minus -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-circle-minus"
                            width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                            fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <circle cx="12" cy="12" r="9"></circle>
                            <line x1="9" y1="12" x2="15" y2="12"></line>
                        </svg>
                        Expense
                    </a>
                </li>

            </ul>
            <div class="card-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="tabs-income">
                        <div class="card-header d-flex justify-content-between">
                            <div class="header-title">
                                <h4 class="card-title">Income Record</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <form method="POST">
                                @csrf
                                <div class="form-group">
                                    <label class="form-label" for="date">Date:</label>
                                    <input type="date" class="form-control" name="date" value="{{ old('date') }}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="store">Store</label>

                                    <select class="form-select" data-trigger name="store_id">
                                        @foreach ($stores as $store)
                                            <option value="{{ $store->id }}">{{ $store->store_name }}</option>
                                        @endforeach
                                        <option value="">None</option>
                                    </select>
                                </div>
                                <input type="hidden" name="record_type" value="Income">
                                <div class="form-group">
                                    <label class="form-label" for="account">Account</label>
                                    <select class="form-select" data-trigger name="account" id="acccount">
                                        <option value="Cash">Cash</option>
                                        <option value="Bank Account">Bank Account</option>
                                        <option value="Credit Card">Credit Card</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="category">Category</label>
                                    <select class="form-select" data-trigger name="category" id="category">
                                        <option value="Sale">Sale</option>
                                        <option value="Allowance">Allowance</option>
                                        <option value="Salary">Salary</option>
                                        <option value="Supplies">Supplies</option>
                                        <option value="Petty Cash">Petty Cash</option>
                                        <option value="Bonus">Bonus</option>
                                        <option value="Debt">Debt</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="amount">Amount:</label>
                                    <input type="number" class="form-control" name="amount" min="0.00"
                                        max="10000000.00" step="0.01">
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="note">Note:</label>
                                    <input type="text" class="form-control" name="note" value="{{ old('note') }}">
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="description">Description:</label>
                                    <input type="text" class="form-control" name="description"
                                        value="{{ old('description') }}">
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-danger">Cancel</button>
                            </form>
                        </div>
                    </div>

                    <div class="tab-pane" id="tabs-expense">
                        <div class="card-header d-flex justify-content-between">
                            <div class="header-title">
                                <h4 class="card-title">Expense Record</h4>
                            </div>
                        </div>

                        <div class="card-body">

                            <form method="POST">
                                @csrf
                                <div class="form-group">
                                    <label class="form-label" for="date">Date:</label>
                                    <input type="date" class="form-control" name="date" value="{{ old('date') }}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="store">Store</label>
                                    <select class="form-select" data-trigger name="store_id">
                                        @foreach ($stores as $store)
                                            <option value="{{ $store->id }}">{{ $store->store_name }}</option>
                                        @endforeach
                                        <option value="">None</option>
                                    </select>
                                </div>
                                <input type="hidden" name="record_type" value="Expense">
                                <div class="form-group">
                                    <label class="form-label" for="account">Account</label>
                                    <select class="form-select" data-trigger name="account" id="acccount">
                                        <option value="Cash">Cash</option>
                                        <option value="Bank Account">Bank Account</option>
                                        <option value="Credit Card">Credit Card</option>
                                        <option value="Other">Others</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="category">Category</label>
                                    <select class="form-select" data-trigger name="category" id="category">
                                        <option value="Allowance">Allowance</option>
                                        <option value="Salary">Salary</option>
                                        <option value="Supplies">Supplies</option>
                                        <option value="Petty Cash">Petty Cash</option>
                                        <option value="Bonus">Bonus</option>
                                        <option value="Debt">Debt</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="amount">Amount:</label>
                                    <input type="number" class="form-control" name="amount" min="0.00"
                                    max="10000000.00" step="0.01">
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="note">Note:</label>
                                    <input type="text" class="form-control" name="note" value="{{ old('note') }}">
                                </div>

                                <div class="form-group">
                                    <label class="form-label" for="description">Description:</label>
                                    <input type="text" class="form-control" name="description"
                                        value="{{ old('description') }}">
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-danger">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</x-app-layout>
