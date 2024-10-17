<!-- You must be the change you wish to see in the world. - Mahatma Gandhi -->
@extends('admin.layouts.admin-layout')

@section('admin_content')
<section class="section">
    <div class="section-header">
        <div class="section-header-back">
            <a href="" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
        </div>
        <h1>Typer Title</h1>
    </div>

    <div class="section-body">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit Title</h4>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.typer-title.update', $typer_title->id) }}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group row mb-4">
                                <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                                <div class="col-sm-12 col-md-7">
                                    <input type="text" name="title" class="form-control" value="{{ $typer_title->title }}">
                                </div>
                            </div>
                            <div class="form-group row mb-4">
                                <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                <div class="col-sm-12 col-md-7">
                                    <button class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
