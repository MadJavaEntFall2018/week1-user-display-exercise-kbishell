<%@include file="head.jsp"%>
<html>
<body>
<h2>User Display Exercise - Week 1</h2>
<%--<a href = "searchUser">Go to the User Search</a>--%>
    <form action="searchUser" method="get" class="form-inline">
        <input type="text" id="search" placeholder="Enter Last Name" name="search">
        <button type="submit" name="submit">Submit</button>
    </form>
</body>
</html>