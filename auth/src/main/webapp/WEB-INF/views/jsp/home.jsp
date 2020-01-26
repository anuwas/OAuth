<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <spring:url value="/resources/static/css/bootstrap.css" var="bootstrapCss" />
	<spring:url value="/resources/static/css/jumbotron-narrow.css" var="jumbotronCss" />
	<spring:url value="/resources/static/css/home.css" var="homeCss" />
	<spring:url value="/resources/static/css/jquery.growl.css" var="glowCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${jumbotronCss}" rel="stylesheet" />
<link href="${homeCss}" rel="stylesheet" />
<link href="${glowCss}" rel="stylesheet" />
    
    
    
   
    <script src="http://code.jquery.com/jquery.js"></script>
    <spring:url value="/resources/static/js/jquery.growl.js" var="glowJs" />
    <script src="${glowJs}"></script>
</head>

<body>

<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li class="active" id="home"><a href="#">Home</a></li>
                <li id="qsLogoutBtn"><a href="#">Logout</a></li>
            </ul>
        </nav>
        <h3 class="text-muted">Amar Home page</h3>
    </div>
    <div class="jumbotron">
        <h3>Eta Usreid : -  ${userId}!</h3>
    </div>
    <div class="row marketing">
        <div class="col-lg-6">
            <h4>amar text</h4>
            <p>amar text.</p>

            <h4>amar text</h4>
            <p>amar text</p>
        </div>

        <div class="col-lg-6">
            <h4>amar text</h4>
            <p>amar text</p>

            <h4>amar text</h4>
            <p>amar text</p>
        </div>
    </div>

    <footer class="footer">
        <p> &copy;</p>
    </footer>

</div>

<script type="text/javascript">
    $(function () {
        $.growl({title: "Welcome  ${userId}", message: "We hope you enjoy using this site!"});
    });
    $("#qsLogoutBtn").click(function(e) {
        e.preventDefault();
        $("#home").removeClass("active");
        $("#password-login").removeClass("active");
        $("#qsLogoutBtn").addClass("active");
        // assumes we are not part of SSO so just logout of local session
        window.location = "http://localhost:8080/auth/logout";
    });
</script>

</body>
</html>
