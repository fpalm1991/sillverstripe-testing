<main class="container">

    <div class="breadcrumb mb-2">$Breadcrumbs</div>

    <section>
        <h1 class="mb-1">
            $Title
        </h1>
        <p>Author $Reporter ($Date.Nice)</p>

        <div class="image">
            $Photo.ScaleWidth(750);
        </div>

        <% if $Teaser %>
            <p>$Teaser</p>
        <% else %>
            <p>$Content.FirstSenctence</p>
        <% end_if %>

        <div class="main-content">
            $Content
        </div>

        <li><i class="fa fa-tags"></i> $CategoriesList</li>

        <% if $Brochure %>
            <div class="row">
                <% with $Brochure %>
                    <div class="col-sm-12">
                        <a href="$URL" class="btn" target="_blank">
                            Download brochure ($Extension, $Size)
                        </a>
                    </div>
                <% end_with %>
            </div>
        <% end_if %>
    </section>
</main>
