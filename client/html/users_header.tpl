<div class='user-list-header'>
    <form class='horizontal'>
        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({text: '搜索结果', id: 'search-text', name: 'search-text', value: ctx.parameters.query}) %>
            </li>
        </ul>

        <div class='buttons'>
            <input type='submit' value='搜索'/>
            <a class='append' href='<%- ctx.formatClientLink('help', 'search', 'users') %>'>语法帮助</a>
        </div>
    </form>
</div>
