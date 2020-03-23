<div class='post-container'></div>
<% if (ctx.featuredPost) { %>
    <aside>
        Featured&nbsp;post:&nbsp;<%= ctx.makePostLink(ctx.featuredPost.id, true) %>,<wbr>
        由 &nbsp;<%= ctx.makeUserLink(ctx.featuredPost.user) %>&nbsp;于&nbsp;<%= ctx.makeRelativeTime(ctx.featuredPost.creationTime) %> 投稿
    </aside>
<% } %>
