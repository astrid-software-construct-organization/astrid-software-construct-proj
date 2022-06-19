<?php

namespace App\Http\Controllers;

use App\Models\Finance;
use App\Models\Store;
use Illuminate\Http\Request;

class FinanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stores = Store::orderBy('store_name')->get();
        return view('finances.finance')->with('stores', $stores);

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
        $finance = Finance::create([
            'store_id' => $request->store_id,
            'record_type' => $request->record_type,
            'date' => $request->date,
            'account' => $request->account,
            'category' => $request->category,
            'amount' => $request->amount,
            'note' => $request->note,
            'description' => $request->description,
        ]);

        return redirect('/finance')->with('status', 'Record Added Successfully');

    }

    public function showSales(){

        $stores = Store::get();
        $sales = Finance::where('category','=', 'Sale')->get();

        return view('finances.store-sales')->with('sales', $sales)->with('stores', $stores);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $transactions = Finance::orderBy('date', 'desc')->get();
        $stores = Store::get();
        // dd($transactions);
        return view('finances.transaction')
            ->with('transactions', $transactions)
            ->with('stores', $stores);
    }

    public function showreport(Request $request)
    {
        $startdate = $request->input('startdate');
        $enddate = $request->input('enddate');

        $transactions = Finance::select('*')
                        ->whereDate('created_at', '>=', $startdate)
                        ->whereDate('created_at', '<=', $enddate)
                        ->get();

    return view('finances.report')
                        ->with('transactions', $transactions)
                        ->with('startdate', $startdate)
                        ->with('enddate', $enddate);

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
