
            <!-- ==================================================== Header -->
            @if($contentData['heroSection'])
            <header class="header hero-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 align-self-center">
                            <div class="header-text-content text-white">
                                <h2>{{ $contentData['heroSection']->title }}</h2>
                                <p>{{ $contentData['heroSection']->description }}</p>
                                <a href="{{ $contentData['heroSection']->link }}" class="button button-soft-light">{{ $contentData['heroSection']->link_text }} →</a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="header-image">
                                @if ($contentData['heroSection']->images->isNotEmpty())
                                <img src="{{ asset($contentData['heroSection']->images->first()->path) }}" alt="Image" style='max-width:550px'>
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Image" style='max-width:550px'>
                                @endif
                                <img src="{{asset('assets/img/dots.png')}}" class="dots-behind-image animate-updown" alt="Dots">
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            @endif
            <!-- ./header -->


            <!-- ==================================================== Induction -->
            @if($contentData['induction'])
            <div class="section induction">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 d-none d-md-block" data-aos="fade-up">
                            <div class="image">
                                @if ($contentData['induction']->images->isNotEmpty())
                                <img src="{{ asset($contentData['induction']->images->first()->path) }}" alt="Image" style='max-width:550px'>
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Image" style='max-width:550px'>
                                @endif
                                <img src="{{asset('assets/img/dots.png')}}" class="dots-behind-image animate-updown" alt="Dots">
                            </div>
                        </div>
                        <div class="col-md-6" data-aos="fade-up">
                            <div class="text-content">
                                <h3 class="section-title pseudo">”{{ $contentData['induction']->title }}”</h3>
                                <p>{{ $contentData['induction']->description }}</p>
                                <a href="{{ $contentData['induction']->link }}" class="button button-soft-primary">{{ $contentData['induction']->link_text }} →</a>
                            </div>
                        </div>
                        <div class="col-md-12 mt-md-5 py-5 text-center" data-aos="fade-up">
                            <h3 class="mt-md-5 section-title">{{ $contentData['framworks']->title }}</h3>
                            <div class="brands">
                                @if ($contentData['framworks']->images->isNotEmpty())
                                @foreach ( $contentData['framworks']->images as $image )
                                <img src="{{ asset($image->path) }}" alt="Image">
                                @endforeach
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Image">
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Image">
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Image">
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endif
            <!-- ./induction -->


            <!-- ==================================================== About -->
            @if($contentData['about'])
            <div class="section about" data-aos="fade-up">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-6 align-self-center">
                            <div class="about-text-content">
                                <h3 class="section-title">{{ $contentData['about']->title }}</h3>
                                <p>{{ $contentData['about']->description }}.</p>
                                @if($contentData['mission'])
                                <h6 class="section-subtitle">{{ $contentData['mission']->title }}</h6>
                                <p>{{ $contentData['mission']->description }}.</p>
                                @endif
                                @if($contentData['vision'])
                                <h6 class="section-subtitle">{{ $contentData['vision']->title }}</h6>
                                <p>{{ $contentData['vision']->description }}.</p>
                                @endif
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="about-image">
                                @if ($contentData['about']->images->isNotEmpty())
                                <img src="{{ asset($contentData['about']->images->first()->path) }}" alt="Image">
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Default Image" class="content_image_custome">
                                @endif
                            </div>
                        </div>
                    </div>
                    <img src="{{asset('assets/img/dots.png')}}" class="dots-behind-image" alt="Dots Image">
                    <img src="{{asset('assets/img/squares.png')}}" alt="Squares Shape Image">
                </div>
            </div>
            @endif
            <!-- ./about -->


            <!-- ==================================================== Solutions -->
            @if($contentData['solutions'])
            <div class="section solutions">
                <div class="container">
                    <div>
                        <h3 class="section-title mt-5" data-aos="fade-up">{{ $contentData['solution_product_title']->title }}</h3>
                        <p data-aos="fade-up">{{ $contentData['solution_product_title']->description }}</p>
                    </div>

                    <h5 class="section-subtitle" data-aos="fade-up">{{ trans('content.solutions') }}</h5>
                    <div class="row">
                        @foreach ($contentData['solutions']  as $solution )
                        <div class="col-md-6 col-lg-4" data-aos="fade-up">
                            <div class="solution-item">
                                @if ($solution->images->isNotEmpty())
                                <img src="{{ asset($solution->images->first()->path) }}" alt="Solution Image" class="content_image_custome2">
                            @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Default Image" class="content_image_custome2">
                            @endif
                                <h6 class="item-title">{{$solution->title}}</h6>
                                <p>{{$solution->description}}</p>
                            </div>
                        </div>
                        @endforeach
                        
                        
                    </div>
                </div>
            </div>
            @endif<!-- ./solutions -->


            <!-- ==================================================== Products -->
            @if($contentData['products'])
            <div class="section products">
                <div class="container">
                    <h5 class="section-subtitle mb-0 d-none d-md-block" data-aos="fade-up">{{ trans('content.products') }}</h5>
                    <div class="row">
                        @php
    $products = $contentData['products']->take(3);
    // Reorder to make the second item first
    if ($products->count() > 1) {
        $products = $products->slice(1, 1)->merge($products->slice(0, 1))->merge($products->slice(2));
    }
@endphp

@foreach ($products as $product)
    <div class="col-md-3 mb-4 mb-md-0 aos-init aos-animate" data-aos="fade-up">
        <div class="product-item">
            @if ($product->images->isNotEmpty())
                <img src="{{ asset($product->images->firstWhere('filename', 'home')?->path ?? $product->images->first()?->path ?? $product->images->first()->path) }}" alt="" class="content_image_custome2">
            @else
                <img src="{{ asset('attachments/images/sample-image.png') }}" alt="Default Image" style="max-width:300px">
            @endif
            <a href="#">{{ $product->title }}</a>
        </div>
    </div>
@endforeach
                    </div>
                </div>
            </div><!-- ./products -->
            @endif
