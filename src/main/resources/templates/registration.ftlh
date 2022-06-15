<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<title>Registration </title>
Add new user
${message!}
<@l.login "/registration" />
</@c.page>