<div class="container">

    <h1>
        $Title
    </h1>

    <p>
        $Content
    </p>

    <section>
        <h2>Regions</h2>

        <div class="grid-style1 clearfix">
            <% loop $Regions %>
                <div class="item col-md-12">
                    <div class="image image-large">
                        <a href="#">
                            <span class="btn btn-default"><i class="fa fa-file-o"></i> Read More</span>
                        </a>
                        $Photo.Fit(720,255)
                    </div>
                    <div class="info-blog">
                        <h3>
                            <a href="#">$Title</a>
                        </h3>
                        <p>$Description</p>
                    </div>
                </div>
            <% end_loop %>
        </div>

    </section>

</div>
