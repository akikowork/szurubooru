<p>搜索查询是由用空格分隔的标记构建的。每个标签可以是以下形式:</p>

<table>
    <thead>
        <tr>
            <th>语法</th>
            <th>标签类型</th>
            <th>描述</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>&lt;value&gt;</code></td>
            <td>anonymous tokens</td>
            <td>used for basic filters</td>
        </tr>
        <tr>
            <td><code>&lt;key&gt;:&lt;value&gt;</code></td>
            <td>named tokens</td>
            <td>used for advanced filters</td>
        </tr>
        <tr>
            <td><code>sort:&lt;style&gt;</code></td>
            <td>sort style tokens</td>
            <td>used to sort the results</td>
        </tr>
        <tr>
            <td><code>special:&lt;value&gt;</code></td>
            <td>special tokens</td>
            <td>filters usually tied to the logged in user</td>
        </tr>
    </tbody>
</table>

<p>大多数匿名和命名标记都支持范围值和组合值，可采取以下形式:</p>

<table>
    <tbody>
        <tr>
            <td><code>a,b,c</code></td>
            <td>会显示出满足 <code>a</code>,
            <code>b</code> 或 <code>c</code>其中之一的内容.</td>
        </tr>
        <tr>
            <td><code>1..</code></td>
            <td>会显示大于等于1的内容.</td>
        </tr>
        <tr>
            <td><code>..4</code></td>
            <td>将显示最多等于4的内容.</td>
        </tr>
        <tr>
            <td><code>1..4</code></td>
            <td>将显示等于 1, 2, 3 或 4 的内容.</td>
        </tr>
    </tbody>
</table>

<p>范围值也可以通过附加 <code>-min</code> 或
<code>-max</code> 来实现, 例如:
<code>score-min:1</code>.</p>

<p>日期/时间值可以采用以下形式:</p>

<ul>
    <li><code>today</code></li>
    <li><code>yesterday</code></li>
    <li><code>&lt;year&gt;</code></li>
    <li><code>&lt;year&gt;-&lt;month&gt;</code></li>
    <li><code>&lt;year&gt;-&lt;month&gt;-&lt;day&gt;</code></li>
</ul>

<p>有些字段，比如用户名，可以使用通配符 (<code>*</code>).</p>

<p>所有的标记都可以通过在它们前面加上前缀来否定 <code>-</code>.</p>

<p>排序样式标签值可以附加 <code>,asc</code> 或
<code>,desc</code> 来控制排序方向，也可以通过否定整个标签控制排序方向.</p>

<p>您可以转义特殊字符，比如 <code>:</code> 和 <code>-</code>
通过在它们前面加上反斜杠: <code>\\</code>.</p>

<h1>范例</h1>

<p>以下列问题搜索图片:</p>

<pre><code>sea -fav-count:8.. type:swf uploader:Pirate</code></pre>

<p>将会显示被打上sea tag的flash文件,并且最多被7个用户'喜欢', 由用户Pirate上传.</p>

<p>以 <code>re:zero</code> 标记搜索将会显示错误</p>

<p>以 <code>re\:zero</code> 标记搜索将会显示tag为 
<code>re:zero</code> 的图片.</p>
