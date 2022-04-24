<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter}">
                <button type="submit" class="btn-primary ml-3">Найти</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftlh"/>
    <#include "parts/messageList.ftlh"/>

</@c.page>
