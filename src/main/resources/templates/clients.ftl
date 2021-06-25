<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Rooms</title>
</head>
<body>

<table class="table table-dark table-hover table table-bordered border-success" align="center" style="width: 1000px;">
    <tr align="center">
        <th>Code</th>
        <th>FitstName</th>
        <th>LastName</th>
        <th>FatherName</th>
        <th>Address</th>
        <th>FoneNumber</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <#list clients as client>
        <tr align="center">
            <td>${client.code}</td>
            <td>${client.firstname}</td>
            <td>${client.lastname}</td>
            <td>${client.fathersname}</td>
            <td>${client.address}</td>
            <td>${client.fonenumber}</td>
            <td><a href="/ui/rooms/delete/${client.code}"><button type="button" class="btn btn-danger">Delete</button> </a></td>
            <td><a href="/ui/rooms/update/${client.code}"><button type="button" class="btn btn-success">Update</button> </a></td>
        </tr>
    </#list>
</table>

<center><a href="/index.html"> <button type="button" class="btn btn-primary"><h4>Menu</h4></button></a></center>
<br>
<center><a href="/ui/rooms/create"> <button><h2> Create </h2></button></a></center>

</body>
</html>