<div class='content-wrapper tag-edit'>
    <form>
        <ul class='input'>
            <li class='names'>
                <% if (ctx.canEditNames) { %>
                    <%= ctx.makeTextInput({
                        text: '标签名称',
                        value: ctx.tag.names.join(' '),
                        required: true,
                    }) %>
                <% } %>
            </li>
            <li class='category'>
                <% if (ctx.canEditCategory) { %>
                    <%= ctx.makeSelect({
                        text: '分类',
                        keyValues: ctx.categories,
                        selectedKey: ctx.tag.category,
                        required: true,
                    }) %>
                <% } %>
            </li>
            <li class='implications'>
                <% if (ctx.canEditImplications) { %>
                    <%= ctx.makeTextInput({text: '注释'}) %>
                <% } %>
            </li>
            <li class='suggestions'>
                <% if (ctx.canEditSuggestions) { %>
                    <%= ctx.makeTextInput({text: '建议'}) %>
                <% } %>
            </li>
            <li class='description'>
                <% if (ctx.canEditDescription) { %>
                    <%= ctx.makeTextarea({
                        text: '备注',
                        value: ctx.tag.description,
                    }) %>
                <% } %>
            </li>
        </ul>

        <% if (ctx.canEditAnything) { %>
            <div class='messages'></div>

            <div class='buttons'>
                <input type='submit' class='save' value='保存更改'>
            </div>
        <% } %>
    </form>
</div>
