<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div class="">

    <@l.logout />
    <span><a href="/user">User list</a></span>
</div>
    <div class="">
        <form method="post" >
            <input type="text" name="text" placeholder="введите текст">
            <input type="text" name="tag" placeholder="введите тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">ADD THS</button>
        </form>
    </div>
    <div class="">Список message</div>
    <form action="/main" method="get">

        <input type="text" name="filter" value="${filter}">

        <button>
            SEARCH THAT!
        </button>
    </form>
    <#list messages as message>
    <div class="">
        <span>${message.id}</span>
        <span>${message.text}</span>
        <span>${message.tag}</span>
        <span>${message.authorName}</span>
    </div>
    </#list>
</@c.page>