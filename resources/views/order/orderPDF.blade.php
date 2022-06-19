<!DOCTYPE html>
<html>
<head>
    <title>Order List for {{ $store_name }}</title>
    <style>
        table {
            width: 600px;
        }
        table, th, td {
            border: solid 1px #3e3e3e;
            border-collapse: collapse;
            padding: 2px 4px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Order List for {{ $store_name }}</h1>
    <h3>{{ $orders[0]->order_date }}</h3>


            <table>
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Quantity</th>
                        <th>Description</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $order)

                    <tr>
                        <td>
                            {{ $order->order }}
                        </td>
                        <td>
                            {{ $order->quantity }}
                        </td>
                        <td> {{ $order->description }} </td>

                        <td>


                        </td>

                    </tr>

                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
