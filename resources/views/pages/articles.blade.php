<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View articales</title>
</head>
<body>
<ul>
    @foreach($articles as $article)
        <li>Name:{{$article->name}} | Author: {{$article->author}}</li>
        @endforeach
</ul>
</body>
</html>