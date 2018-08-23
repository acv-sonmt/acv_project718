
    <h1>DANH SACH KHACH HANG</h1>

    <table class="table">
        <tr>
            <td>ID</td>
            <td>Tên KH</td>
            <td>Tuổi</td>
            <td>SĐT</td>
        </tr>
        @foreach ($customers as $customer)
            <tr>
                <td>{{ $customer->id }}</td>
                <td>{{ $customer->name }}</td>
                <td>{{ $customer->age }}</td>
                <td>{{ $customer->phone }}</td>
            </tr>
        @endforeach
    </table>