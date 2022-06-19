<?php

use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\FinanceController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PDFController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\SupplyController;
use App\Http\Controllers\UserViewController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});


Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('dashboard');


Auth::routes();

Route::get('/accounts', [UserViewController::class, 'index' ]);
Route::get('/addUser', [UserViewController::class, 'show' ]);
Route::post('/create-account', [UserViewController::class, 'store']);
Route::get('/edit-account/{id}', [UserViewController::class, 'edit']);
Route::put('update-account/{id}', [UserViewController::class, 'update']);
Route::delete('/delete-account/{id}', [UserViewController::class, 'destroy']);

// -- STORE ROUTES --
Route::get('/stores', [StoreController::class, 'index'])->name('stores');
Route::get('/registerstore', [StoreController::class, 'registerstore'])->name('registerstore');
Route::post('/registerstore', [StoreController::class, 'store']);
Route::get('/edit-store/{id}', [StoreController::class, 'edit'])->name('edit-store');
Route::put('update-store/{id}', [StoreController::class, 'update']);
Route::get('/store', [StoreController::class, 'show']);
Route::delete('/delete-store/{id}', [StoreController::class, 'destroy']);
Route::resource('stores', StoreController::class);


// -- STAFF ROUTES --

Route::get('/staff', [StaffController::class, 'index'])->name('staffs');
Route::get('/registerstaff', [StaffController::class, 'show'])->name('registerstaff');
Route::post('/registerstaff', [StaffController::class, 'store']);
Route::get('/edit-staff/{id}', [StaffController::class, 'edit'])->name('edit-staff');
Route::put('update-staff/{id}', [StaffController::class, 'update']);
// Route::get('/attendance-staff/{id}', [StaffController::class, 'showAttendance']);
Route::resource('staff', StaffController::class);

// STAFF ATTENDANCE ROUTES

Route::resource('attendance', AttendanceController::class);
Route::get('/attendance-staff/{id}', [AttendanceController::class, 'index']);
Route::get('/salary-staff', [AttendanceController::class, 'show']);
Route::get('/calculate-salary/{id}', [AttendanceController::class, 'calcSalary'])->name('totalsalary');


// FINANCE & REPORT ROUTES

Route::get('/finance', [FinanceController::class, 'index']);
Route::post('/finance', [FinanceController::class, 'store']);
Route::get('/transaction', [FinanceController::class, 'show'])->name('transaction');
Route::resource('finance', FinanceController::class);
Route::get('/store-sales', [FinanceController::class, 'showSales'])->name('totalsales');
Route::post('/report',[FinanceController::class, 'showreport' ]);
// SUPPLIES
Route::resource('supply', SupplyController::class);
Route::get('/supply', [SupplyController::class, 'index'])->name('supply');
Route::get('/store-supplies/{id}', [SupplyController::class, 'storeSupplyEdit']);

// ORDER

Route::resource('order', OrderController::class);
Route::get('/order', [OrderController::class, 'index']);
Route::get('/store-order/{id}', [OrderController::class, 'show']);


// PDF
Route::get('order-pdf/{store_id}/{order_date}', [PDFController::class, 'orderPDF']);
Route::get('/report-pdf/{startdate}/{enddate}', [PDFController::class, 'reportPDF']);
