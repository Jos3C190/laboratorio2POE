@extends('tablar::page')

@section('title')
    Home
@endsection

@section('content')
    <!-- Page header -->
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <!-- Page pre-title -->
                    <div class="page-pretitle">
                        Overview
                    </div>
                    <h2 class="page-title">
                        Dashboard
                    </h2>
                </div>
                <!-- Page title actions -->

            </div>
        </div>
    </div>
    <!-- Page body -->
    <div class="page-wrapper">
        <div class="page-body">
            <div class="container-xl">
                <div class="alert alert-success" role="alert">
                    <h4 class="alert-title">¡Aquí no es!</h4>
                    <div class="text-secondary">Esta sección es puramente decorativa. Por favor, dirígete a la sección "Productos" en la barra lateral.</div>
                </div>                
            </div>
        </div>
    </div>
@endsection
