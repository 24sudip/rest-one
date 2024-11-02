@php
    $footer_infos = \App\Models\FooterInfo::first();
    $social_links = \App\Models\SocialLink::all();
    $useful_links = \App\Models\UsefulLink::all();
    $contact_infos = \App\Models\ContactInfo::first();
    $help_links = \App\Models\HelpLink::all();
@endphp
<footer class="footer-area">
    <div class="container">
        <div class="row footer-widgets">
            <div class="col-md-12 col-lg-3 widget">
                <div class="text-box">
                    <figure class="footer-logo">
                        <img src="{{ asset($general_settings->footer_logo) }}" alt="footer_logo">
                    </figure>
                    <p>{{ $footer_infos->info }} </p>
                    <ul class="d-flex flex-wrap">
                        @foreach ($social_links as $social_link)
                        <li><a href="{{ $social_link->url }}"><i class="{{ $social_link->icon }}"></i></a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-lg-2 offset-lg-1 widget">
                <h3 class="widget-title">Useful Link</h3>
                <ul class="nav-menu">
                    @foreach ($useful_links as $useful_link)
                    <li><a href="{{ $useful_link->url }}">{{ $useful_link->name }}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-4 col-lg-3 widget">
                <h3 class="widget-title">Contact Info</h3>
                <ul>
                    <li>{{ $contact_infos->address }}</li>
                    <li><a href="#">{{ $contact_infos->phone }}</a></li>
                    <li><a href="#">{{ $contact_infos->email }}</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-lg-3 widget">
                <h3 class="widget-title">Help</h3>
                <ul class="nav-menu">
                    @foreach ($help_links as $help_link)
                    <li><a href="{{ $help_link->url }}">{{ $help_link->name }}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="copyright">
                        <p>{{ $footer_infos->copy_right }}</p>
                        <p>{{ $footer_infos->powered_by }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
