<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<c:import url="views/fragmants/header.jsp"/>
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

            <h4>Categories</h4>
            <ul class="templatemo_list">
                <li><a href="#" target="_parent">Curabitur sed</a></li>
                <li><a href="#" target="_parent">Praesent adipiscing</a></li>
                <li><a href="#" target="_parent">Duis sed justo</a></li>
                <li><a href="#" target="_parent">Mauris vulputate</a></li>
                <li><a href="#">Nam auctor</a></li>
                <li><a href="#">Aliquam quam</a></li>
            </ul>

        </div> <!-- end of templatemo_sidebar -->

    </div> <!-- end of templatemo_left_column -->

    <div id="templatemo_right_column">

        <div id="templatemo_main">

            <div class="post_section">
                <c:import url="views/components/post.jsp"/>

            </div>

            <div class="post_section">
                <c:import url="views/components/post.jsp"/>
            </div>
        </div>
        <div class="cleaner"></div>
    </div>
    <!-- end of templatemo_main -->
    <div class="cleaner_h20"></div>

    <c:import url="views/fragmants/footer.jsp"/>

    <div class="cleaner"></div>
</div> <!-- end of warpper -->

</body>
</html>