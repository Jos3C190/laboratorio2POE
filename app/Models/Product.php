<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Product
 *
 * @property $id
 * @property $brand
 * @property $model
 * @property $year
 * @property $price
 * @property $stock
 * @property $description
 * @property $transmission
 * @property $color
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Product extends Model
{
    
    static $rules = [
		'brand' => 'required',
		'model' => 'required',
		'year' => 'required',
		'price' => 'required',
		'stock' => 'required',
		'description' => 'required',
		'transmission' => 'required',
		'color' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['brand','model','year','price','stock','description','transmission','color'];



}
