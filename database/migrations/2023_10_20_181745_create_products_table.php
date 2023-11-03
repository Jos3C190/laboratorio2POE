<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('brand'); // Car brand
            $table->string('model'); // Car model
            $table->integer('year'); // Year of manufacture
            $table->decimal('price', 10, 2); // Car price
            $table->integer('stock'); // Stock quantity
            $table->text('description'); // Product description (features, details)
            $table->string('transmission'); // Transmission type (e.g., "Automatic," "Manual")
            $table->string('color'); // Car color
            $table->timestamps(); // Created at and updated at timestamps
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
