<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP - Thank You</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <section class="user-info">
        <p><label>First Name:</label> <span>${user.firstName}</span></p>
        <p><label>Last Name:</label> <span>${user.lastName}</span></p>
        <p><label>Email:</label> <span>${user.email}</span></p>
        <p><label>Date of Birth:</label> <span>${user.dateOfBirth}</span></p>
        <p><label>Heard from:</label> <span>${user.hear}</span></p>
        <p><label>Updates:</label> 
            <span>
                <c:choose>
                    <c:when test="${user.askMail eq 'yes'}">Yes </c:when>
                    <c:otherwise>No</c:otherwise>
                </c:choose>
            </span>
        </p>

        <p><label>Contact via:</label> 
            <span>
                <c:choose>
                    <c:when test="${user.contactOption eq 'emailorpostal'}">Email or postal</c:when>
                    <c:when test="${user.contactOption eq 'email'}">Email</c:when>
                    <c:when test="${user.contactOption eq 'postal'}">Postal</c:when>
                    <c:otherwise>Not selected</c:otherwise>
                </c:choose>
            </span>
        </p>

    </section>

    <p>To enter another email address, click on the Back 
       button in your browser or the Return button shown below.</p>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</body>
</html>
