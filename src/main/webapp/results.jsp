<%@include file="head.jsp"%>

<html><body>

<%--TODO Pretty up the results!--%>
<div class="container-fluid">
    <h2>Search Results: </h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>User Name</th>
            <th>ID</th>
            <th>Age</th>
        </tr>

        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.userName}</td>
                <td>${user.id}</td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
