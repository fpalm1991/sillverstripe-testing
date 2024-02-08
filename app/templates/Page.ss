<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    $MetaTags
</head>
<body>

    <header class="container mb-2">
        <% include TopNav %>
    </header>

    $Layout

    <!--
    The Layout variable tells SilverStripe to look in the templates/{page namespace}/Layout
    directory for a template that matches this page type.
    -->

    <footer class="container">
        <% include Footer %>
    </footer>

</body>
</html>
