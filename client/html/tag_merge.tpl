<div class='tag-merge'>
    <form>
        <ul class='input'>
            <li class='target'>
                <%= ctx.makeTextInput({name: 'target-tag', required: true, text: '目标 tag', pattern: ctx.tagNamePattern}) %>
            </li>

            <li>
                <p>各 Tag 在投稿、建议和注释中的使用次数将会被合并。
				但分类需要另行调整。</p>

                <%= ctx.makeCheckbox({name: 'alias', text: '让这个 Tag 成为目标 Tag 的一个别名。'}) %>

                <%= ctx.makeCheckbox({required: true, text: '我确认我想要合并这个 Tag。'}) %>
            </li>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='合并 Tag'/>
        </div>
    </form>
</div>
