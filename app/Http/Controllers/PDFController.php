<?php

namespace App\Http\Controllers;

use App\Models\Finance;
use App\Models\Order;
use App\Models\Store;
use Barryvdh\DomPDF\Facade\Pdf as FacadePdf;
use Carbon\Carbon;
use Illuminate\Http\Request;

use PDF;

class PDFController extends Controller
{
    public function orderPDF($id, $order_date)
    {

        $store = Store::find($id);

        $orders  =  Order::select('*')
            ->where('store_id', $id)
            ->where('order_date', $order_date);

        $orders = Order::get();


        $data = [
            'store_name' => $store->store_name,
            'orders' => $orders,
        ];

        $pdf = FacadePdf::loadView('order/orderPDF', $data);

        return $pdf->download('order.pdf');
    }

    public function reportPDF($startdate, $enddate)
    {

        $reports = Finance::select('*')
            ->whereDate('created_at', '>=', $startdate)
            ->whereDate('created_at', '<=', $enddate)
            ->get();

            $data = [
                'startdate' => $startdate,
                'enddate' => $enddate,
                'reports' => $reports,

            ];

        // Finance::whereDate('created_at', Carbon::today())->get(['name', 'created_at']);

        // if ($request->reportperiod == "todayreport") {

        //     $today = Finance::whereDate('created_at', Carbon::today())->get();
        //     $data = [

        //         'transactions' => $today,
        //     ];
        // } elseif ($request->reportperiod == "weekreport") {
        //     $thisweek =  Finance::whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->get();

        //     $data = [
        //         'transactions' => $thisweek,
        //     ];
        // } elseif ($request->reportperiod == "monthreport") {


        //     $thismonth = Finance::whereMonth('created_at', date('m'))
        //         ->whereYear('created_at', date('Y'))
        //         ->get();

        //     $data = [
        //         'transactions' => $thismonth,
        //     ];
        // } elseif ($request->reportperiod == "yearreport") {

        //     $thisyear = Finance::whereYear('created_at', date('Y'))
        //         ->get();

        //     $data = [
        //         'transactions' => $thisyear,
        //     ];
        // }


        $pdf = FacadePdf::loadView('finances/reportPDF', $data);

        return $pdf->download('report.pdf');
    }
}
