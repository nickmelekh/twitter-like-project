<#include "security.ftlh">
<#import "pager.ftlh" as p>

<@p.pager url page />

<div class="card-columns">
    <#list page.content as message>
        <div class="card my-2">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top"/>
            </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
                <div class="card-footer text-muted">
                    <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <#if message.author.id == currentUserId>
                        <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>
<@p.pager url page />