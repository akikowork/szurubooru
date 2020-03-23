<div class='content-wrapper tag-summary'>
    <section class='details'>
        <section>
            分类：
            <span class='<%= ctx.makeCssName(ctx.tag.category, 'tag') %>'><%- ctx.tag.category %></span>
        </section>

        <section>
        别名：<br/>
        <ul><!--
            --><% for (let name of ctx.tag.names.slice(1)) { %><!--
                --><li><%= ctx.makeTagLink(name, false, false, ctx.tag) %></li><!--
            --><% } %><!--
        --></ul>
        </section>

        <section>
        注释：<br/>
        <ul><!--
            --><% for (let tag of ctx.tag.implications) { %><!--
                --><li><%= ctx.makeTagLink(tag.names[0], false, false, tag) %></li><!--
            --><% } %><!--
        --></ul>
        </section>

        <section>
        建议：<br/>
        <ul><!--
            --><% for (let tag of ctx.tag.suggestions) { %><!--
                --><li><%= ctx.makeTagLink(tag.names[0], false, false, tag) %></li><!--
            --><% } %><!--
        --></ul>
        </section>
    </section>

    <section class='description'>
        <hr/>
        <%= ctx.makeMarkdown(ctx.tag.description || 'This tag has no description yet.') %>
        <p>这个 Tag 被使用过 <a href='<%- ctx.formatClientLink('posts', {query: ctx.escapeColons(ctx.tag.names[0])}) %>'><%- ctx.tag.postCount %> 次</a>。</p>
    </section>
</div>
