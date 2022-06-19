<?php

namespace App\Http\Controllers;

use App\Models\Staff;
use App\Models\Store;
use Illuminate\Http\Request;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $staffs = Staff::orderBy('staff_name')->get();
        $stores = Store::get();

        return view('staffs.staff')->with('staffs', $staffs)->with('stores', $stores);
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
        $staff = Staff::create([
            'storeID' => $request->storeID,
            'staff_name' => $request->staff_name,
            'gender' => $request->gender,
            'DOB' => $request->DOB,
            'ic_no' => $request->ic_no,
            'telNo' => $request->telNo,
            'emergency_telNo' => $request->emergency_telNo,
            'salaryHour' => $request->salaryHour,
            'salaryDay' => $request->salaryDay,
            'address' => $request->address,
        ]);

        return redirect()->back()->with('status','Staff Registered Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function show(Staff $staff)
    {
        $stores = Store::get();

        return view('staffs.registerstaff')->with('stores', $stores);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $staff = Staff::find($id);
        $stores = Store::get();

        return view('staffs.edit-staff', compact('staff'))->with('stores', $stores);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $staff = Staff::find($id);
        $staff->storeID = $request->input('storeID');
        $staff->staff_name = $request->input('staff_name');
        $staff->gender = $request->input('gender');
        $staff->DOB = $request->input('DOB');
        $staff->ic_no = $request->input('ic_no');
        $staff->telNo = $request->input('telNo');
        $staff->emergency_telNo = $request->input('emergency_telNo');

        $staff->salaryHour = $request->input('salaryHour');
        $staff->salaryDay = $request->input('salaryDay');
        $staff->address = $request->input('address');
        $staff->update();
        return redirect()->back()->with('status','Staff Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function destroy(Staff $staff)
    {
        $staff->delete();
        return redirect()->back()->with('status', 'Staff Deleted Successfully');
    }


}
