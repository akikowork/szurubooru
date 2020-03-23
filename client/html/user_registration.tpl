<div class='content-wrapper' id='user-registration'>
    <h1>注册</h1>
    <form autocomplete='off'>
        <input class='anticomplete' type='text' name='fakeuser'/>
        <input class='anticomplete' type='password' name='fakepass'/>

        <ul class='input'>
            <li>
                <%= ctx.makeTextInput({
                    text: '用户名',
                    name: 'name',
                    placeholder: 'A-Z、a-z、数字、_（下划线）、-（连字号）',
                    required: true,
                    pattern: ctx.userNamePattern,
                }) %>
            </li>
            <li>
                <%= ctx.makePasswordInput({
                    text: '密码',
                    name: 'password',
                    placeholder: '至少5位',
                    required: true,
                    pattern: ctx.passwordPattern,
                }) %>
            </li>
            <li>
                <%= ctx.makeEmailInput({
                    text: '邮箱',
                    name: 'email',
                    placeholder: '',
                }) %>
                <p class='hint'>
                    在您找回密码时使用并且用于显示您的 <a href='http://gravatar.com/'>Gravatar</a> 头像（推荐）。
                    留空以使用默认的 Gravatar 头像，稍后您可以在账户页面上传自定义头像。
                </p>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='创建账户'/>
        </div>
    </form>

    <div class='info'>
        <p>注册用户可以：</p>
        <ul>
            <li><i class='fa fa-upload'></i> 上传新稿件</li>
            <li><i class='fa fa-heart'></i> 喜欢并收藏稿件</li>
            <li><i class='fa fa-commenting-o'></i> 评论精美稿件</li>
            <li><i class='fa fa-star-half-o'></i> 顶/踩稿件与评论</li>
        </ul>
        <hr/>
        <p>创建账户代表您同意并愿意遵守我们的<a href='<%- ctx.formatClientLink('help', 'tos') %>'>服务条款</a>。</p>
    </div>
</div>
