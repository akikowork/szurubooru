<div class='content-wrapper transparent' id='home'>
    <div class='messages'></div>
    <header>
        <h1><%- ctx.name %></h1>
    </header>
    <% if (ctx.canListPosts) { %>
        <form class='horizontal'>
            <%= ctx.makeTextInput({name: 'search-text', placeholder: '搜索 Tag'}) %>
            <input type='submit' value='搜索'/>
            <span class=sep>或</span>
            <a href='<%- ctx.formatClientLink('posts') %>'>浏览所有图片</a>
        </form>
    <% } %>
    <div class='post-info-container'></div>
    <footer class='footer-container'></footer>
</div>
