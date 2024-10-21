<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\DataTables\PortfolioItemDataTable;
use App\Models\{PortfolioItem, Category};

class PortfolioItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(PortfolioItemDataTable $dataTable)
    {
        return $dataTable->render('admin.portfolio-item.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.portfolio-item.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'image'=>['required','image','max:5000'],
            'title'=>['required','max:200'],
            'description'=>['required'],
            'category_id'=>['required','numeric'],
            'client'=>['max:200'],
            'website'=>['url'],
        ]);
        $imagePath = handleUpload('image');
        $portfolio_item = new PortfolioItem();
        $portfolio_item->image = $imagePath;
        $portfolio_item->title = $request->title;
        $portfolio_item->description = $request->description;
        $portfolio_item->category_id = $request->category_id;
        $portfolio_item->client = $request->client;
        $portfolio_item->website = $request->website;
        $portfolio_item->save();
        toastr()->success('Portfolio Item Created Successfully.');
        return redirect()->route('admin.portfolio-item.index');
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
        $categories = Category::all();
        $portfolio_item = PortfolioItem::findOrFail($id);
        return view('admin.portfolio-item.edit', compact('categories','portfolio_item'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'image'=>['image','max:5000'],
            'title'=>['required','max:200'],
            'description'=>['required'],
            'category_id'=>['required','numeric'],
            'client'=>['max:200'],
            'website'=>['url'],
        ]);
        $portfolio_item = PortfolioItem::findOrFail($id);
        $imagePath = handleUpload('image', $portfolio_item);
        $portfolio_item->image = (!empty($imagePath) ? $imagePath : $portfolio_item->image);
        $portfolio_item->title = $request->title;
        $portfolio_item->description = $request->description;
        $portfolio_item->category_id = $request->category_id;
        $portfolio_item->client = $request->client;
        $portfolio_item->website = $request->website;
        $portfolio_item->save();
        toastr()->success('Portfolio Item Updated Successfully.');
        return redirect()->route('admin.portfolio-item.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $portfolio_item = PortfolioItem::findOrFail($id);
        deleteFileIfExist($portfolio_item->image);
        $portfolio_item->delete();
    }
}
