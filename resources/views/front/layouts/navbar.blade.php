<nav class="navbar navbar-expand-lg smarthome-navabr">
    <div class="container">
        <a class="navbar-brand" href="{{ route('page.show','home') }}">
            <img src="{{asset('assets/svg/logo.svg')}}" alt="SVG Logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#smartHomeMasterNavbar" aria-controls="smartHomeMasterNavbar"
            aria-expanded="false" aria-label="Toggle navigation">
            <svg width="21" height="21" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="4.60498" cy="4.29492" r="4" fill="#F2F2F2" />
                <circle cx="16.605" cy="4.29492" r="4" fill="#F2F2F2" />
                <circle cx="16.605" cy="16.2949" r="4" fill="#F2F2F2" />
                <circle cx="4.60498" cy="16.2949" r="4" fill="#F2F2F2" />
            </svg>
        </button>
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" id="languageDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                {{ trans('content.selectLang') }}
            </button>
            <ul class="dropdown-menu" aria-labelledby="languageDropdown">
                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                    <li>
                        <a class="dropdown-item" rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                            {{ $properties['native'] }}
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>

        <div class="collapse navbar-collapse" id="smartHomeMasterNavbar">
            <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                @auth
                    
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('dashboard') }}">Dashboard</a>
                </li>
                @endauth
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('page.show','home') }}">{{ trans('content.home') }}</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('page.show', 'products') }}">{{ trans('content.products') }}</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('page.show', 'components') }}">{{ trans('content.components') }}</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('page.show', 'advantages') }}">{{ trans('content.advantages') }}</a>
                </li> 
                @foreach ($contentData['pages'] as $page)
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('page.show', $page->slug) }}">{{$page->title}}</a>
                </li>                
                @endforeach
                
            </ul>
        </div>
    </div>
</nav><!-- ./navbar -->