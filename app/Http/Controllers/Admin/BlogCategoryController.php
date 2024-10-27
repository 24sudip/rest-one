<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\BlogCategoryDataTable;
use App\Models\BlogCategory;
use Illuminate\Support\Str;

class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(BlogCategoryDataTable $dataTable)
    {
        return $dataTable->render('admin.blog-category.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.blog-category.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>['required','max:200']
        ]);
        $blog_category = new BlogCategory();
        $blog_category->name = $request->name;
        $blog_category->slug = Str::slug($request->name);
        $blog_category->save();
        toastr()->success('Blog Category Created Successfully.');
        return redirect()->route('admin.blog-category.index');
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
        $blog_category = BlogCategory::findOrFail($id);
        return view('admin.blog-category.edit', compact('blog_category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'=>['required','max:200']
        ]);
        $blog_category = BlogCategory::findOrFail($id);
        $blog_category->name = $request->name;
        $blog_category->slug = Str::slug($request->name);
        $blog_category->save();
        toastr()->success('Blog Category Updated Successfully.');
        return redirect()->route('admin.blog-category.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $blog_category = BlogCategory::findOrFail($id);
        $blog_category->delete();
    }
}
