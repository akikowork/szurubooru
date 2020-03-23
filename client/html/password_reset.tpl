<div class='content-wrapper' id='password-reset'>
    <h1>Password reset</h1>
    <% if (ctx.canSendMails) { %>
        <form autocomplete='off'>
            <ul class='input'>
                <li>
                    <%= ctx.makeTextInput({
                        text: '用户名或邮箱',
                        name: 'user-name',
                        required: true,
                    }) %>
                </li>
            </ul>

            <p><small>点击确定按钮将会向您预先设定的邮箱发送一封带有重置密码的链接的邮件。点击链接将会为您的账户重置一个随机密码，建议您之后及时更改密码。</small></p>

            <div class='messages'></div>
            <div class='buttons'>
                <input type='submit' value='确定'/>
            </div>
        </form>
    <% } else { %>
        <p>我们暂不支持自动重置密码服务。</p>
        <% if (ctx.contactEmail) { %>
            <p>请向 <a href='mailto:<%- ctx.contactEmail %>'><%- ctx.contactEmail %></a> 发送邮件帮助您重置密码。</p>
        <% } %>
    <% } %>
</div>
