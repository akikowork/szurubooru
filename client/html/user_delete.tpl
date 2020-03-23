<div id='user-delete'>
    <form>
        <ul class='input'>
            <li>
                <%= ctx.makeCheckbox({
                    name: 'confirm-deletion',
                    text: '我确认我希望删除本账户。',
                    required: true,
                }) %>
            </li>
        </ul>

        <div class='messages'></div>
        <div class='buttons'>
            <input type='submit' value='!!删除账户!!'/>
        </div>
    </form>
</div>
