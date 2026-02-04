<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{\App\Models\siteSettings::where('id', 1)->value('title') ?? 'Default Title';}} </title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap">

    <!-- Css Files & Libraries -->
    @if (App::getlocale()=='ar')
    <link rel="stylesheet" href="{{asset('assets/libs/bootstrap/css/bootstrap.rtl.min.css')}}">
    @else
    <link rel="stylesheet" href="{{asset('assets/libs/bootstrap/css/bootstrap.min.css')}}">
    @endif
    <link rel="stylesheet" href="https://unpkg.com/lenis@1.1.18/dist/lenis.css">
    <link rel="stylesheet" href="{{asset('assets/libs/aos/aos.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <style>
        .content_image_custome{
            max-width: 500px;
        }
        .content_image_custome2{
            max-width: 350px;
        }
    </style>
    @yield('css')
</head>