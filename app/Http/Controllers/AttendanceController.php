<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\Staff;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $staff = Staff::find($id);

        $attendances = Attendance::select('*')->where('staffID', '=', $id)->get();

        return view('staffs.attendance-staff')->with('staff', $staff)->with('attendances', $attendances);
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
        $todaydate = Carbon::now()->format('Y-m-d');
        $staff = Attendance::where(function ($q) {
            $q->where('attendType', 'Presence')
                ->orWhere('attendType', 'Absence');
        })
            ->where('staffID', $request->staffID)
            ->where('date', '=', $todaydate);

        $staff= $staff->first();

        if ($staff == null) {
            switch ($request->input('action')) {

                case 'Presence':
                    $attendance = Attendance::create([
                        'staffID' => $request->staffID,
                        'attendType' => 'Presence',
                        'date' => $request->date,
                        'datetime' => $request->datetime,

                    ]);
                    break;

                case 'Absence':
                    $attendance = Attendance::create([
                        'staffID' => $request->staffID,
                        'attendType' => 'Absence',
                        'date' => $request->date,
                        'datetime' => $request->datetime,

                    ]);
                    break;
            }
            return redirect()->back();
        } else {


            return back()->with('status', 'Cannot Record Attendance Again For Today');
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     *
     * FOR SHOW SALARY
     */
    public function show(Attendance $attendance)
    {
        return view('staffs.salary-staff');
    }

    public function calcSalary(Request $request, $id)
    {
        $staff = Staff::find($id);
        $startdate = $request->startdate;
        $enddate = $request->enddate;

        // $totaldays = Carbon::parse(request('startdate'))->diffInDays(Carbon::parse(request('enddate')));

        $presencedays = Attendance::select('*')
            ->whereBetween('date', [$startdate, $enddate])
            ->where('attendType', 'Presence')
            ->count();

        $totalsalary = $presencedays * $staff->salaryDay;
        return redirect()->back()->with('message', 'Calculated Salary from ' . $startdate . ' to ' . $enddate . ': RM' . $totalsalary);

        // return redirect()->back()->with('totalsalary', $totalsalary);
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function edit(Attendance $attendance)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Attendance $attendance)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Attendance  $attendance
     * @return \Illuminate\Http\Response
     */
    public function destroy(Attendance $attendance)
    {
        //
    }
}
