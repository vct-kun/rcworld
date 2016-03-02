<!DOCTYPE html>

<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link href="/starter-template.css" rel="stylesheet" type="text/css">
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <table class="datatable">
        <tr>
            <th>Name</th>  <th>Greetings</th>
        </tr>
    <#list model["helloList"] as hello>
        <tr>
            <td>${hello.name}</td> <td>${hello.greetings}</td>
        </tr>
    </#list>
    </table>
</div>

<div class="container">
    <form role="form" method="post" action="add.html">
        <div class="form-group">
            <label for="usr">Nom:</label>
            <input type="text" class="form-control" id="usr" name="name">
        </div>
        <button type="submit" class="btn btn-default">Enregistrer</button>
    </form>
</div>

</body>

</html>