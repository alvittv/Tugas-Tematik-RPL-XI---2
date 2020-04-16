@extends('layouts.client')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Results of your test</div>

                <div class="card-body">
                    @if(session('status'))
                        <div class="row">
                            <div class="col-12">
                                <div class="alert alert-success" role="alert">
                                    <p>{{ session('status') }}</p>

                                    <a href="{{ route('client.test') }}" class="btn btn-primary">Start test again</a>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($result->total_points<=7)
                    <p>Nama   : {{ Auth::user()->name }}</p>
                    <p>Resiko : Rendah</p>
                    <p>Points : {{ $result->total_points }}</p>
                    @elseif($result->total_points<=14)
                    <p>Nama   : {{ Auth::user()->name }}</p>
                    <p>Resiko : Sedang</p>
                    <p>Points : {{ $result->total_points }}</p>
                    @else
                    <p>Nama   : {{ Auth::user()->name }}</p>
                    <p>Resiko : Tinggi</p>
                    <p>Points : {{ $result->total_points }}</p>
                    @endif
                    

                </div>
            </div>
        </div>
    </div>
</div>
@endsection