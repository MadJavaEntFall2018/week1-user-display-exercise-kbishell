<%@include file="head.jsp"%>

<html><body>

<div class="container-fluid">
    <h2>Search Results:</h2>

    <table class="table">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>User Name</th>
            <th>Date Of Birth</th>
            <th>Age</th>
        </tr>

        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.userName}</td>
                <td>${user.dateOfBirth}</td>
                <td>${user.age}</td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
