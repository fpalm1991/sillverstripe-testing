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
