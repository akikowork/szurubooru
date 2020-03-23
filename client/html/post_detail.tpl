<div class='content-wrapper' id='post'>
    <h1>稿件 #<%- ctx.post.id %></h1>
    <nav class='buttons'><!--
        --><ul><!--
            --><li><a href='<%- ctx.formatClientLink('post', ctx.post.id) %>'><i class='fa fa-reply'></i> 主视图</a></li><!--
            --><% if (ctx.canMerge) { %><!--
                --><li data-name='merge'><a href='<%- ctx.formatClientLink('post', ctx.post.id, 'merge') %>'>合并 &hellip;</a></li><!--
            --><% } %><!--
        --></ul><!--
    --></nav>
    <div class='post-content-holder'></div>
</div>
