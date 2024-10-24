<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f7f7;
        }

        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .login-title {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-container">
        <h2 class="login-title text-center">Login</h2>
        @if(session('error'))
            <div class="alert alert-danger">{{session('error')}}</div>
        @endif
        <form action="{{route('login_request')}}" method="post">
            @csrf
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input required name="email" type="email" class="form-control" id="email"
                       placeholder="Enter your email">
                <input required name="password" type="hidden" value="12341234" class="form-control" id="email"
                       placeholder="Enter your email">
            </div>
            {{--            <div class="mb-3">--}}
            {{--                <label for="password" class="form-label">Password</label>--}}
            {{--                <input type="password" class="form-control" id="password" placeholder="Enter your password" required>--}}
            {{--            </div>--}}
            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
