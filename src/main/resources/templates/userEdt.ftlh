<#import "parts/common.ftlh" as c>
<@c.page>
    User editor

    <form action="/user" method="post" xmlns="http://www.w3.org/1999/html">
        <input type="text" value="${user.id}" name="userId">
        <#list roles as role>
            <div class="">
                <label ><input type="checkbox" name="${role}"> </label>
            </div>
        </#list>
        <input type="text" value="${user.username}" name="userName">
        <input type="text" value="${_csrf.token}">
        <button type="submit"> save </button>
    </form>
</@c.page>

