<%--
Author: Justin Hoang
Date: 2022-Mar-21-Mon
Time: 6:09 PM
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html class = " ">
<head>
    <%--META--%>
    <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
    <meta name = "viewport" content = "width=device-width, initial-scale=1">
    <meta name = "msapplication-TileColor" content = "#ffffff">
    <meta name = "msapplication-TileImage"
          content = "resources/img/144.png">
    <meta name = "theme-color" content = "#ffffff">
    <%--CSS--%>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/css/style.css"
          id = "main-style"
          media = "screen,projection"/>
    <%--MATERIALIZE CSS--%>
    <link type = "text/css" rel = "stylesheet"
          href = "https://fonts.googleapis.com/icon?family=Material+Icons">
    <link type = "text/css" rel = "stylesheet"
          href = "resources/css/materialize.css"
          media = "screen,projection"/>
    <link type = "text/css" rel = "stylesheet"
          href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"
          media = "screen,projection">
    <%--DATATABLES--%>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/css/jquery.dataTables.min.css"
          media = "screen,projection"/>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/css/dataTables.material.min.css"
          media = "screen,projection"/>
    <%--MATERIAL DESIGN--%>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/fonts/mdi/materialdesignicons.min.css"
          media = "screen,projection"/>
    <link type = "text/css" rel = "stylesheet"
          href = "https://fonts.googleapis.com/icon?family=Material+Icons"
          media = "screen,projection"/>
    <%--OTHER--%>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/css/preloader.css"
          media = "screen,projection"/>
    <link type = "text/css" rel = "stylesheet"
          href = "resources/plugins/perfect-scrollbar/perfect-scrollbar.css"
          media = "screen,projection"/>

    <%--TITLE--%>
    <title>Learn Fast: Courses Listing</title>
</head>
<body class = "html" data-header = "colored" data-footer = "light"
      data-header_align = "center" data-menu_type = "left" data-menu = "colored"
      data-menu_icons = "on" data-footer_type = "left" data-site_mode = "light"
      data-footer_menu = "show" data-footer_menu_style = "colored">

<%--TOP NAV--%>
<div class = "fixed-header">
    <div class = "containerx">
        <nav class = "materialize-red lighten-2" id = "nav"
             role = "navigation">
            <div class = "navbar-fixed">

                <ul class = "left show-on-small">
                    <li><a id = "logo-container"
                           href = "${pageContext.request.contextPath}/welcome"
                           class = "left brand-logo show-on-small">Learn
                                                                   Fast</a></li>
                </ul>
                <ul id = "nav-mobile" class = "right hide-on-small-only">
                    <li><a href = "${pageContext.request.contextPath}/welcome">Home</a></li>
                    <li><a href = "${pageContext.request.contextPath}/user/usersRead">User Listing</a></li>
                    <li><a href = "${pageContext.request.contextPath}/course/coursesRead">Course Listing</a></li>
                    <li><a href = "${pageContext.request.contextPath}/activity-generator">Activity Generator</a></li>
                    <li><a href = "${pageContext.request.contextPath}/programming-quotes">Programming Quotes</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<%--TOP NAV END--%>


<ul id = "slide-nav" class = "sidenav sidemenu">
    <li class = "menu-close"><i class = "mdi mdi-equal-box"></i></li>

    <li class = "menulinks">
        <ul class = "collapsible">

            <li class = "sh-wrap">
                <div class = "subheader">Navigation</div>
            </li>

            <li class = "lvl1 ">
                <div class = " waves-effect ">
                    <a href = "${pageContext.request.contextPath}/welcome">
                        <i class = "mdi mdi-home-outline"></i>
                        <span class = "title">Home</span>
                    </a>
                </div>
            </li>

            <li class = "lvl1 ">
                <div class = " waves-effect ">
                    <a href = "${pageContext.request.contextPath}/user/usersRead">
                        <i class = "mdi mdi-account-search"></i>
                        <span class = "title">User Listing</span>
                    </a>
                </div>
            </li>

            <li class = "lvl1 ">
                <div class = " waves-effect ">
                    <a href = "${pageContext.request.contextPath}/course/coursesRead">
                        <i class = "mdi mdi-school"></i>
                        <span class = "title">Course Listing</span>
                    </a>
                </div>
            </li>

            <li class = "lvl1 ">
                <div class = " waves-effect ">
                    <a href = "${pageContext.request.contextPath}/group/groupsRead">
                        <i class = "mdi mdi-account-group"></i>
                        <span class = "title">Group Listing</span>
                    </a>
                </div>
            </li>

            <li class = "sep-wrap">
                <div class = "divider"></div>
            </li>
            <li class = "sh-wrap">
                <div class = "subheader">Contact</div>
            </li>

            <li class = "lvl1 ">
                <div class = "waves-effect ">
                    <a href = "tel:+1 234 567 890">
                        <i class = "mdi mdi-cellphone-basic"></i>
                        <span class = "title">Phone</span> </a>
                </div>
            </li>

            <li class = "lvl1 ">
                <div class = "waves-effect ">
                    <a href = "mailto:jhoang1@madisoncollege.edu">
                        <i class = "mdi mdi-email-outline"></i>
                        <span class = "title">Email</span> </a>
                </div>
            </li>

            <li class = "lvl1 ">
                <div class = "waves-effect ">
                    <a href = "sms:+1 234 567 890">
                        <i class = "mdi mdi-message-text-outline"></i>
                        <span class = "title">Message</span> </a>
                </div>
            </li>

            <li class = "sep-wrap">
                <div class = "divider"></div>
            </li>

            <li class = "lvl1 ">
                <div class = "waves-effect "><a href = "#"
                                                data-target = "slide-settings"
                                                class = "sidenav-trigger"><i
                        class = "mdi mdi-settings-outline"></i><span
                        class = "title">Settings</span> </a>
                </div>
            </li>

            </li>
        </ul>
    </li>

    <li class = "copy-spacer"></li>
    <li class = "copy-wrap">
        <div class = "copyright">&copy; 2022 Justin Hoang, All rights
                                 reserved.
        </div>
</ul>

<div class = "content" id = "content">
    <div class = "section no-pad-bot" id = "index-banner">
        <div class = "container">
            <br><br>
            <h1 class = "header center">Course Listing</h1>
            <div class = "row center">
                <h5 class = "header col s12 light"></h5>
            </div>
            <br><br>
        </div>
    </div>
</div>

<hr/>

<div class = "container">
    <section class = "section">
        <a href = "courseCreateForm" class = "green btn">Create
                                                         Course</a>
        <br/><br/>
        <table id = "dataTable"
               class = "display nowrap"
               style = "width:100%">
            <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Section #</th>
                <th>Format</th>
                <th>Mentor</th>
                <th>Section Status</th>
                <th>Meets</th>
                <th>Dates</th>
                <th>Description</th>
                <th>Update || Delete</th>
            </tr>
            </thead>
            <tbody>
            <%--TRAVERSE COURSES--%>
            <c:forEach var = "tmpCourse"
                       items = "${courses}">
                <%--UPDATE--%>
                <c:url var = "updateLink"
                       value = "/course/courseUpdateForm">
                    <c:param name = "id"
                             value = "${tmpCourse.id}"/>
                </c:url>
                <%--DELETE--%>
                <c:url var = "deleteLink"
                       value = "/course/courseDelete">
                    <c:param name = "id"
                             value = "${tmpCourse.id}"/>
                </c:url>
                <tr>
                    <td>${tmpCourse.id}</td>
                    <td>${tmpCourse.title}</td>
                    <td>${tmpCourse.section}</td>
                    <td>${tmpCourse.format}</td>
                    <td>${tmpCourse.mentor}</td>
                    <td>${tmpCourse.sectionStatus}</td>
                    <td>${tmpCourse.meets}</td>
                    <td>${tmpCourse.dates}</td>
                    <td>${tmpCourse.description}</td>
                    <td>
                            <%--UPDATE--%>
                        <a href = "${updateLink}"
                           class = "green btn white-text">Update</a>
                        || <a href = "${deleteLink}"
                              class = "materialize-red btn white-text"
                              onclick = "if (!(confirm('Do you intend to delete course?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</div>


<footer class = "page-footer">
    <div class = "container footer-content">
        <div class = "row">
            <div class = "">
                <h5 class = "logo">Learn Fast</h5>
                <p class = "text">A modern social connection and learning
                                  management system for mentors and mentees.</p>
            </div>
            <div class = "link-wrap">
                <ul class = "link-ul">
                    <li><a class = "white-text" href = "#!"><i
                            class = "mdi mdi-phone"></i> +1 234 567 890</a>
                    </li>
                    <li><a class = "white-text" href = "#!"><i
                            class = "mdi mdi-email"></i>
                        jhoang1@madisoncollege.edu</a>
                    </li>
                    <li><a class = "white-text" href = "#!"><i
                            class = "mdi mdi-map-marker"></i> 123 Street,
                                                              Madison, WI,
                                                              USA</a></li>
                </ul>
                <ul class = "social-wrap">
                    <li class = "social">
                        <a class = "" href = "#!"><i
                                class = "mdi mdi-facebook"></i></a>
                        <a class = "" href = "#!"><i
                                class = "mdi mdi-twitter"></i></a>
                        <a class = "" href = "#!"><i
                                class = "mdi mdi-dribbble"></i></a>
                        <a class = "" href = "#!"><i
                                class = "mdi mdi-google-plus"></i></a>
                        <a class = "" href = "#!"><i
                                class = "mdi mdi-linkedin"></i></a>

                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class = "footer-copyright">
        <div class = "container">
            Built with ❤️ & 🍜 by: Justin Hoang
        </div>
    </div>
</footer>


<%--JAVASCRIPT--%>
<script type = "text/javascript"
        src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type = "text/javascript"
        src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<%--FRAMEWORK--%>
<script type = "text/javascript"
        src = "resources/js/jquery-3.6.0.min.js"></script>
<script type = "text/javascript"
        src = "resources/js/materialize.js"></script>
<script type = "text/javascript"
        src = "resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<%--TEMPLATE--%>
<script type = "text/javascript" src = "resources/js/init.js"></script>
<script type = "text/javascript" src = "resources/js/settings.js"></script>
<%--    <script type = "text/javascript" src = "resources/js/scripts.js"></script>--%>
<%--DATATABLES--%>
<script type = "text/javascript"
        src = "resources/js/jquery.dataTables.min.js"></script>
<script type = "text/javascript"
        src = "resources/js/dataTables.material.min.js"></script>
<script type = "text/javascript"
        src = "https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTable').DataTable({
            "scrollY": 500,
            "scrollX": true,
            "paging": true
        });
    });

    if ("serviceWorker" in navigator) {
        if (navigator.serviceWorker.controller) {
            console.log("[PWA Builder] active service worker found, no need to register");
        } else {
            navigator.serviceWorker
                .register("pwabuilder-sw.js", {
                    scope: "./"
                })
                .then(function (reg) {
                    console.log("[PWA Builder] Service worker has been registered for scope: " + reg.scope);
                });
        }
    }
    document.addEventListener("DOMContentLoaded", function () {
        $('.preloader-background').delay(10).fadeOut('slow');
    });
</script>
<%--JAVASCRIPT END--%>
</body>
</html>
