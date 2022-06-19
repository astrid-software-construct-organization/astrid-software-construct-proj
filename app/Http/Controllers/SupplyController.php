<?php

namespace App\Http\Controllers;

use App\Models\Store;
use App\Models\Supply;
use Illuminate\Http\Request;

class SupplyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   $stores = Store::get();

        return view('supplies.supplies')->with('stores',$stores);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $supply = Supply::create([
            'store_id' => $request->store_id,
            'itemName' => $request->itemName,
            'quantity' => $request->quantity,
        ]);

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Supply  $supply
     * @return \Illuminate\Http\Response
     */
    public function show(Supply $supply)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Supply  $supply
     * @return \Illuminate\Http\Response
     */
    public function edit(Supply $supply)
    {

    }

    public function storeSupplyEdit($id)
    {
        $store = Store::find($id);
        $supplies = Supply::get();
        return view('supplies.storesupplies')->with('store', $store)->with('supplies', $supplies);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Supply  $supply
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {   $supply = Supply::find($id);
        $supply->store_id = $request->input('store_id');
        $supply->itemName = $request->input('itemName');
        $supply->quantity = $request->input('quantity');
        $supply->update();
        return redirect()->back()->with('status','Supply Updated Successfully');;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Supply  $supply
     * @return \Illuminate\Http\Response
     */
    public function destroy(Supply $supply)
    {
        $supply->delete();
        return redirect()->back()->with('status', 'Item Deleted Successfully');
    }
}
