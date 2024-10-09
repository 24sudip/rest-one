<!-- The only way to do great work is to love what you do. - Steve Jobs -->
@extends('layouts.master')

@section('content')
<div class="main-content mt-5">
    @if ($errors->any())
        @foreach ($errors->all() as $error)
        <div class="alert alert-danger">{{ $error }}</div>
        @endforeach
    @endif
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h4>Edit Post</h4>
                </div>
                <div class="col-md-6 d-flex justify-content-end">
                    <a class="btn btn-success mx-1" href="{{ route('posts.index') }}">Back</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group mb-2">
                    <div>
                        <img src="{{ asset('storage/uploads/'.$post->image) }}" width="200" alt="post">
                    </div>
                    <label for="" class="form-label">Image</label>
                    <input name="image" type="file" class="form-control">
                </div>
                <div class="form-group mb-2">
                    <label for="" class="form-label">Title</label>
                    <input name="title" type="text" class="form-control" value="{{ $post->title }}">
                </div>
                <div class="form-group mb-2">
                    <label for="" class="form-label">Category</label>
                    <select name="category_id" class="form-control">
                        <option value="">Select</option>
                        @foreach ($categories as $category)
                        <option {{ $category->id == $post->category_id ? 'selected' : ''}} value="{{ $category->id }}">{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Description</label>
                    <textarea name="description" class="form-control" cols="30" rows="10">{{ $post->description }}</textarea>
                </div>
                <div class="form-group mt-3 mb-5">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
