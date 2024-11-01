<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\UsefulLinkDataTable;
use App\Models\UsefulLink;

class UsefulLinkController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(UsefulLinkDataTable $dataTable)
    {
        return $dataTable->render('admin.footer-useful-link.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.footer-useful-link.create');
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
        $useful_link = new UsefulLink();
        $useful_link->name = $request->name;
        $useful_link->url = $request->url;
        $useful_link->save();
        toastr()->success('Useful Link Created Successfully.');
        return redirect()->route('admin.useful-link.index');
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
        $useful_link = UsefulLink::findOrFail($id);
        return view('admin.footer-useful-link.edit', compact('useful_link'));
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
        $useful_link = UsefulLink::findOrFail($id);
        $useful_link->name = $request->name;
        $useful_link->url = $request->url;
        $useful_link->save();
        toastr()->success('Useful Link Updated Successfully.');
        return redirect()->route('admin.useful-link.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $useful_link = UsefulLink::findOrFail($id);
        $useful_link->delete();
    }
}
