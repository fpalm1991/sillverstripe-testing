<main class="container">

    <p>Homepage</p>

    <section>
        <h1 class="mb-1">
            $Title
        </h1>
        <div class="breadcrumb mb-2">$Breadcrumbs</div>
        <div class="main-content">
            $Content
        </div>
    </section>

    <section>
        <h2>Latest articles</h2>

        <% loop $LatestArticles(3) %>
            <h5>
                <a href="$Link">
                    $Title
                </a>
            </h5>
            <p>$Teaser</p>

            <li><i class="fa fa-tags"></i> $CategoriesList</li>

        <% end_loop %>
    </section>
</main>
