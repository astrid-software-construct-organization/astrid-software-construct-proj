<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Store;

class StoreController extends Controller
{
    public function index()
    {

        $stores = Store::orderBy('store_name')->get();

        return view('stores.stores')->with('stores', $stores);
    }

    public function store(Request $request)
    {
        $store = Store::create([
            'store_name' => $request->store_name,
            'store_location' => $request->store_location,
            'establish_date' => $request->establish_date,
        ]);

        return redirect('stores')->with('status','Store Registered Successfully');
    }

    public function registerstore()
    {
        return view('stores.registerstore');
    }

    public function edit($id)
    {
        $store = Store::find($id);
        return view('stores.edit-store', compact('store'));
    }

    public function update(Request $request, $id)
    {
        $store = Store::find($id);
        $store->store_name = $request->input('store_name');
        $store->establish_date = $request->input('establish_date');
        $store->store_location = $request->input('store_location');
        $store->update();
        return redirect()->back()->with('status','Store Updated Successfully');
    }

    public function destroy(Store $store)
    {
       // $store = Store::find($id);
        $store->delete();
        return redirect()->back()->with('status','Store Deleted Successfully');
    }
}
