<div class='comment-container'>
    <div class='avatar'>
        <% if (ctx.user && ctx.user.name && ctx.canViewUsers) { %>
            <a href='<%- ctx.formatClientLink('user', ctx.user.name) %>'>
        <% } %>

        <%= ctx.makeThumbnail(ctx.user ? ctx.user.avatarUrl : null) %>

        <% if (ctx.user && ctx.user.name && ctx.canViewUsers) { %>
            </a>
        <% } %>
    </div>

    <div class='comment'>
        <header>
            <nav class='edit tabs'>
                <ul>
                    <li class='edit'><a href>撰写</a></li>
                    <li class='preview'><a href>预览</a></li>
                </ul>
            </nav>

            <nav class='readonly'><%
                %><strong><span class='nickname'><%
                    %><% if (ctx.user && ctx.user.name && ctx.canViewUsers) { %><%
                        %><a href='<%- ctx.formatClientLink('user', ctx.user.name) %>'><%
                    %><% } %><%

                    %><%- ctx.user ? ctx.user.name : '已删除的用户' %><%

                    %><% if (ctx.user && ctx.user.name && ctx.canViewUsers) { %><%
                        %></a><%
                    %><% } %><%
                %></span></strong>

                <span class='date'><%
                    %>commented <%= ctx.makeRelativeTime(ctx.comment ? ctx.comment.creationTime : null) %><%
                %></span><%

                %><wbr><%

                %><span class='score-container'></span><%

                %><% if (ctx.canEditComment || ctx.canDeleteComment) { %><%
                    %><span class='action-container'><%
                        %><% if (ctx.canEditComment) { %><%
                            %><a href class='edit'><%
                                %><i class='fa fa-pencil'></i>&nbsp;编辑<%
                            %></a><%
                        %><% } %><%

                        %><% if (ctx.canDeleteComment) { %><%
                            %><a href class='delete'><%
                                %><i class='fa fa-remove'></i>&nbsp;删除<%
                            %></a><%
                        %><% } %><%
                    %></span><%
                %><% } %><%
            %></nav><%
        %></header>

        <form class='body'>
            <div class='keep-height'>
                <div class='tab preview'>
                    <div class='comment-content'>
                        <%= ctx.makeMarkdown(ctx.comment ? ctx.comment.text : '') %>
                    </div>
                </div>

                <div class='tab edit'>
                    <textarea required minlength=1><%- ctx.comment ? ctx.comment.text : '' %></textarea>
                </div>
            </div>

            <nav class='edit'>
                <div class='messages'></div>

                <input type='submit' class='save-changes' value='保存'/>
                <% if (!ctx.onlyEditing) { %>
                    <input type='button' class='cancel-editing discourage' value='取消'/>
                <% } %>
            </div>
        </form>
    </div>
</div>
