<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;

class CategoryController extends Controller
{
    public function AllCategory(){

        $categories =Category::All();
        $categoryDetailsArray =[];
        foreach ($categories as $value)
        {
            $Subcategory= Subcategory::where('category_name',$value['category_name'])->get();
            $item =[
                'category_name'=>$value['category_name'],
                'category_iamge'=>$value['category_name'],
                'subcategory_name'=>$Subcategory
            ];
            array_push($categoryDetailsArray,$item);
        }
        return $categoryDetailsArray;
    }
}
