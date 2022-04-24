<#import "parts/common.ftlh" as c>

<@c.page>
<h5>Hello, guest</h5>
<div>This is app</div>
    <#if user??>
    <#else>
        <a href="/login">Log in</a>
        <a href="/registration">Sign up</a>
    </#if>
</@c.page>