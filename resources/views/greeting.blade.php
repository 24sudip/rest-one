<!-- Smile, breathe, and go slowly. - Thich Nhat Hanh -->
@extends('layouts.master')

@section('content')
<div class="mt-5">
    <div class="mb-3">
        <a href="{{ route('greeting','en') }}" class="btn btn-primary">English</a>
        <a href="{{ route('greeting','bn') }}" class="btn btn-danger">Bangla</a>
    </div>
    <div class="display-3">{{ __('frontend.Welcome To Our Application') }}</div>
    <p>{{ __('frontend.Laravels localization features provide a convenient way to retrieve strings in various languages, allowing you to easily support multiple languages within your application') }}</p>
    <div class="row">
        <ul class="row">
            <li>{{ __('frontend.Home') }}</li>
            <li>{{ __('frontend.About') }}</li>
            <li>{{ __('frontend.Contact') }}</li>
            <li>{{ __('frontend.More') }}</li>
        </ul>
    </div>
</div>
@endsection
