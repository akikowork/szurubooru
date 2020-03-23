<div class='file-dropper-holder'>
    <input type='file' id='<%- ctx.id %>'/>
    <label class='file-dropper' for='<%- ctx.id %>' role='button'>
        将文件拖动到这里!
        <br/>
        或者 点击此处
        <% if (ctx.extraText) { %>
            <br/>
            <small><%= ctx.extraText %></small>
        <% } %>
    </label>
    <% if (ctx.allowUrls) { %>
        <div class='url-holder'>
            <input type='text' name='url' placeholder='<%- ctx.urlPlaceholder %>'/>
            <% if (ctx.lock) { %>
                <button>确认</button>
            <% } else { %>
                <button>添加URL地址</button>
            <% } %>
        </div>
    <% } %>
</div>
