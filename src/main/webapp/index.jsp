<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<c:import url="views/fragments/header.jspf"/>
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_menu">

        <ul>
            <li><a href="index.jsp" class="current">Blog</a></li>
            <li><a href="views/contact.jsp">Profile</a></li>
        </ul>

    </div> <!-- end of templatemo_menu -->

    <div id="templatemo_left_column">

        <div class="cleaner_h40"></div>
        <div id="templatemo_sidebar">

            <h4>Articles</h4>
            <ul class="templatemo_list">
                <c:forEach var="article" items="${articles}">
                    <li><a href="article?id=${article.id}">${article.title}</a></li>

                </c:forEach>
            </ul>

        </div> <!-- end of templatemo_sidebar -->

    </div> <!-- end of templatemo_left_column -->

    <div id="templatemo_right_column">

        <div id="templatemo_main">

            <c:forEach var="article" items="${articles}">
                <div class="post_section">

                    <h2>${article.title}</h2>

                        ${article.date} | <strong>Author:</strong> John | <strong>Category:</strong> <a href="#">Freebies</a>

                    <img src="views/css/images/templatemo_image_01.jpg" alt="image 1"/>

                    <p>${fn:substring(article.text,0,300)}</p>
                    <a href="article?id=${article.id}">Читать...</a>

                </div>
            </c:forEach>
        </div>
        <div class="cleaner"></div>
    </div>
    <!-- end of templatemo_main -->
    <div class="cleaner_h20"></div>

    <c:import url="views/fragments/footer.jspf"/>

    <div class="cleaner"></div>
</div> <!-- end of warpper -->

</body>
</html>


