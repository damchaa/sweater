<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
ADD NEW USER

${message}

<@l.login "/registration" />
</@c.page>