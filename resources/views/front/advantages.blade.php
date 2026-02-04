
            <!-- ==================================================== Page Header (Breadcrumbs) -->
            <div class="page-header header-breadcrumbs">
                <div class="container">
                    <div class="page-header-inner">
                        <h2  data-aos="fade-right">{{$contentData['advantagesPage_content']->title}}</h2>
                    </div>
                </div>
            </div><!-- ./page-headaer -->


            <!-- ==================================================== Introductory Letter -->
            <div class="section introductory-letter">
                <div class="container">
                    <div class="section-inner">
                        <p data-aos="fade-up" data-aos-delay="100">{{$contentData['advantagesPage_content']->description}}
                        </p>
                        <div class="text-center mt-3" data-aos="fade-up" data-aos-delay="200">
                            <a href="{{$contentData['advantagesPage_content']->link}}" class="button button-soft-primary">{{$contentData['advantagesPage_content']->link_text}} →</a>
                        </div>
                    </div>
                </div>
            </div><!-- ./introductory-letter -->
            <!-- ==================================================== Feature: Comfort & Thrift -->
            <div class="section feature-section feature-comfort-thrift pt-3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="section-image position-relative text-lg-end">
                                @if ($contentData['advantagesPage_content']->images->isNotEmpty() )
                                <img src="{{asset($contentData['advantagesPage_content']->images->first()->path)}}" class="d-none d-md-block" alt="Image" data-aos="fade-up" data-aos-delay="200" >
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" class="w-100 mb-5 mb-lg-0" alt="Product Image" style="max-width: 300px">
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6 align-self-lg-center mt-5 mt-md-0">
                            <div class="section-text-content">
                                <h3 class="section-title pseudo" data-aos="fade-up" data-aos-delay="100">“{{$contentData['advantagesPage_content']->content}}”</h3>
                            </div>
                        </div>
                    </div>
                    <img src="{{asset('assets/img/squares.png')}}" class="squares" alt="Image" data-aos="fade-up" data-aos-delay="300">
                    <img src="{{asset('assets/img/dots.png')}}" class="dots-behind-image" alt="Image" data-aos="fade-up" data-aos-delay="400">
                </div>
            </div><!-- ./feature-comfort-thrift -->

            @php $i = 0; @endphp
            @foreach ( $contentData['advantages'] as $advantage )
            @php ++$i; @endphp
            @if ($loop->last)
                <!-- ==================================================== Feature: Surveillance -->
            <div class="section feature-section feature-surveillance">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5 order-1 order-md-0 mt-5 mt-lg-0">
                            <div class="section-image" data-aos="fade-right" data-aos-delay="100">
                                @if ($advantage->images->isNotEmpty() )
                                @foreach ($advantage->images as $image )
                                <img src="{{asset($advantage->images->first()->path)}}" class="w-100 mb-5 mb-lg-0" alt="Product Image" >
                                @endforeach
                                @else
                                <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-down" data-aos-delay="500" >
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6 offset-md-1 mt-5 mt-lg-0">
                            <div class="section-text-content">
                                <h3 class="section-title" data-aos="fade-down" data-aos-delay="200">{{$advantage->title}}</h3>
                                <p data-aos="fade-up" data-aos-delay="400">{{$advantage->description}}.</p> 
                                <a href="{{$advantage->link}}" class="button button-soft-primary" data-aos="fade-up" data-aos-delay="500">{{$advantage->link_text}} →</a>
                            </div>
                        </div>
                    </div>
                    <img src="{{asset('assets/img/squares.png')}}" class="d-none d-lg-block" alt="Image" data-aos="fade-left" data-aos-delay="100">
                </div>
            </div><!-- ./feature-surveillance -->
            @else
                @if ($i % 2 != 0 )

                    <!-- ==================================================== Feature: Energy Saving -->
                    <div class="section feature-section feature-energy-saving">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="section-text-content">
                                        <h3 class="section-title mt-5" data-aos="fade-right" data-aos-delay="200">{{$advantage->title}}</h3>
                                        <p data-aos="fade-up" data-aos-delay="400">{{$advantage->description}}.</p> 
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="section-image">
                                        @if ($advantage->images->isNotEmpty() )
                                        @foreach ($advantage->images as $image )
                                        <img src="{{asset($advantage->images->first()->path)}}" class="w-100 mb-5 mb-lg-0" alt="Product Image">
                                        @endforeach
                                        @else
                                        <img src="{{ asset('attachments\images\sample-image.png') }}" alt="Product Image" data-aos="fade-down" data-aos-delay="500" >
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- ./feature-energy-saving -->                    
                    @else

                    <!-- ==================================================== Feature: Managing Devices -->
                    <div class="section feature-section feature-manage-device">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 order-1 order-md-0">
                                    <div class="section-image" data-aos="fade-right" data-aos-delay="200">
                                        @if ($advantage->images->isNotEmpty() )
                                        @foreach ($advantage->images as $image )
                                        <img src="{{asset($advantage->images->first()->path)}}" class="w-100 mb-5" alt="Product Image" >
                                        @endforeach
                                        @else
                                        <img src="{{ asset('attachments\images\sample-image.png') }}" class="w-100 mb-5 mb-lg-0" alt="Product Image" >
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="section-text-content">
                                        <h3 class="section-title mt-1 mt-lg-0" data-aos="fade-left" data-aos-delay="400">{{$advantage->title}}</h3>
                                        <p data-aos="fade-up" data-aos-delay="600">{{$advantage->description}}.</p> 
                                        <img src="{{asset('assets/img/dots.png')}}" alt="" data-aos="fade-left" data-aos-delay="600">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- ./feature-manage-device -->
                    

                @endif
            @endif
            @endforeach
            


