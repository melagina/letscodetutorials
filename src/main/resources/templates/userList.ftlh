<#import "parts/common.ftlh" as c>
<@c.page>
List of all users:
<table>
<tbody>
<thead>
<tr>
    <td>Name</td>
    <td>Role</td>
    <td></td>
</tr>
</thead>
<tbody>
<#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <td><a href="/user/${user.id}">edit</a></td>
</tr>
</#list>
</tbody>
</table>
</@c.page>