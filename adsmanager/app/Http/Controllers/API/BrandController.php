<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Banner;
use Carbon\Carbon;
use App\Http\Resources\BrandCollection;
use App\Http\Resources\AdvertCollection;
use Image;
use DB;

class BrandController extends Controller
{
    public function AllBrand()
    {
        $brands = Brand::orderBy('id','DESC')->paginate(4);
        return new BrandCollection($brands);
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
    public function StoreBrand(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|unique:brands|min:4',
            'from'=> 'required|date',
            'to'=>'required|date',
            'total_budget'=>'required',
            'daily_budget'=>'required'
        ],
        [
        'name.required' => 'Please input brand name',
        'name.unique' => 'Duplicate brand names are not allowed!',
        'name.min' => 'Brand name should have atleast 4 characters',
            
        ]);

        // Brand::insert([
        //     'name'=> $request->name,
        //     'from'=>$request->from,
        //     'to'=>$request->to,
        //     'total_budget'=>$request->total_budget,
        //     'daily_budget'=>$request->daily_budget,
        //     'created_at'=> Carbon::now()
        // ]);

        $data = new Brand;
        $data->name = $request->name;
        $data->from = $request->from;
        $data->to = $request->to;
        $data->total_budget = $request->total_budget;
        $data->daily_budget = $request->daily_budget;

        // dd($data);

        if ($data->save()) {
            return response()
                    ->json([
                        'message' => 'brand created successfully',
                        'inserted_id'=> $data->id
                    ], 200);
        }
        // return response()
        //     ->json([
        //         'message' => 'brand created successfully'
        //         ],200);
    }


    public function StoreBanners(Request $request)
    {
        $validatedData = $request->validate([
            'files' => 'required'
        ]);

        $images = $request->file('files');

        if($request->hasfile('files')) {
           
            foreach($images as $image) {
                
                $name_gen =hexdec(uniqid()).'.'. $image->getClientOriginalExtension();
                Image::make($image)->resize(300,300)->save('image/banners/'.$name_gen);
                $last_img = 'image/banners/'.$name_gen;
    
                Banner::insert([
                    'image'=>$last_img,
                    'brand_id'=>$request->brand_id
                ]);
            }
        }

        return response()->json(['message' => 'Banners created successfully'],200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $brand = DB::table('banners')
                    ->where('brand_id',$id)
                    ->select('id','image')
                    ->get();
        // return new AdvertCollection($brand);
        return response()
            ->json([
                'message' => 'brand created successfully',
                'data'=>$brand
                ],200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $brand = Brand::find($id);
        return response()
            ->json([
                'message' => 'brand fetched successfully',
                'data'=>$brand
                ],200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|unique:brands|min:4',
            'from'=> 'required|date',
            'to'=>'required|date',
            'total_budget'=>'required',
            'daily_budget'=>'required'
        ],
        [
        'name.required' => 'Please input brand name',
        'name.unique' => 'Duplicate brand names are not allowed!',
        'name.min' => 'Brand name should have atleast 4 characters',
            
        ]);

        // dd($request->all());
        $data = Brand::find($id);
        $data->name = $request->name;
        $data->from = $request->from;
        $data->to = $request->to;
        $data->total_budget = $request->total_budget;
        $data->daily_budget = $request->daily_budget;

        if ($data->save()) {
            return response()
                    ->json([
                        'message' => 'brand Edited successfully',
                        'inserted_id'=> $data->id
                    ], 200);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
