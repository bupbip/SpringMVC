<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
Login page
<@l.login "/login" />
<div>
    <form action="/registration">
        <button>Registration</button>
    </form>
</div>
</@c.page>