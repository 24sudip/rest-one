<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\HelpLinkDataTable;
use App\Models\HelpLink;

class HelpLinkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(HelpLinkDataTable $dataTable)
    {
        return $dataTable->render('admin.footer-help-link.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.footer-help-link.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>['required','max:200'],
            'url'=>['required']
        ]);
        $help_link = new HelpLink();
        $help_link->name = $request->name;
        $help_link->url = $request->url;
        $help_link->save();
        toastr()->success('Help Link Created Successfully.');
        return redirect()->route('admin.help-link.index');
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
        $help_link = HelpLink::findOrFail($id);
        return view('admin.footer-help-link.edit', compact('help_link'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>['required','max:200'],
            'url'=>['required']
        ]);
        $help_link = HelpLink::findOrFail($id);
        $help_link->name = $request->name;
        $help_link->url = $request->url;
        $help_link->save();
        toastr()->success('Help Link Updated Successfully.');
        return redirect()->route('admin.help-link.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $help_link = HelpLink::findOrFail($id);
        $help_link->delete();
    }
}
