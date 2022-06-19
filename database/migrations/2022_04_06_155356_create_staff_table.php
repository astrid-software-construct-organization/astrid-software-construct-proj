<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStaffTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff', function (Blueprint $table) {
            $table->id();
            $table->foreignId('storeID')
                ->constrained('stores')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->string('staff_name');
            $table->string('gender');
            $table->date('DOB');
            $table->string('ic_no');
            $table->string('telNo');
            $table->string('emergency_telNo');
            $table->double('salaryHour');
            $table->double('salaryDay');
            $table->string('address');
            $table->timestamps();
        });

        // Schema::table('staff', function(Blueprint $table)
        // {
        //     $table->foreign('store_id')->references('id')->on('stores')->onDelete('cascade');
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('staff');
    }
}
