<main class="container">

    <div class="breadcrumb mb-2">$Breadcrumbs</div>

    <section>
        <h1 class="mb-1">
            $Title
        </h1>
        <p>Author $Reporter ($Date.Nice)</p>

        <% if $Teaser %>
            <p>$Teaser</p>
        <% else %>
            <p>$Content.FirstSenctence</p>
        <% end_if %>

        <div class="main-content">
            $Content
        </div>
    </section>
</main>
