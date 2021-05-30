@extends('layouts.master');

@section('header')
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal">Lập trình backend-web 2</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="/companies">Companies</a>
        <a class="p-2 text-dark" href="/trainers">Trainers</a>
        <a class="p-2 text-dark" href="/search">Search</a>
    </nav>

</div>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Companies</h1>
</div>
@endsection