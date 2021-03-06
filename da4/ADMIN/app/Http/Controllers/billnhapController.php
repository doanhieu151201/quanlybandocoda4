<?php

namespace App\Http\Controllers;
use App\Models\billnhap;

use Illuminate\Http\Request;

class billnhapController extends Controller
{
    //
    public function index(){
        $data = billnhap::all();
        return json_encode($data);
    }
    public function Get(){
        return billnhap::all();
    }
    public function show($id)
    {
        return billnhap::find($id);
    }
    public function update(Request $request,$id){
        $db = billnhap::find($id);
        $db->id_ncc = $request->id_ncc;
        $db->id_nhanvien = $request->id_nhanvien;

        $db->date_order = $request->date_order;
        $db->tong_tien = $request->tong_tien;
        $db->thanh_toan = $request->thanh_toan;
  
        $db->note = $request->note;
        $db->created_at = $request->created_at;
        $db->updated_at = $request->updated_at;
        $db->save();
        return $db;
        
     }   
     public function destroy($id){
        $db = billnhap::destroy($id);
    }
    public function store(Request $request){
        $db = new billnhap();
        $db->id = $request->id;

        $db->id_ncc = $request->id_ncc;
        $db->id_nhanvien = $request->id_nhanvien;

        $db->date_order = $request->date_order;
        $db->tong_tien = $request->tong_tien;
        $db->thanh_toan = $request->thanh_toan;
  
        $db->note = $request->note;
        $db->created_at = $request->created_at;
        $db->updated_at = $request->updated_at;
        $db->save();
        return $db;
       
     }
}