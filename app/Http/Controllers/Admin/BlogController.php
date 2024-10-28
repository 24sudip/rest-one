<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\BlogDataTable;
use App\Models\{BlogCategory, Blog};

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(BlogDataTable  $dataTable)
    {
        return $dataTable->render('admin.blog.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $blog_categories = BlogCategory::all();
        return view('admin.blog.create', compact('blog_categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'image'=>['required','max:5120','image'],
            'title'=>['required','max:200'],
            'description'=>['required'],
            'blog_category_id'=>['required','numeric']
        ]);
        $imagePath = handleUpload('image');
        $blog = new Blog();
        $blog->image = $imagePath;
        $blog->title = $request->title;
        $blog->description = $request->description;
        $blog->blog_category_id = $request->blog_category_id;
        $blog->save();
        toastr()->success('Blog Created Successfully.');
        return redirect()->route('admin.blog.index');
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
        $blog_categories = BlogCategory::all();
        $blog = Blog::findOrFail($id);
        return view('admin.blog.edit', compact('blog_categories','blog'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'image'=>['max:5120','image'],
            'title'=>['required','max:200'],
            'description'=>['required'],
            'blog_category_id'=>['required','numeric']
        ]);
        $blog = Blog::findOrFail($id);
        $imagePath = handleUpload('image', $blog);
        $blog->image = (!empty($imagePath) ? $imagePath : $blog->image);
        $blog->title = $request->title;
        $blog->description = $request->description;
        $blog->blog_category_id = $request->blog_category_id;
        $blog->save();
        toastr()->success('Blog Updated Successfully.');
        return redirect()->route('admin.blog.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $blog = Blog::findOrFail($id);
        deleteFileIfExist($blog->image);
        $blog->delete();
    }
}
