<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\{DB, Storage};
use App\Models\{Post, User, Address, Category, Tag};
use File;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {
        
    }
}
// unlink(storage_path('/app/public/images/img2.jpg'));
// File::delete(storage_path('/app/public/images/img1.jpg'));
// Storage::delete('/images/new_image.jpg');
// Storage::disk('public')->delete('/images/new_image.jpg');
// return view('home');
// $post = Post::with('tags')->first();
// $posts = Post::with('tags')->get();
// return view('home', compact('posts'));
// $tag = Tag::first();
// return $post;
// $post->tags()->attach([2,3,4]);
// $post->tags()->attach($tag);
// dd('success');
// $categories = Category::find(2)->posts;
// return view('home', compact('categories'));
// Post::withTrashed()->find(5)->forceDelete();
// Post::withTrashed()->find(5)->restore();
// return Post::onlyTrashed()->get();
// Post::where('id', 5)->delete();
// dd('permanently deleted successfully');
// Post::where('status', 1)->update([
//     'status'=> 0
// ]);
// Post::find(7)->update([
//     'title'=>'data has been updated'
// ]);
// $post = Post::create([
//     'title'=>'this is from mass assign',
//     'description'=>'this is description from mass assign',
//     'status'=> 1,
//     'publish_date'=>date('Y-m-d'),
//     'user_id'=> 1,
//     'category_id'=> 2,
//     'views'=> 500,
// ]);
// dd('updated successfully');
// Post::findOrFail(6)->delete();
// dd('deleted successfully');
// $post = Post::where('id', 4)->first();
// $post = Post::find(3);
// $post = new Post();
// $post->title = 'This is a new title';
// $post->description = 'this description is updated';
// $post->status = 1;
// $post->publish_date = date('Y-m-d');
// $post->user_id = 1;
// $post->category_id = 1;
// $post->views = 400;
// $post->save();
// dd('again updated successfully');
// return Post::where('views','>', 100)->orWhere('id','=', 5)->get();
// return Post::where('views','>', 100)->where('id','=', 5)->get();
// $posts = Post::all();
// return response($posts);
// return response()->json($posts);
// foreach ($posts as $post) {
//     echo "<h1>".$post->title."</h1>";
// }
// return $posts;
// return $post = Post::findOrFail(6);
// return "<h1>$post->description</h1>";
// return Post::all();
// $a = DB::table('posts')->max('views');
// $a = DB::table('posts')->min('views');
// $a = DB::table('posts')->sum('views');
// $a = DB::table('posts')->avg('views');
// $a = DB::table('posts')->count('views');
// return "<h1>$a</h1>";
// return DB::table('posts')->get();
// return DB::table('posts')->insert([
//      'description'=>'',
// ]);
// return DB::table('posts')->where('id','>', 5)->where('id','<', 10)->get();
// return DB::table('posts')->where('id','=', 10)->get();
// return DB::table('posts')->where('status','!=', 1)->get();
// return DB::table('posts')->pluck('title','id');
// return DB::table('posts')->first();
// return DB::table('posts')->find(7);
// return DB::table('posts')->join('categories','posts.category_id','=','categories.id')
// ->select('categories.*')
// // ->select('posts.*')
// ->get();
// dd('again deleted successfully');
