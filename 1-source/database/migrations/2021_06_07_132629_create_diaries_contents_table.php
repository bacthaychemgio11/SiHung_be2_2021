<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiariesContentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diaries_contents', function (Blueprint $table) {
            $table->increments('diarycontent_id');
            $table->integer('diarycontent_weekday')->nullable();
            $table->string('diarycontent_work')->nullable();
            $table->string('diarycontent_content')->nullable();
            $table->string('diarycontent_note')->nullable();
            $table->string('diarycontent_teacher_comment')->nullable();
            $table->string('diarycontent_trainer_comment')->nullable();
            $table->integer('week_id')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->nullable();
            $table->dateTime('deleted_at')->nullable();
            $table->string('status')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('diaries_contents');
    }
}