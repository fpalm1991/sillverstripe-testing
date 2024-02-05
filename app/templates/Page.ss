<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    $MetaTags
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>

    <header class="container mb-2">
        <nav class="main-navigation">
            <ul class="main-navigation__list mb-1">
            <% loop $Menu(1) %>
                <li class="main-navigation__list-item">
                    <a class="$LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a>
                </li>
            <% end_loop %>
            </ul>

            <% if $Menu(2) %>
                <ul class="main-navigation__list subnav">
                    <% loop $Menu(2) %>
                        <li class="main-navigation__list-item">
                            <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                        </li>
                    <% end_loop %>
                </ul>

            <% end_if %>
        </nav>
    </header>

    <main class="container">
        <section>
            <h1 class="mb-1">
                $Title
            </h1>
            <div class="breadcrumb mb-2">$Breadcrumbs</div>
            <div class="main-content">
                $Content
            </div>
        </section>
    </main>

    <footer class="container"></footer>

</body>
</html>
