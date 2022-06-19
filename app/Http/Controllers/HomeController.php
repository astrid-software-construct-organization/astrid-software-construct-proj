<?php

namespace App\Http\Controllers;

use App\Models\Finance;
use App\Models\Staff;
use App\Models\Store;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $salesdaily = Finance::where('category', '=', 'Sale')
            ->whereDate('created_at', [Carbon::today()])
            ->get()
            ->sum('amount');

        $salesweek =  Finance::where('category', '=', 'Sale')
            ->whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
            ->get()
            ->sum('amount');

        $expensedaily = Finance::where('record_type', '=', 'Expense')
            ->whereDate('created_at', [Carbon::today()])
            ->get()
            ->sum('amount');

        $expenseweek = Finance::where('record_type', '=', 'Expense')
            ->whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
            ->get()
            ->sum('amount');

        $grossincome = Finance::where('record_type', '=', 'Income')
                            ->whereMonth('created_at', date('m'))
                            ->whereYear('created_at', date('Y'))
                            ->get()
                            ->sum('amount');

        $stores = Store::get();

        $staffs = Staff::get()->count();

        $assets = ['chart', 'animation'];
        return view('dashboards.dashboard', compact('assets'))
            ->with('salesdaily', $salesdaily)
            ->with('salesweek', $salesweek)
            ->with('expensedaily', $expensedaily)
            ->with('expenseweek', $expenseweek)
            ->with('grossincome' , $grossincome)
            ->with('stores', $stores)
            ->with('staffs', $staffs);
        // return view('home');
    }

    //Pages Routes
}
