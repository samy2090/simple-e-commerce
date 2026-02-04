@extends('front.layouts.master')

@section('css')

@endsection

@section('content')

@if ($slug == 'home')
    @include('front.home');
@elseif ($slug == 'products')
    @include('front.products')
@elseif ($slug == 'advantages')
    @include('front.advantages')
@elseif ($slug == 'components')
    @include('front.components')
@else
    @include('front.newPage')
@endif


@endsection

@section('js')

@endsection