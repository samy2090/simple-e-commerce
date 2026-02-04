
            <!-- ==================================================== Page Header (Breadcrumbs) -->
            <div class="page-header header-breadcrumbs" style="margin-bottom: 100px">
                <div class="container">
                    <div class="page-header-inner">
                        <h2 data-aos="fade-right" data-aos="fade-right" data-aos-delay="100">{{ $pageData->title }}</h2>
                    </div>
                </div>
            </div><!-- ./page-headaer -->


            <!-- ==================================================== Interactions Components -->
            <div class="section interaction-components pt-5">
                <div class="container">
                    
                    <div class="section-text-content">
                        <div class="row">
                            <div class="col-md-6 position-relative text-md-end">
                                
                                @if ($pageData->images->isNotEmpty())
                                    @foreach ($pageData->images as $image)
                                    <img src="{{asset($image->path)}}" class="device" alt="Image" data-aos="fade-up" data-aos-delay="400" style='max-width:300px'>
                                    @endforeach
                                    @else
                                    <img src="{{ asset('attachments\images\sample-image.png') }}" class="device" alt="Image" data-aos="fade-up" data-aos-delay="400" style='max-width:300px'>
                                @endif
                                <img src="{{asset('assets/img/components/components-circle.png')}}" class="circle" alt="Image" data-aos="fade-up" data-aos-delay="200">
                            </div>
                            <div class="col-md-6">
                                <h3 class="section-title pseudo mt-5" data-aos="fade-up" data-aos-delay="500">{{ $pageData->description }}</h3>
                                <p data-aos="fade-up" data-aos-delay="600">
                                    {{ $pageData->content }}
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


        
