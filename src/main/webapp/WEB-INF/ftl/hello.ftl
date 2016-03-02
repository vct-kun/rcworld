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
    <link href="/starter-template.css" rel="stylesheet" type="text/css">
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top"></nav>

<div class="container">

<div class="starter-template">
    <h1>Bootstrap starter template</h1>
    <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>

    <div><input id="joinButton" type="button" value="Rejoindre la communauté"></div>
</div>

</div><!-- /.container -->


</body>

</html>