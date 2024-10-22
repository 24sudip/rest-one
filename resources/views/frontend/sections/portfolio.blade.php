<section class="portfolio-area section-padding-top" id="portfolio-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 text-center">
                <div class="section-title">
                    <h3 class="title">{{ $portfolio_section_setting->title }}</h3>
                    <div class="desc">
                        <p>{{ $portfolio_section_setting->sub_title }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <ul class="filter-menu">
                    <li class="active" data-filter="*">All Projects</li>
                    @foreach ($categories as $category)
                    <li data-filter=".{{ $category->slug }}">{{ $category->name }}</li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="portfolio-wrapper">
            <div class="row portfolios">
                @foreach ($portfolio_items as $portfolio_item)
                <div data-wow-delay="0.3s" class="col-md-6 col-lg-4 filter-item {{ $portfolio_item->category->slug }}">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset($portfolio_item->image) }}" alt="portfolio_item">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset($portfolio_item->image) }}" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="{{ route('show.portfolio', $portfolio_item->id) }}">{{ $portfolio_item->title }}</a></h4>

                            <div class="desc">
                                <p>{{ Str::limit(strip_tags($portfolio_item->description), 50) }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
