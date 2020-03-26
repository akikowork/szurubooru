<div id='post-upload'>
    <form>
        <div class='dropper-container'></div>

        <div class='control-strip'>
            <input type='submit' value='上传全部' class='submit'/>

            <span class='skip-duplicates'>
                <%= ctx.makeCheckbox({
                    text: '跳过重复项',
                    name: 'skip-duplicates',
                    checked: true,
                }) %>
				<span class='skip-similar'>
				<%= ctx.makeCheckbox({
                    text: '跳过相似项 !慎用!',
                    name: 'skip-similar',
                    checked: false,
                }) %>
				</span>
            </span>
            <input type='button' value='取消' class='cancel'/>
        </div>

        <div class='messages'></div>

        <ul class='uploadables-container'></ul>
    </form>
</div>
