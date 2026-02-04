
            <!-- ==================================================== Page Header (Breadcrumbs) -->
            <div class="page-header header-breadcrumbs">
                <div class="container">
                    <div class="page-header-inner">
                        <h2 data-aos="fade-right" data-aos="fade-right" data-aos-delay="100">{{ $contentData['SmartHomeComponents_content']->title }}</h2>
                    </div>
                </div>
                <img src="{{asset('assets/img/dots.png')}}" alt="Dots Image" style="max-width: 100px ; float: right; ">
            </div><!-- ./page-headaer -->


            <!-- ==================================================== Interactions Components -->
            <div class="section interaction-components pt-5">
                <div class="container">
                    <div class="section-image">
                        <img src="{{asset('assets/img/components/components.png')}}" alt="Image" data-aos="fade-up" data-aos-delay="100">
                    </div>
                    <div class="section-text-content">
                        <div class="row">
                            <div class="col-md-6 position-relative text-md-end">
                                
                                @if ($contentData['SmartHomeComponents_content']->images->isNotEmpty())
                                    @foreach ($contentData['SmartHomeComponents_content']->images as $image)
                                    <img src="{{asset($image->path)}}" class="device" alt="Image" data-aos="fade-up" data-aos-delay="400" style='max-width:300px'>
                                    @endforeach
                                    @else
                                    <img src="{{ asset('attachments\images\sample-image.png') }}" class="device" alt="Image" data-aos="fade-up" data-aos-delay="400" style='max-width:300px'>
                                @endif
                                <img src="{{asset('assets/img/components/components-circle.png')}}" class="circle" alt="Image" data-aos="fade-up" data-aos-delay="200">
                            </div>
                            <div class="col-md-6">
                                <h3 class="section-title pseudo mt-5" data-aos="fade-up" data-aos-delay="500">{{ $contentData['SmartHomeComponents_content']->description }}</h3>
                                <p data-aos="fade-up" data-aos-delay="600">
                                    {{ $contentData['SmartHomeComponents_content']->content }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- ./interaction-components -->


            <!-- ==================================================== Supported Brands -->
            <div class="section supported-brands py-3">
                <div class="container">
                    <div class="brands-images text-center">
                        @if ($contentData['supported_brands']->images->isNotEmpty())
                            @foreach ( $contentData['supported_brands']->images  as $image )
                                
                            <img src="{{asset($image->path)}}" alt="Brand Image" data-aos="fade-up" data-aos-delay="100" style='max-width:300px'>
                            @endforeach
                        @else
                            <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Brand Image" data-aos="fade-up" data-aos-delay="100" style='max-width:300px'>
                        @endif
                        
                    </div>
                </div>
            </div><!-- ./supported-brands -->


            <!-- ==================================================== Remote Mobile App -->
            <div class="section remote-mobile-app">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="section-text-content">
                                <h3 class="section-title mt-5" data-aos="fade-up" data-aos-delay="100">{{$contentData['remote_app']->title}} </h3>
                                <p data-aos="fade-up" data-aos-delay="200">{{$contentData['remote_app']->description}}.</p> 
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="section-image">
                                @if ($contentData['remote_app']->images->isNotEmpty())
                                <img src="{{asset($contentData['remote_app']->images->first()->path)}}" alt="Product Image" data-aos="fade-up" data-aos-delay="300" style='max-width:550px'>
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-up" data-aos-delay="300" style='max-width:550px'>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- ./remote-mobile-app -->


            <!-- ==================================================== Smart Home Products -->
            <div class="section smart-home-products pt-5 pt-lg-3">
                <div class="container">
                    <h3 class="section-title" data-aos="fade-up" data-aos-delay="100">{{ trans('content.smart_products') }}</h3>
                    <div class="row">
                        @foreach ( $contentData['smart_products'] as $product )
                            
                        <div class="col-md-4">
                            <div class="shp-item">
                                @if ($product->images->isNotEmpty())
                                <img src="{{asset($product->images->first()->path)}}" alt="SVG Icon" data-aos="fade-up" data-aos-delay="200" style='max-width:300px'>
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="SVG Icon" data-aos="fade-up" data-aos-delay="200" style='max-width:300px'>
                                @endif
                                <h6 class="item-title" data-aos="fade-up" data-aos-delay="300">{{$product->title}}</h6>
                                <p data-aos="fade-up" data-aos-delay="400">{{$product->description}}</p>
                            </div>
                        </div>
                        @endforeach


                    </div>
                </div>
            </div><!-- ./smart-home-products -->

