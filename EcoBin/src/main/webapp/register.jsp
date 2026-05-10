<!DOCTYPE html>
<html>

<head>

    <title>Register</title>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet"
          href="css/style.css">

</head>

<body class="auth-body">

<div class="form-container">

    <h2>
        Create Account
    </h2>

    <form action="register"
          method="post">

        <input type="text"
               name="name"
               placeholder="Full Name"
               required>

        <input type="email"
               name="email"
               placeholder="Email Address"
               required>

        <input type="password"
               name="password"
               placeholder="Password"
               required>

        <select name="role">

            <option value="buyer">
                Buyer
            </option>

            <option value="seller">
                Seller
            </option>

        </select>

        <button type="submit">

            Register

        </button>

    </form>

</div>

</body>
</html>