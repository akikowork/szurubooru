<div class='content-wrapper tag-categories'>
    <form>
        <h1>Tag 分类</h1>
        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th class='name'>分类名称</th>
                        <th class='color'>CSS 颜色</th>
                        <th class='usages'>用法</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>

        <% if (ctx.canCreate) { %>
            <p><a href class='add'>新建一个分类</a></p>
        <% } %>

        <div class='messages'></div>

        <% if (ctx.canCreate || ctx.canEditName || ctx.canEditColor || ctx.canDelete) { %>
            <div class='buttons'>
                <input type='submit' class='save' value='保存更改'>
            </div>
        <% } %>
    </form>
</div>
