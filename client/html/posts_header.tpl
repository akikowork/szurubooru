<div class='post-list-header'><%
    %><form class='horizontal search'><%
        %><%= ctx.makeTextInput({text: '搜索结果', id: 'search-text', name: 'search-text', value: ctx.parameters.query}) %><%
        %><wbr/><%
        %><input class='mousetrap' type='submit' value='搜索'/><%
        %><wbr/><%
        %><% if (ctx.enableSafety) { %><%
            %><input data-safety=safe type='button' class='mousetrap safety safety-safe <%- ctx.settings.listPosts.safe ? '' : 'disabled' %>'/><%
            %><input data-safety=sketchy type='button' class='mousetrap safety safety-sketchy <%- ctx.settings.listPosts.sketchy ? '' : 'disabled' %>'/><%
            %><input data-safety=unsafe type='button' class='mousetrap safety safety-unsafe <%- ctx.settings.listPosts.unsafe ? '' : 'disabled' %>'/><%
        %><% } %><%
        %><wbr/><%
        %><a class='mousetrap button append' href='<%- ctx.formatClientLink('help', 'search', 'posts') %>'>语法帮助</a><%
    %></form><%
    %><% if (ctx.canBulkEditTags) { %><%
        %><form class='horizontal bulk-edit bulk-edit-tags'><%
            %><span class='append hint'>输入 Tag</span><%
            %><a href class='mousetrap button append open'>批量 Tag</a><%
            %><wbr/><%
            %><%= ctx.makeTextInput({name: 'tag', value: ctx.parameters.tag, placeholder:'用空格分隔多个 Tag'}) %><%
            %><input class='mousetrap start' type='submit' value='选定图像'/><%
            %><a href class='mousetrap button append close'>取消</a><%
        %></form><%
    %><% } %><%
    %><% if (ctx.enableSafety && ctx.canBulkEditSafety) { %><%
        %><form class='horizontal bulk-edit bulk-edit-safety'><%
            %><a href class='mousetrap button append open'>批量修改安全性</a><%
            %><a href class='mousetrap button append close'>取消</a><%
        %></form><%
    %><% } %><%
%></div>
