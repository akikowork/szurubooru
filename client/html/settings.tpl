<div class='content-wrapper' id='settings'>
    <form>
        <strong>浏览设置</strong>
<p>这些设置被保存到浏览器的本地存储中，并不会上传到用户帐户设置中，因此它们不适用于其他设备或浏览器。</p>
        <ul class='input'>
            <li>
                <%= ctx.makeCheckbox({
                    text: "启用快捷键 <a class='append icon' href='" + ctx.formatClientLink('help', 'keyboard') + "'><i class='fa fa-question-circle-o'></i></a>",
                    name: 'keyboard-shortcuts',
                    checked: ctx.browsingSettings.keyboardShortcuts,
                }) %>
            </li>

            <li>
                <%= ctx.makeNumericInput({
                    text: '每页显示的图片数量',
                    name: 'posts-per-page',
                    checked: ctx.browsingSettings.postCount,
                    value: ctx.browsingSettings.postsPerPage,
                    min: 10,
                    max: 100,
                }) %>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '放大过小的图片',
                    name: 'upscale-small-posts',
                    checked: ctx.browsingSettings.upscaleSmallPosts}) %>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '启用无尽滚动浏览模式',
                    name: 'endless-scroll',
                    checked: ctx.browsingSettings.endlessScroll,
                }) %>
                <p class='hint'>不使用分页导航，而是平滑地滚动内容。</p>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '启用透明度网格',
                    name: 'transparency-grid',
                    checked: ctx.browsingSettings.transparencyGrid,
                }) %>
                <p class='hint'>显示背景透明的图片后的方格图案。</p>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '显示 Tag 推荐',
                    name: 'tag-suggestions',
                    checked: ctx.browsingSettings.tagSuggestions,
                }) %>
                <p class='hint'>在编辑表单中显示带有建议标记的弹出窗口。</p>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '自动播放动态图',
                    name: 'autoplay-videos',
                    checked: ctx.browsingSettings.autoplayVideos,
                }) %>
            </li>

            <li>
                <%= ctx.makeCheckbox({
                    text: '将下划线显示为标记中的空格',
                    name: 'tag-underscores-as-spaces',
                    checked: ctx.browsingSettings.tagUnderscoresAsSpaces,
                }) %>
                <p class='hint'>显示所有下划线，使它们看上去是空格。这只是一个视觉上的变化，在搜索或编辑标签时仍然需要使用下划线。</p>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='保存更改'/>
        </div>
    </form>
</div>
