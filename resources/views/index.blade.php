<!-- If you do not have a consistent goal in life, you can not live it in a consistent way. - Marcus Aurelius -->
@extends('layouts.master')

@section('content')
<div class="main-content mt-5">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h4>All Posts</h4>
                </div>
                <div class="col-md-6 d-flex justify-content-end">
                    @can('create', \App\Models\Post::class)
                    <a class="btn btn-success mx-1" href="{{ route('posts.create') }}">Create</a>
                    <a class="btn btn-warning mx-1" href="{{ route('posts.trashed') }}">Trashed</a>
                    @endcan
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-striped table-bordered border-dark">
                <thead>
                    <tr>
                        <th scope="col" style="width: 5%">#</th>
                        <th scope="col" style="width: 10%;">Image</th>
                        <th scope="col" style="width: 10%;">Title</th>
                        <th scope="col" style="width: 30%;">Description</th>
                        <th scope="col" style="width: 10%;">Category</th>
                        <th scope="col" style="width: 10%;">Publish Date</th>
                        <th scope="col" style="width: 20%;">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($posts as $post)
                    <tr>
                        <th scope="row">{{ $post->id }}</th>
                        <td><img src="{{ asset('storage/uploads/'.$post->image) }}" alt="post" width="80"></td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->description }}</td>
                        <td>{{ $post->category->name }}</td>
                        <td>{{ date('d-m-Y', strtotime($post->created_at)) }}</td>
                        <td>
                            <div class="d-flex">
                                <a class="btn btn-secondary btn-sm" href="{{ route('posts.show', $post->id) }}">Show</a>
                                @can('update', $post)
                                <a class="btn btn-primary btn-sm ms-2" href="{{ route('posts.edit', $post->id) }}">Edit</a>
                                @endcan

                                @can('delete', $post)
                                <form action="{{ route('posts.destroy', $post->id) }}" class="ms-2" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger btn-sm">Delete</button>
                                </form>
                                @endcan
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $posts->links() }}
        </div>
    </div>
</div>
@endsection
