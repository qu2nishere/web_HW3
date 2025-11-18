<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<c:import url="/header.html" />

<h1>Join our email list</h1>

<p>To join our email list, enter your name and email address below.</p>

<!-- Hiển thị message nếu có -->
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">

    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>

    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>

    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>
    
    <label class="pad_top">Date of Birth:</label>
    <input type="text" name="dateofbirth" required><br>
                
                
    <h2 class='blue'> How did you hear about us?</h2>
                
    <section class="nodown">
        <input type="radio" name="hear" id="search" value="Search">Search engine
    </section>

    <section class="nodown">
        <input type="radio" name="hear" id="word" value="Word"> Word of mouth
    </section>

    <section class="nodown">
        <input type="radio" name="hear" id="social" value="Social Media"> Social Media
    </section>

    <section class="nodown">
        <input type="radio" name="hear" id="other" value="Other"> Other
    </section>
                           
    <h2 class="blue">Would you like to recieve announcements about new CDs and special offers?</h2>
                

        <input type="checkbox" name="askmail" id="yes" value="yes"> YES, i'd like that
        <br><!-- comment -->
                
        <input type="checkbox" name="askmail" id="yesandmail" value="Yes and mail"> YES, please send me email announcement
        <br>
                
        <section class="nodown">
            <p class ="nodown">Please contact me by: </p>
            <select name="contactoptions" id="contactoptions">
                <option value="emailorpostal"> Email or postal mail</option>
                <option value="email"> Email only</option>
                <option value="postal"> Postal mail only</option>
            </select><br>
                    
        </section>
        <br>

    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left">
</form>

<c:import url="/footer.jsp" />
