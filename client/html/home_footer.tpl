<ul>
    <li>共 <%- ctx.postCount %> 稿件</li><span class='sep'>
    </span><li><%= ctx.makeFileSize(ctx.diskUsage) %></li><span class='sep'>
    </span><li>版本 <a class='version' href='https://github.com/rr-/szurubooru/commits/master'><%- ctx.version %></a> 重构于 <%= ctx.makeRelativeTime(ctx.buildDate) %></li><span class='sep'>
    </span><% if (ctx.canListSnapshots) { %><li><a href='<%- ctx.formatClientLink('history') %>'>操作历史</a></li><span class='sep'>
    </span><% } %>
</ul>
