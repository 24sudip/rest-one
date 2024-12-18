<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\SkillItemDataTable;
use App\Models\SkillItem;

class SkillItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(SkillItemDataTable $dataTable)
    {
        return $dataTable->render('admin.skill-item.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.skill-item.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>['required','max:100'],
            'percent'=>['required','numeric','max:100']
        ]);
        $skill_item = new SkillItem();
        $skill_item->name = $request->name;
        $skill_item->percent = $request->percent;
        $skill_item->save();
        toastr()->success('Skill Item Created Successfully.');
        return redirect()->route('admin.skill-item.index');
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
        $skill_item = SkillItem::findOrFail($id);
        return view('admin.skill-item.edit', compact('skill_item'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>['required','max:100'],
            'percent'=>['required','numeric','max:100']
        ]);
        $skill_item = SkillItem::findOrFail($id);
        $skill_item->name = $request->name;
        $skill_item->percent = $request->percent;
        $skill_item->save();
        toastr()->success('Skill Item Updated Successfully.');
        return redirect()->route('admin.skill-item.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $skill_item = SkillItem::findOrFail($id);
        $skill_item->delete();
    }
}
