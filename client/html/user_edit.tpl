<div id='user-edit'>
    <form>
        <input class='anticomplete' type='text' name='fakeuser'/>
        <input class='anticomplete' type='password' name='fakepass'/>

        <ul class='input'>
            <% if (ctx.canEditName) { %>
                <li>
                    <%= ctx.makeTextInput({
                        text: '用户名',
                        name: 'name',
                        value: ctx.user.name,
                        pattern: ctx.userNamePattern,
                    }) %>
                </li>
            <% } %>

            <% if (ctx.canEditPassword) { %>
                <li>
                    <%= ctx.makePasswordInput({
                        text: '密码',
                        name: 'password',
                        placeholder: '不做更改请留空',
                        pattern: ctx.passwordPattern,
                    }) %>
                </li>
            <% } %>

            <% if (ctx.canEditEmail) { %>
                <li>
                    <%= ctx.makeEmailInput({
                        text: '邮箱',
                        name: 'email',
                        value: ctx.user.email,
                    }) %>
                </li>
            <% } %>

            <% if (ctx.canEditRank) { %>
                <li>
                    <%= ctx.makeSelect({
                        text: '用户组',
                        name: 'rank',
                        keyValues: ctx.ranks,
                        selectedKey: ctx.user.rank,
                    }) %>
                </li>
            <% } %>

            <% if (ctx.canEditAvatar) { %>
                <li class='avatar'>
                    <label>头像</label>
                    <div id='avatar-content'></div>
                    <div id='avatar-radio'>
                        <%= ctx.makeRadio({
                            text: 'Gravatar',
                            name: 'avatar-style',
                            value: 'gravatar',
                            selectedValue: ctx.user.avatarStyle,
                        }) %>

                        <%= ctx.makeRadio({
                            text: '自定义头像',
                            name: 'avatar-style',
                            value: 'manual',
                            selectedValue: ctx.user.avatarStyle,
                        }) %>
                    </div>
                </li>
            <% } %>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='保存'/>
        </div>
    </form>
</div>
