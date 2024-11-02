<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SeoSetting;

class SeoSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $seo_settings = SeoSetting::first();
        return view('admin.setting.seo-setting.index', compact('seo_settings'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'=>['required','max:200'],
            'description'=>['required','max:500'],
            'keyword'=>['required','max:300']
        ]);
        SeoSetting::updateOrCreate(
            ['id'=>$id],
            [
                'title'=>$request->title,
                'description'=>$request->description,
                'keyword'=>$request->keyword
            ]
        );
        toastr()->success('Uploaded Successfully.');
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
