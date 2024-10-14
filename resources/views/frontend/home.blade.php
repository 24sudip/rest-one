@extends('frontend.layouts.frontend-layout')

@section('frontend_content')
<!-- Header-Area-Start -->
<header class="header-area parallax-bg" id="home-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="header-text">
                    <h3 class="typer-title wow fadeInUp" data-wow-delay="0.2s">I'm ui/ux designer</h3>
                    <h1 class="title wow fadeInUp" data-wow-delay="0.3s">Hi, I am Smith Jhon</h1>
                    <div class="desc wow fadeInUp" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque at, aperiam corrupti
                            earum quasi, porro voluptatem commodi eos laboriosam nam quis nostrum, molestiae
                            nesciunt dolore.</p>
                    </div>
                    <a href="#" class="button-dark mouse-dir wow fadeInUp" data-wow-delay="0.5s">Hire Me <span
                            class="dir-part"></span></a>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header-Area-End -->

<!-- Service-Area-Start -->
<section class="service-area section-padding-top" id="about-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="single-service">
                    <h3 class="title wow fadeInRight" data-wow-delay="0.3s">Branding Design</h3>
                    <div class="desc wow fadeInRight" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam
                            excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-service">
                    <h3 class="title wow fadeInRight" data-wow-delay="0.3s">User Interface</h3>
                    <div class="desc wow fadeInRight" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam
                            excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="single-service">
                    <h3 class="title wow fadeInRight" data-wow-delay="0.3s">User Experience</h3>
                    <div class="desc wow fadeInRight" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum quos animi numquam
                            excepturi eveniet explicabo repellendus rem esse. Quae quasi odio enim.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Service-Area-End -->

<!-- About-Area-Start -->
<section class="about-area section-padding-top">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6">
                <figure class="about-image">
                    <img src="{{ asset('frontend_assets/images') }}/about-image.png" alt="" class="wow fadeInUp" data-wow-delay="0.3s">
                </figure>
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <h3 class="title wow fadeInUp" data-wow-delay="0.3s">About Me</h3>
                    <div class="sub-title wow fadeInUp" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos repellendus
                            sapiente, quae et eos dolorum.</p>
                    </div>
                    <div class="desc wow fadeInUp" data-wow-delay="0.4s">
                        <p>Consectetur adipisicing elit. Laborum, magni libero
                            similique, laboriosam, delectus reiciendis minima minus dolorem sit fuga rerum atque
                            vel quaerat ipsum perspiciatis neque maxime recusandae fugit</p>
                        <p>Ipsum dolor sit amet, consectetur adipisicing elit. Laborum, magni libero
                            similique, laboriosam, delectus reiciendis minima minus dolorem sit fuga rerum atque
                            vel quaerat ipsum perspiciatis neque maxime recusandae fugit.</p>
                    </div>
                    <a href="#" class="button-primary-trans mouse-dir wow fadeInUp" data-wow-delay="0.5s">
                        <span class="icon"><i class="fal fa-download"></i></span>
                        <span class="text">Download Resume</span>
                        <span class="dir-part"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About-Area-End -->

<!-- Portfolio-Area-Start -->
<section class="portfolio-area section-padding-top" id="portfolio-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 text-center">
                <div class="section-title">
                    <h3 class="title">Latest Portfolio</h3>
                    <div class="desc">
                        <p>Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse. Quae quasi
                            odio enim.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <ul class="filter-menu">
                    <li class="active" data-filter="*">All Projects</li>
                    <li data-filter=".branding">Branding Design</li>
                    <li data-filter=".interface">User Interface</li>
                    <li data-filter=".experience">User Experience</li>
                    <li data-filter=".development">Web Development</li>
                </ul>
            </div>
        </div>
        <div class="portfolio-wrapper">
            <div class="row portfolios">
                <div data-wow-delay="0.3s" class="col-md-6 col-lg-4 filter-item branding">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-1.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-1.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Black Golden</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.4s" class="col-md-6 col-lg-4 filter-item interface">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-2.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-2.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Fitzgerald Stanton</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.5s" class="col-md-6 col-lg-4 filter-item branding">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-3.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-3.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Ines Campbell</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.3s" class="col-md-6 col-lg-4 filter-item interface experience">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-4.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-4.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Wendi Michael</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.4s"
                    class="col-md-6 col-lg-4 filter-item branding development experience">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-5.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-5.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Guerrero Woodard</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.5s" class="col-md-6 col-lg-4 filter-item interface">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-6.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-6.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Prince Phelps</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.3s" class="col-md-6 col-lg-4 filter-item development">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-7.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-7.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Gayle Gaines</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.4s" class="col-md-6 col-lg-4 filter-item experience">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-8.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-8.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Janice Wilder</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-wow-delay="0.5s" class="col-md-6 col-lg-4 filter-item development">
                    <div class="single-portfolio">
                        <figure class="portfolio-image">
                            <img src="{{ asset('frontend_assets/images') }}/portfolio-9.jpg" alt="">
                        </figure>
                        <div class="portfolio-content">
                            <a href="{{ asset('frontend_assets/images') }}/portfolio-9.jpg" data-lity class="icon"><i
                                    class="fas fa-plus"></i></a>
                            <h4 class="title"><a href="portfolio-details.html">Branding Design</a></h4>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Portfolio-Area-End -->

<!-- Skills-Area-Start -->
<section class="skills-area section-padding-top" id="skills-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="section-title">
                            <h3 class="title">Skills</h3>
                            <div class="desc">
                                <p>Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse.
                                    Quae quasi
                                    odio enim.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row skills">
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.3s" data-max="100">
                            <div class="title">Web Design</div>
                            <div class="bar_group__bar thick elastic" data-value="95" data-color="#558bff"
                                data-tooltip="true" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.5s" data-max="100">
                            <div class="title">Graphic Design</div>
                            <div class="bar_group__bar thick elastic" data-value="85" data-color="#fecc90"
                                data-tooltip="true" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.3s" data-max="100">
                            <div class="title">Web Developement</div>
                            <div class="bar_group__bar thick elastic" data-value="70" data-color="#ff885e"
                                data-tooltip="true" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.5s" data-max="100">
                            <div class="title">Application Development</div>
                            <div class="bar_group__bar thick elastic" data-value="90" data-color="#282828"
                                data-tooltip="true" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.3s" data-max="100">
                            <div class="title">Analytical Abilities</div>
                            <div class="bar_group__bar thick elastic" data-value="80" data-tooltip="true"
                                data-color="#190844" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="bar_group wow fadeInUp" data-wow-delay="0.5s" data-max="100">
                            <div class="title">Problem Solbing</div>
                            <div class="bar_group__bar thick elastic" data-value="65" data-tooltip="true"
                                data-color="#9dd3ff" data-show-values="false" data-unit="%"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 d-none d-lg-block">
                <figure class="single-image text-right wow fadeInRight">
                    <img src="{{ asset('frontend_assets/images') }}/skill.jpg" alt="">
                </figure>
            </div>
        </div>
    </div>
</section>
<!-- Skills-Area-End -->

<!-- Experience-Area-Start -->
<section class="experience-area section-padding">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 d-none d-lg-block">
                <figure class="single-image wow fadeInLeft">
                    <img src="{{ asset('frontend_assets/images') }}/exper.jpg" alt="">
                </figure>
            </div>
            <div class="col-lg-6">
                <div class="experience-text">
                    <h3 class="title wow fadeInUp" data-wow-delay="0.3s">5 Years Experiences on Design &
                        Development.</h3>
                    <div class="desc wow fadeInUp" data-wow-delay="0.4s">
                        <p>Lorem ipsum dolor sit amet consectetur.
                            voluptate dignissimos recusandae omnis delectus quas incidunt
                            inventore placeat ea illo totam consequuntur odio.</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo fugit officia itaque
                            soluta minus officiis, atque, debitis ipsa ipsum, adipisci delectus eaque cum
                            laudantium incidunt ex hic laboriosam similique rerum.</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="icon-info wow fadeInUp" data-wow-delay="0.3s">
                                <div class="icon"><i class="fas fa-mobile-android-alt"></i></div>
                                <h6><a href="#" class="text">+1347-430-9510</a></h6>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="icon-info wow fadeInUp" data-wow-delay="0.4s">
                                <div class="icon"><i class="fas fa-envelope"></i></div>
                                <h6><a href="#" class="text">rabins@gmail.com</a></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Experience-Area-End -->

<!-- Testimonial-Area-Start -->
<section class="testimonial-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 text-center">
                <div class="section-title">
                    <h3 class="title">Our client Feedback</h3>
                    <div class="desc">
                        <p>Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse.
                            Quae quasi
                            odio enim.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="testimonial-slider">
                    <div class="single-testimonial">
                        <div class="testimonial-header">
                            <div class="quote">
                                <i class="fas fa-quote-left"></i>
                            </div>
                            <h5 class="title">Reilly Harding</h5>
                            <h6 class="position">Managing Director, DevignEdge</h6>
                        </div>
                        <div class="content">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur
                                provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam
                                ratione eius porro excepturi.</p>
                        </div>
                    </div>
                    <div class="single-testimonial">
                        <div class="testimonial-header">
                            <div class="quote">
                                <i class="fas fa-quote-left"></i>
                            </div>
                            <h5 class="title">White Castaneda</h5>
                            <h6 class="position">Managing Director, DevignEdge</h6>
                        </div>
                        <div class="content">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur
                                provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam
                                ratione eius porro excepturi. </p>
                        </div>
                    </div>
                    <div class="single-testimonial">
                        <div class="testimonial-header">
                            <div class="quote">
                                <i class="fas fa-quote-left"></i>
                            </div>
                            <h5 class="title">Barrera Ramsey</h5>
                            <h6 class="position">Managing Director, DevignEdge</h6>
                        </div>
                        <div class="content">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur
                                provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam
                                ratione eius porro excepturi. </p>
                        </div>
                    </div>
                    <div class="single-testimonial">
                        <div class="testimonial-header">
                            <div class="quote">
                                <i class="fas fa-quote-left"></i>
                            </div>
                            <h5 class="title">Marisa Cain</h5>
                            <h6 class="position">Managing Director, DevignEdge</h6>
                        </div>
                        <div class="content">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus consequuntur
                                provident iusto cumque nulla laboriosam quos ipsam enim eum! Itaque ipsum nam
                                ratione eius porro excepturi. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial-Area-End -->

<!-- Blog-Area-Start -->
<section class="blog-area section-padding-top" id="blog-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 text-center">
                <div class="section-title">
                    <h3 class="title">Creative Blog Post</h3>
                    <div class="desc">
                        <p>Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse.
                            Quae quasi
                            odio enim.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="blog-slider">
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-1.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Great things never come from.</a></h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-2.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Don’t stop when you’re tired. Stop
                                    when.</a></h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-3.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Success doesn’t just find you.</a>
                            </h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-4.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Sometimes later becomes never.</a>
                            </h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-5.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Don’t wait for opportunity. Create
                                    it.</a></h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="single-blog">
                        <figure class="blog-image">
                            <img src="{{ asset('frontend_assets/images') }}/blog-6.jpg" alt="">
                        </figure>
                        <div class="blog-content">
                            <h3 class="title"><a href="blog-details.html">Your limitation-it’s only your
                                    imagination.</a></h3>
                            <div class="desc">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus
                                    consequuntur provident iusto cumque . </p>
                            </div>
                            <a href="#" class="button-primary-trans mouse-dir">Read More <span
                                    class="dir-part"></span> <i class="fal fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog-Area-End -->

<!-- Contact-Area-Start -->
<section class="contact-area section-padding" id="contact-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 text-center">
                <div class="section-title">
                    <h3 class="title">Lets Work Together</h3>
                    <div class="desc">
                        <p>Earum quos animi numquam excepturi eveniet explicabo repellendus rem esse.
                            Quae quasi
                            odio enim.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <!-- Contact-Form -->
                <form class="contact-form" id="contact-form">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-box">
                                <input type="text" name="form-name" id="form-name" class="input-box"
                                    placeholder="Name">
                                <label for="form-name" class="icon lb-name"><i class="fal fa-user"></i></label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-box">
                                <input type="text" name="form-email" id="form-email" class="input-box"
                                    placeholder="Email">
                                <label for="form-email" class="icon lb-email"><i
                                        class="fal fa-envelope"></i></label>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-box">
                                <input type="text" name="form-subject" id="form-subject" class="input-box"
                                    placeholder="Subject">
                                <label for="form-subject" class="icon lb-subject"><i
                                        class="fal fa-check-square"></i></label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-box">
                                <textarea class="input-box" id="form-message" placeholder="Message" cols="30"
                                    rows="4" name="form-message"></textarea>
                                <label for="form-message" class="icon lb-message"><i
                                        class="fal fa-edit"></i></label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-box">
                                <button class="button-primary mouse-dir" type="submit">Send Now <span
                                        class="dir-part"></span></button>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- Contact-Form / -->
            </div>
        </div>
    </div>
</section>
<!-- Contact-Area-End -->
@endsection