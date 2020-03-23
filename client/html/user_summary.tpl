<div id='user-summary'>
    <%= ctx.makeThumbnail(ctx.user.avatarUrl) %>
    <ul class='basic-info'>
        <li>注册时间：<%= ctx.makeRelativeTime(ctx.user.creationTime) %></li>
        <li>上次登录时间：<%= ctx.makeRelativeTime(ctx.user.lastLoginTime) %></li>
        <li>用户组：<%- ctx.user.rankName.toLowerCase() %></li>
    </ul>

    <div>
        <nav>
            <p><strong>快捷链接</strong></p>
            <ul>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'submit:' + ctx.user.name}) %>'><%- ctx.user.uploadedPostCount %> 个稿件</a></li>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'fav:' + ctx.user.name}) %>'><%- ctx.user.favoritePostCount %> 次喜欢</a></li>
                <li><a href='<%- ctx.formatClientLink('posts', {query: 'comment:' + ctx.user.name}) %>'><%- ctx.user.commentCount %> 条评论</a></li>
            </ul>
        </nav>

        <% if (ctx.isLoggedIn) { %>
            <nav>
                <p><strong>仅对自己可见</strong></p>
                <ul>
                    <li><a href='<%- ctx.formatClientLink('posts', {query: 'special:liked'}) %>'><%- ctx.user.likedPostCount %> 个喜欢的稿件</a></li>
                    <li><a href='<%- ctx.formatClientLink('posts', {query: 'special:disliked'}) %>'><%- ctx.user.dislikedPostCount %> 个不喜欢的稿件</a></li>
                </ul>
            </nav>
        <% } %>
    </div>
</div>
