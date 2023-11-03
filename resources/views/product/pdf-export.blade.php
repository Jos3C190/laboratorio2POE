<!DOCTYPE html>
<html>
<head>
    <title>Informe de Productos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            font-size: 23px;
            text-align: center; /* Centrar el título */
        }
        .logo {
            text-align: center; /* Centrar el logotipo */
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <p class="logo">
        <img src="{{ public_path('assets/univologo.jpg') }}" width="200" />
    </p>
    <br>

    <h1>Informe de Productos</h1>
    <p>Autor: {{ $user->name }}</p>
    <p>Fecha de creación: {{ now() }}</p>
    
    <div class="table-responsive min-vh-100">
        <table class="table card-table table-vcenter text-nowrap datatable">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Year</th>
                    <th>Price</th>
                    <th>Stock</th>
                    <th>Transmission</th>
                    <th>Color</th>
                </tr>
            </thead>

            <tbody>
                @php
                $counter = 1; // Inicializa el contador en 1
                @endphp
                @forelse ($products as $product)
                <tr>
                    <td>{{ $counter }}</td>
                    <td>{{ $product->brand }}</td>
                    <td>{{ $product->model }}</td>
                    <td>{{ $product->year }}</td>
                    <td>{{ $product->price }}</td>
                    <td>{{ $product->stock }}</td>
                    <td>{{ $product->transmission }}</td>
                    <td>{{ $product->color }}</td>
                    
                </tr>
            
                @php
                $counter++; // Incrementa el contador en 1
                @endphp
                @empty
                <td>No Data Found</td>
                @endforelse
            </tbody>
        </table>
    </div>
</body>
</html>
