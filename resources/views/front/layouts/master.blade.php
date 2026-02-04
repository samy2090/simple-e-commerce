<!DOCTYPE html>
@if (App::getlocale()=='ar')
<html lang="ar" dir="rtl">
@else
<html lang="en">
@endif

@include('front.layouts.header')

<body>

    <div id="app" class="home-page">
        <div class="page-wrapper">
            <!-- ==================================================== Navbar -->
            @include('front.layouts.navbar')


            <!-- ==================================================== Header -->
            @yield('content')


            <!-- ==================================================== Footer -->
            @include('front.layouts.footer')
        </div>
    </div>

    <div class="cursor cursor-dot"></div>
    <div class="cursor cursor-outside"></div>

    <!-- Javascript Plugins & Libraries -->
    @include('front.layouts.scripts')
</body>

</html>