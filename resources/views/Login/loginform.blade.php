<link rel="stylesheet" href="{{ asset('css/login.css') }}">

<div class="login-container">
    <h1>Login</h1>
    <form method="POST" action="{{ route('login.perform') }}">
        @csrf
        <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Login</button>
    </form>

    @if($errors->any())
        <div class="error">
            {{ $errors->first() }}
        </div>
    @endif
</div>
