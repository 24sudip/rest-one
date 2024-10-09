<!-- Always remember that you are absolutely unique. Just like everyone else. - Margaret Mead -->
@extends('layouts.master')

@section('content')
    <div class="row">
        @foreach ($posts as $post)
            <x-post.index>
                <x-slot name="title">
                    {{ $post->title }}
                </x-slot>
                <x-slot name="description">
                    {{ $post->description }}
                </x-slot>
            </x-post.index>
        @endforeach
    </div>
@endsection
{{-- @foreach ($posts as $post)
    <x-post.index :post="$post" />
@endforeach --}}
{{-- <x-button>
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum ullam harum cupiditate quo maiores vitae, iste, ex ducimus dolorem dolor sit soluta pariatur! Voluptatem nulla beatae saepe illo obcaecati? Qui!
</x-button> --}}
{{-- <div>
    <h1>contact</h1>
    <x-button />
    <x-input-field />
</div> --}}
