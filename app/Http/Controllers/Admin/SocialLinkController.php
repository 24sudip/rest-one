<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\SocialLinkDataTable;
use App\Models\SocialLink;

class SocialLinkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(SocialLinkDataTable $dataTable)
    {
        return $dataTable->render('admin.footer-social-link.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.footer-social-link.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'icon'=>['required'],
            'url'=>['required','url']
        ]);
        $social_link = new SocialLink();
        $social_link->icon = $request->icon;
        $social_link->url = $request->url;
        $social_link->save();
        toastr()->success('Social Link Created Successfully.');
        return redirect()->route('admin.social-link.index');
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
    public function edit($id)
    {
        $social_link = SocialLink::findOrFail($id);
        return view('admin.footer-social-link.edit', compact('social_link'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'icon'=>['required'],
            'url'=>['required','url']
        ]);
        $social_link = SocialLink::findOrFail($id);
        $social_link->icon = $request->icon;
        $social_link->url = $request->url;
        $social_link->save();
        toastr()->success('Social Link Updated Successfully.');
        return redirect()->route('admin.social-link.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $social_link = SocialLink::findOrFail($id);
        $social_link->delete();
    }
}
