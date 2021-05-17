<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Company;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public  function getCompanies($id){
        // $companies = Category::find($id)->companies->paginate(50);
        //collection k hỗ trợ paginate ==> giải pháp dùng forPage

        //Hoặc DÙng câu ruy vấn :))
        $obj = new Company();
        $companies = $obj->where('category_id', 'like', $id)->paginate(50);
        
        $companies->appends(['id' => $id]); 

        return view('companyType',['companies' => $companies]) ;
    }
}
