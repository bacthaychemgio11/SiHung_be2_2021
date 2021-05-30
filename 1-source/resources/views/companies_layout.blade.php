@extends('layouts.master');

@section('content')
<div class="container">
    <form action='http://127.0.0.1:8000/searchCompanies' method="GET">
        <input type="text" name="name" id="name">
        <button type="submit">Submit</button>
    </form>
    <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Web</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Category_id</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($companies as $company)
                    <tr>
                        <th scope="row">{!! $company->company_id !!}</th>
                        <td>{!! $company->company_name !!}</td>
                        <td>{!! $company->company_web !!}</td>
                        <td>{!! $company->company_phone !!}</td>
                        <td>{!! $company->category_id !!}</td>
                    </tr>
                    @endforeach

                </tbody>
            </table>
            {!! $companies->render() !!}
        </div>
</div>

@endsection