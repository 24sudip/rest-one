<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function handleImage(Request $request) {
        $request->validate([
            'image'=>['required','min:100','max:500','image'],
            // 'image'=>['required','min:100','max:500','mimes:png,jpg,gif'],
        ]);
        $request->image->storeAs('/images','new_image.jpg');
        return redirect('/success');
        // return redirect()->back();
        // return redirect()->route('success');
        // $request->image->store('/images');
        // $request->image->store('/');
        // dd($request->file('image'));
        // return $request->all();
    }

    public function download() {
        return response()->download(public_path('/storage/images/new_image.jpg'));
    }
}

