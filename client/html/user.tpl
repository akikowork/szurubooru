<div class='content-wrapper' id='user'>
    <h1><%- ctx.user.name %></h1>
    <nav class='buttons'><!--
        --><ul><!--
            --><li data-name='summary'><a href='<%- ctx.formatClientLink('user', ctx.user.name) %>'>概况</a></li><!--
            --><% if (ctx.canEditAnything) { %><!--
                --><li data-name='edit'><a href='<%- ctx.formatClientLink('user', ctx.user.name, 'edit') %>'>设置</a></li><!--
            --><% } %><!--
            --><% if (ctx.canListTokens) { %><!--
                --><li data-name='list-tokens'><a href='<%- ctx.formatClientLink('user', ctx.user.name, 'list-tokens') %>'>登录令牌</a></li><!--
            --><% } %><!--
            --><% if (ctx.canDelete) { %><!--
                --><li data-name='delete'><a href='<%- ctx.formatClientLink('user', ctx.user.name, 'delete') %>'>删除账户</a></li><!--
            --><% } %><!--
        --></ul><!--
    --></nav>
    <div id='user-content-holder'></div>
</div>
