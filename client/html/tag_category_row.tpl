<% if (ctx.tagCategory.isDefault) { %><%
    %><tr data-category='<%- ctx.tagCategory.name %>' class='default'><%
%><% } else { %><%
    %><tr data-category='<%- ctx.tagCategory.name %>'><%
%><% } %>
    <td class='name'>
        <% if (ctx.canEditName) { %>
            <%= ctx.makeTextInput({value: ctx.tagCategory.name, required: true}) %>
        <% } else { %>
            <%- ctx.tagCategory.name %>
        <% } %>
    </td>
    <td class='color'>
        <% if (ctx.canEditColor) { %>
            <%= ctx.makeColorInput({value: ctx.tagCategory.color}) %>
        <% } else { %>
            <%- ctx.tagCategory.color %>
        <% } %>
    </td>
    <td class='usages'>
        <% if (ctx.tagCategory.name) { %>
            <a href='<%- ctx.formatClientLink('tags', {query: 'category:' + ctx.tagCategory.name}) %>'>
                <%- ctx.tagCategory.tagCount %>
            </a>
        <% } else { %>
            <%- ctx.tagCategory.tagCount %>
        <% } %>
    </td>
    <% if (ctx.canDelete) { %>
        <td class='remove'>
            <% if (ctx.tagCategory.tagCount) { %>
                <a class='inactive' title="不能删除正在使用的分类">移除</a>
            <% } else { %>
                <a href>移除</a>
            <% } %>
        </td>
    <% } %>
    <% if (ctx.canSetDefault) { %>
        <td class='set-default'>
            <a href>保留默认值</a>
        </td>
    <% } %>
</tr>
