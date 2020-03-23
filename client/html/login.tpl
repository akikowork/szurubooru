<div class='content-wrapper' id='login'>
    <h1>登录</h1>
    <form>
        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: '用户名',
                    name: 'name',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: '密码',
                    name: 'password',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeCheckbox({
                    text: '保持登录状态',
                    name: 'remember-user',
                }) %>
            </li>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='登录'/>
            <a class='append' href='<%- ctx.formatClientLink('password-reset') %>'>忘记密码？</a>
        </div>
    </form>
</div>
