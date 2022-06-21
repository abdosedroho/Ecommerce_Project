<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductList;
use App\Models\ProductDetails;
use App\Models\Category;
use App\Models\Subcategory;
use Image;
 
class ProductListController extends Controller
{
    public function ProductListByRemark(Request $request){

        $remark = $request->remark;
        $productlist = ProductList::where('remark',$remark)->limit(8)->get();
        return $productlist;

    } // End Method 

    public function ProductListByCategory(Request $request){

        $Category = $request->category;
        $productlist = ProductList::where('category',$Category)->get();
        return $productlist;

    }// End Method 


    public function ProductListBySubCategory(Request $request){

        $Category = $request->category;
        $SubCategory = $request->subcategory;
        $productlist = ProductList::where('category',$Category)->where('subcategory',$SubCategory)->get();

        return $productlist;
    }

    }// End Method 