<div class='edit-sidebar'>
    <form autocomplete='off'>
        <input type='submit' value='保存' class='submit'/>

        <div class='messages'></div>

        <% if (ctx.enableSafety && ctx.canEditPostSafety) { %>
            <section class='safety'>
                <label>安全性</label>
                <div class='radio-wrapper'>
                    <%= ctx.makeRadio({
                        name: 'safety',
                        class: 'safety-safe',
                        value: 'safe',
                        selectedValue: ctx.post.safety,
                        text: '安全'}) %>
                    <%= ctx.makeRadio({
                        name: 'safety',
                        class: 'safety-sketchy',
                        value: 'sketchy',
                        selectedValue: ctx.post.safety,
                        text: '不确定'}) %>
                    <%= ctx.makeRadio({
                        name: 'safety',
                        value: 'unsafe',
                        selectedValue: ctx.post.safety,
                        class: 'safety-unsafe',
                        text: '不安全'}) %>
                </div>
            </section>
        <% } %>

        <% if (ctx.canEditPostRelations) { %>
            <section class='relations'>
                <%= ctx.makeTextInput({
                    text: '关联',
                    name: 'relations',
                    placeholder: '用空格分隔各关联 ID',
                    pattern: '^[0-9 ]*$',
                    value: ctx.post.relations.map(rel => rel.id).join(' '),
                }) %>
            </section>
        <% } %>

        <% if (ctx.canEditPostFlags && ctx.post.type === 'video') { %>
            <section class='flags'>
                <label>Miscellaneous</label>
                <%= ctx.makeCheckbox({
                    text: '循环视频',
                    name: 'loop',
                    checked: ctx.post.flags.includes('loop'),
                }) %>
                <%= ctx.makeCheckbox({
                    text: '声音',
                    name: 'sound',
                    checked: ctx.post.flags.includes('sound'),
                }) %>
            </section>
        <% } %>

        <% if (ctx.canEditPostSource) { %>
            <section class='post-source'>
                <%= ctx.makeTextarea({
                    text: '来源',
                    value: ctx.post.source,
                }) %>
            </section>
        <% } %>

        <% if (ctx.canEditPostTags) { %>
            <section class='tags'>
                <%= ctx.makeTextInput({}) %>
            </section>
        <% } %>

        <% if (ctx.canEditPostNotes) { %>
            <section class='notes'>
                <a href class='add'>添加备注</a>
                <%= ctx.makeTextarea({disabled: true, text: '内容（支持 Markdown）', rows: '8'}) %>
                <a href class='delete inactive'>删除选择的备注</a>
                <% if (ctx.hasClipboard) { %>
                    <br/>
                    <a href class='copy'>将备注导出到剪切板</a>
                    <br/>
                    <a href class='paste'>从剪切板导入备注</a>
                <% } %>
            </section>
        <% } %>

        <% if (ctx.canEditPostContent) { %>
            <section class='post-content'>
                <label>内容</label>
                <div class='dropper-container'></div>
            </section>
        <% } %>

        <% if (ctx.canEditPostThumbnail) { %>
            <section class='post-thumbnail'>
                <label>缩略图</label>
                <div class='dropper-container'></div>
                <a href>丢弃自定义缩略图</a>
            </section>
        <% } %>

        <% if (ctx.canFeaturePosts || ctx.canDeletePosts || ctx.canMergePosts) { %>
            <section class='management'>
                <ul>
                    <% if (ctx.canFeaturePosts) { %>
                        <li><a href class='feature'>设置为主页聚焦稿件</a></li>
                    <% } %>
                    <% if (ctx.canMergePosts) { %>
                        <li><a href class='merge'>合并其他稿件</a></li>
                    <% } %>
                    <% if (ctx.canDeletePosts) { %>
                        <li><a href class='delete'>删除稿件</a></li>
                    <% } %>
                </ul>
            </section>
        <% } %>
    </form>
</div>
