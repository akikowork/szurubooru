<div class='tag-delete'>
    <form>
        <p>这个 Tag 被使用过 <a href='<%- ctx.formatClientLink('posts', {query: ctx.escapeColons(ctx.tag.names[0])}) %>'><%- ctx.tag.postCount %> 次</a>。</p>

        <ul class='input'>
            <li>
                <%= ctx.makeCheckbox({
                    name: '确认删除',
                    text: '我确定要删除这个 Tag。',
                    required: true,
                }) %>
            </li>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='删除 Tag'/>
        </div>
    </form>
</div>
