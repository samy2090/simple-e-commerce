
@section('content')
            <!-- ==================================================== Page Header (Breadcrumbs) -->
            <div class="page-header header-breadcrumbs static-page-title">
                <div class="container">
                    <div class="page-header-inner">
                        <h2 data-aos="fade-right" data-aos-delay="100">{{ $contentData['productsPage_content']->title }}</h2>
                    </div>
                </div>
            </div><!-- ./page-headaer -->



            <div class="section py-4">
                <div class="container">
                    <div class="width-55 text-center">
                        <p data-aos="fade-up" data-aos-delay="100">{{ $contentData['productsPage_content']->description }}.</p>
                        <a href="{{ $contentData['productsPage_content']->link }}" class="button button-soft-primary" data-aos="fade-up" data-aos-delay="200">{{ $contentData['productsPage_content']->link_text }} →</a>
                    </div>
                </div>
            </div>

            @php $i = 0; @endphp
            @foreach ($contentData['products'] as $product )
                @php ++$i; @endphp
                @if ($loop->last )
                    <!-- ==================================================== Door Bell & Cameras -->
                    <div class="section door-bell abs-shape pt-0">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 order-1 order-lg-0">
                                    <div class="section-image d-flex">
                                        @if ($product->images->isNotEmpty() )
                                        @foreach ($product->images->where('filename', '!=', 'home') as $image )
                                        <img src="{{asset($image->path)}}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" >
                                        @endforeach
                                        @else
                                        <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" style="max-width: 300px">
                                        @endif
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="section-text-content">
                                        <h3 class="section-title mt-5" data-aos="fade-up" data-aos-delay="100">{{$product->title}}</h3>
                                        <p data-aos="fade-up" data-aos-delay="200">{{$product->description}}.</p>
                                    </div>
                                </div>
                            </div>
                            <img src="{{asset('assets/img/dots.png')}}" class="d-none d-lg-block" alt="SVG Icon" data-aos="fade-left" data-aos-delay="400">
                        </div>
                    </div><!-- ./door-bell -->
                @else
                    @if ($i % 2 != 0 )
                        <!-- ==================================================== Switched & Touch Screen -->
                        <div class="section switch-touch-screen line-gradient line-width-full">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="section-text-content">
                                            <h3 class="section-title mt-5" data-aos="fade-up" data-aos-delay="200">{{$product->title}} </h3>
                                            <p data-aos="fade-up" data-aos-delay="300">{{$product->description}}</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="section-image d-flex">
                                            @if ($product->images->isNotEmpty() )
                                            @foreach ($product->images->where('filename', '!=', 'home') as $image )
                                            <img src="{{asset($image->path)}}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" >
                                            @endforeach
                                            @else
                                            <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" style="max-width: 300px">
                                            @endif
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- ./switch-touch-screen -->
                        @else
                        
                        <!-- ==================================================== Monitor Sensor -->
                        <div class="section monitor-sensors pt-0 abs-shape">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-6 order-1 order-lg-0">
                                        <div class="section-image d-flex align-items-center">
                                            @if ($product->images->isNotEmpty() )
                                            @foreach ($product->images->where('filename', '!=', 'home') as $image )
                                            <img src="{{asset($image->path)}}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" >
                                            @endforeach
                                            @else
                                            <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-up" data-aos-delay="400" style="max-width: 300px">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-lg-6 align-self-center">
                                        <div class="section-text-content">
                                            <h3 class="section-title mt-5" data-aos="fade-up" data-aos-delay="100">{{$product->title}}</h3>
                                            <p data-aos="fade-up" data-aos-delay="200">{{$product->description}}</p>
                                        </div>
                                    </div>
                                </div>
                                <img src="{{asset('assets/img/squares.png')}}" class="d-none d-lg-block" alt="SVG Icon" data-aos="fade-left" data-aos-delay="500">
                            </div>
                        </div><!-- ./monitor-sensors -->
                    @endif
                @endif
            @endforeach



@endsection
