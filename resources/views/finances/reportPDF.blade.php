<!DOCTYPE html>
<html>

<head>
    <title>Report</title>
    <style>
        table {
            width: 600px;
        }

        table,
        th,
        td {
            border: solid 1px #3e3e3e;
            border-collapse: collapse;
            padding: 2px 4px;
            text-align: left;
        }
    </style>
</head>

<body>
    <h1>Report</h1>
    <h3>{{ $startdate }} to {{ $enddate }}</h3>


    <table>
        <thead>
            <tr>
                <th>Date</th>
                <th>Note</th>
                <th>Category</th>
                <th>Description</th>
                <th>Debit</th>
                <th>Credit</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($reports as $report)
                <tr>
                    <td>
                        {{ $report->date }}
                    </td>
                    <td>
                        {{ $report->note }}
                    </td>
                    <td> {{ $report->category }} </td>

                    <td> {{ $report->description }} </td>


                    @if ($report->record_type == 'Expense')
                        <td> {{ $report->amount }} </td>
                        <td> </td>
                    @else
                        <td> </td>
                        <td> {{ $report->amount }} </td>
                    @endif


                </tr>
            @endforeach
        </tbody>
    </table>
    </div>
    </div>

</body>

</html>
