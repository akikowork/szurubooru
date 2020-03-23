<div class='content-wrapper' id='tag'>
    <h1><%- ctx.getPrettyTagName(ctx.tag.names[0]) %></h1>
    <nav class='buttons'><!--
        --><ul><!--
            --><li data-name='summary'><a href='<%- ctx.formatClientLink('tag', ctx.tag.names[0]) %>'>概要</a></li><!--
            --><% if (ctx.canEditAnything) { %><!--
                --><li data-name='edit'><a href='<%- ctx.formatClientLink('tag', ctx.tag.names[0], 'edit') %>'>编辑</a></li><!--
            --><% } %><!--
            --><% if (ctx.canMerge) { %><!--
                --><li data-name='merge'><a href='<%- ctx.formatClientLink('tag', ctx.tag.names[0], 'merge') %>'>合并到 &hellip;</a></li><!--
            --><% } %><!--
            --><% if (ctx.canDelete) { %><!--
                --><li data-name='delete'><a href='<%- ctx.formatClientLink('tag', ctx.tag.names[0], 'delete') %>'>删除</a></li><!--
            --><% } %><!--
        --></ul><!--
    --></nav>
    <div class='tag-content-holder'></div>
</div>
