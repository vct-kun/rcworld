<!DOCTYPE html>

<html lang="en">

<head>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
           $('#joinButton').click(function(){
              window.location.href = 'user';
           });
        });
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link href="/css/starter-template.css" rel="stylesheet" type="text/css">
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top"></nav>

<div class="container">

        <form role="form" method="post" action="/login" class="form-signin">
            <h2 class="form-signin-heading">Please sign in</h2>
                <label for="usr" class="sr-only">Email</label>
                <input type="text" class="form-control" id="usr" name="username" placeholder="Email address" required autofocus>
                <label for="password" class="sr-only">Password:</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            <button type="submit" class="btn btn-lg btn-primary btn-block">SignIn</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

</div><!-- /.container -->


</body>

</html>