<%@ include file = "common/header.jsp" %>

<h1>Welcome to the site!</h1>

<p>You can log in as:</p>
<table>
    <thead>
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Admin</td>
        <td>admin</td>
        <td>admin</td>
    </tr>
    <tr>
        <td>User</td>
        <td>user</td>
        <td>user</td>
    </tr>
    </tbody>
</table>

<p>Logged in users have access to the Private page.</p>
<p>Only users with <em>admin</em> role will see the <em>Adminstration</em> menu item.</p>
<%@ include file = "common/footer.jsp" %>
