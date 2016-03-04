<!DOCTYPE html>

<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link href="/css/starter-template.css" rel="stylesheet" type="text/css">
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
            <th>Nom</th>  <th>Ligue</th>
        </tr>
    <#list model["userList"] as user>
        <tr>
            <td>${user.name}</td> <td>${user.userInfo.league}</td>
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
        <div class="form-group">
            <label for="postalCode">Code postal:</label>
            <input type="text" class="form-control" id="postalCode" name="postalCode">
        </div>
        <button type="submit" class="btn btn-default">Enregistrer</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>

</body>

</html>