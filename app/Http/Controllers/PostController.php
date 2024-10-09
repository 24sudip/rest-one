<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Category, Post};
use File;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Gate;

class PostController extends Controller
{
    public function __construct() {
        // $this->middleware('authCheck');
        // $this->middleware('authCheck')->only('create');
        // $this->middleware('authCheck')->only(['create','show']);
        // $this->middleware('authCheck')->except('index');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Cache::remember('posts-page-'.request('page', 1), 60*60, function () {
            return Post::with('category')->paginate(1);
        });
        // $posts = Cache::rememberForever('posts', function () {
        //     return Post::with('category')->paginate(5);
        // });
        return view('index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        Gate::authorize('create', Post::class);
        $categories = Category::all();
        return view('create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Gate::authorize('create', Post::class);
        $request->validate([
            'image'=>['required','max:2048','image'],
            'title'=>['required','max:255'],
            'category_id'=>['required','integer'],
            'description'=>['required'],
        ]);

        $fileName = time().'_'. $request->image->getClientOriginalName();
        $filePath = $request->image->storeAs('uploads', $fileName);

        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->category_id = $request->category_id;
        $post->image = $fileName;
        $post->save();
        // return $filePath;
        return redirect()->route('posts.index');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $post = Post::findOrFail($id);
        return view('show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $post = Post::findOrFail($id);
        Gate::authorize('update', $post);
        $categories = Category::all();
        return view('edit', compact('post','categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $post = Post::findOrFail($id);
        Gate::authorize('update', $post);
        $request->validate([
            'title'=>['required','max:255'],
            'category_id'=>['required','integer'],
            'description'=>['required'],
        ]);

        if ($request->hasFile('image')) {
            $request->validate([
                'image'=>['required','max:2048','image'],
            ]);
            $fileName = time().'_'. $request->image->getClientOriginalName();
            $filePath = $request->image->storeAs('uploads', $fileName);
            File::delete(public_path('storage/uploads/'.$post->image));
            $post->image = $fileName;
        }

        $post->title = $request->title;
        $post->description = $request->description;
        $post->category_id = $request->category_id;

        $post->save();
        // return $filePath;
        return redirect()->route('posts.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        Gate::authorize('delete', $post);
        $post->delete();
        return redirect()->route('posts.index');
    }

    public function trashed() {
        $posts = Post::onlyTrashed()->get();
        return view('trashed', compact('posts'));
    }

    public function restore($id) {
        $post = Post::onlyTrashed()->findOrFail($id);
        $post->restore();
        return redirect()->back();
    }

    public function forceDelete($id) {
        $post = Post::onlyTrashed()->findOrFail($id);
        File::delete(public_path('storage/uploads/'.$post->image));
        $post->forceDelete();
        return redirect()->back();
    }
}
