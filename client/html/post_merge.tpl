<div class='post-merge'>
    <form>
        <ul class='input'>
            <li class='post-mirror'>
                <div class='left-post-container'></div>
                <div class='right-post-container'></div>
            </li>

            <li>
                <p>各稿件的 Tag、关联、票数、喜欢数和评论将会被合并。
				所有其他的配置需要另行调整。</p>

                <%= ctx.makeCheckbox({required: true, text: '我确认我想要合并这些稿件。'}) %>
            </li>
        </ul>

        <div class='messages'></div>

        <div class='buttons'>
            <input type='submit' value='合并稿件'/>
        </div>
    </form>
</div>
