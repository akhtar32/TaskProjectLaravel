<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Example</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Company Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="{{route('index')}}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('truck_item')}}">Item Truck</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#settings">Menu</a>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a class="btn btn-outline-danger my-2 my-sm-0" href="{{route('logout')}}">Logout</a>

            </form>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="mb-4">Select an Item</h2>

    <form action="{{ route('items.submit') }}" method="POST">
        @csrf <!-- Include CSRF token for form submission -->
        <div class="form-group">
            <select class="form-control" id="item-dropdown" name="item_id" required>

                @foreach($items as $item)
                    <option value="{{ $item->item_id }}">{{ $item->item }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Assign</button>
    </form>
    <h2 class="mb-4">Item Names</h2>
    <table class="table table-bordered">
        <thead class="thead-light">
        <tr>
            <th scope="col">Item Name</th>
        </tr>
        </thead>
        <tbody>
        @foreach($data as $item)
            <tr>
                <td>{{ $item->item->item }}</td>
            </tr>
        @endforeach
        </tbody>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    function logout() {
        // Perform logout logic, e.g., redirect to the logout route
        window.location.href = '/logout'; // Change to your actual logout route
    }
</script>
</body>
</html>
