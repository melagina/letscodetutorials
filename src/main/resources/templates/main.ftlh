<#import "parts/common.ftlh" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" value="${filter?ifExists}" placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-2"> Search</button>
        </form>
    </div>
</div>

<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group">

        <form method="post" enctype="multipart/form-data">
            <div>
                <input type="text" name="text" placeholder="Введите сообщение"/>
            </div>
            <div>
                <input type="text" name="tag" placeholder="Тэг"/>
            </div>
            <div>
                <div class="custom-file">
                    <input type="file" name="file" id="customFile"/>
                    <label class="custom-file-label" for="customFile"> Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div>
                <button type="submit" class="btn btn-primary ml-2"> Добавить</button>
            </div>
        </form>
    </div>
</div>


<div class="card-colums">
<#list messages as message>
    <div class="card my-3" style="width: 18rem;">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
        </#if>
    </div>
    <div class="m-2">
        <span> ${message.text} </span>
        <i> ${message.tag} </i>
    </div>

    <div class="card-footer text-muted">
        ${message.authorName}
    </div>


    <#else>
    No messages
</#list>
</div>

</@c.page>