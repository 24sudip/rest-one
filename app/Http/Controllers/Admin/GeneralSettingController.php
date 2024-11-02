<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\GeneralSetting;

class GeneralSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $general_settings = GeneralSetting::first();
        return view('admin.setting.general-setting.index', compact('general_settings'));
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
            'logo'=>['required','max:5120','image'],
            'footer_logo'=>['required','max:5120','image'],
            'favicon'=>['required','max:5120','image'],
        ]);
        $general_settings = GeneralSetting::first();
        $logo = handleUpload('logo', $general_settings);
        $footer_logo = handleUpload('footer_logo', $general_settings);
        $favicon = handleUpload('favicon', $general_settings);
        GeneralSetting::updateOrCreate(
            ['id'=>$id],
            [
                'logo' => (!empty($logo) ? $logo : $general_settings->logo),
                'footer_logo' => (!empty($footer_logo) ? $footer_logo : $general_settings->footer_logo),
                'favicon' => (!empty($favicon) ? $favicon : $general_settings->favicon)
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
