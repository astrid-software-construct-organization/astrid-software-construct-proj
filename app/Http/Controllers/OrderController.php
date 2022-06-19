<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Store;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stores = Store::get();
        $order_date = Carbon::now()->format('Y-m-d');
        $orders  = Order::where('order_date', $order_date);
        return view('order.orders')->with('stores', $stores)->with('orders', $orders)->with('order_date', $order_date);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $supply = Order::create([
            'store_id' => $request->store_id,
            'order' => $request->order,
            'quantity' => $request->quantity,
            'description' => $request->description,
            'order_date' => $request->order_date,

        ]);

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $store = Store::find($id);
        $order_date = Carbon::today();
        $orders  =  DB::table('orders')->where('store_id', '=', $id)->select(['store_id', 'id', 'order', 'quantity', 'description', 'order_date'])->get();
        $storeID = $id;
             //dd($orders);
         return view('order.store-order')->with('orders', $orders)->with('store', $store)->with('order_date', $order_date)->with('storeID', $storeID);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        $order->order = $request->input('order');
        $order->quantity = $request->input('quantity');
        $order->description = $request->input('description');
        $order->order_date = $request->input('order_date');
        $order->update();
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        $order->delete();
        return redirect()->back();
    }
}
