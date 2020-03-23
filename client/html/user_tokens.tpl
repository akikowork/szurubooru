<div id='user-tokens'>
    <div class='messages'></div>
    <% if (ctx.tokens.length > 0) { %>
    <div class='token-flex-container'>
        <% _.each(ctx.tokens, function(token, index) { %>
        <div class='token-flex-row'>
            <div class='token-flex-column token-flex-labels'>
                <div class='token-flex-row'>令牌：</div>
                <div class='token-flex-row'>备注：</div>
                <div class='token-flex-row'>创建时间：</div>
                <div class='token-flex-row'>过期时间：</div>
                <div class='token-flex-row no-wrap'>上次使用时间：</div>
            </div>
            <div class='token-flex-column full-width'>
                <div class='token-flex-row'><%= token.token %></div>
                <div class='token-flex-row'>
                    <% if (token.note !== null) { %>
                        <%= token.note %>
                    <% } else { %>
                        无备注。
                    <% } %>
                    <a class='token-change-note' data-token-id='<%= index %>' href='#'>(change)</a>
                </div>
                <div class='token-flex-row'><%= ctx.makeRelativeTime(token.creationTime) %></div>
                <div class='token-flex-row'>
                    <% if (token.expirationTime) { %>
                        <%= ctx.makeRelativeTime(token.expirationTime) %>
                    <% } else { %>
                        永不过期。
                    <% } %>
                </div>
                <div class='token-flex-row'><%= ctx.makeRelativeTime(token.lastUsageTime) %></div>
            </div>
        </div>
        <div class='token-flex-row'>
            <div class='token-flex-column full-width'>
                <div class='token-flex-row'>
                    <form class='token' data-token-id='<%= index %>'>
                        <% if (token.isCurrentAuthToken) { %>
                            <input type='submit' value='移除并登出'
                                title='这个令牌用于本客户端登录，移除后您会被强制登出。'/>
                        <% } else { %>
                            <input type='submit' value='移除'/>
                        <% } %>
                    </form>
                </div>
            </div>
        </div>
        <hr/>
        <% }); %>
    </div>
    <% } else { %>
        <h2>无已注册令牌</h2>
    <% } %>
    <form id='create-token-form'>
        <ul class='input'>
            <li class='note'>
                <%= ctx.makeTextInput({
                    text: '备注',
                    id: 'note',
                }) %>
            </li>
            <li class='expirationTime'>
                <%= ctx.makeDateInput({
                    text: '过期时间',
                    id: 'expirationTime',
                }) %>
            </li>
        </ul>
        <div class='buttons'>
            <input type='submit' value='新建令牌'/>
        </div>
    </form>
</div>
