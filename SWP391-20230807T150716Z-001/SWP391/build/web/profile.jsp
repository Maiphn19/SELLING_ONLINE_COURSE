<%-- 
    Document   : profile
    Created on : May 22, 2023, 5:42:49 PM
    Author     : msi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.*"%>
<%@page import="dal.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="assets/css/profile.css"/>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <div class="container rounded bg-white mt-5 mb-5">
            <form action="profile" method="POST" class="p-3 py-5" enctype ="multipart/form-data">
                <div class="row">                
                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <c:if test="${account.getAvatar() == null}">
                                <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                            </c:if>
                            <c:if test="${account.getAvatar() != null}">
                                <img class="rounded-circle mt-5" style="width: 150px; height: 150px; border-radius: 50%; object-fit: cover;" src="${account.getAvatar()}">
                            </c:if>
                            <span class="font-weight-bold">${account.getFull_name()}</span>
                            <span class="text-black-50">${account.getMail()}</span>  <br>                      
                            Change avatar:<input type="file" style="color: white; padding-left: 200px" name="image" accept="image/*" />
                        </div>
                    </div>
                    <div class="col-md-6 border-right">

                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Settings</h4>
                        </div>

                        <div class="row mt-2">
                            <div class="col-md-6"><label class="labels">Name</label><input type="text" class="form-control" placeholder="Name" name="name" value="${account.getFull_name()}" required></div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12"><label class="labels">Phone Number</label><input type="text" class="form-control" placeholder="Enter phone number" name="phone" value="${account.getPhone()}" required></div>
                            <div  style="color:red"> ${messErrPhone} </div>
                            <div class="col-md-12"><label class="labels">Date of Birth</label><input type="date" class="form-control" name="birth" value="${account.getBirth()}"required></div>

                            <c:if test="${account.roleID == 2}" >
                                <div class="col-md-12"><label class="labels">Skill</label><input type="text" class="form-control" placeholder="Enter Your Skill"  name="skill" value="${account.getSkill()}" required></div>
                                <div class="col-md-12"><label class="labels">Jobs</label><input id="date" type="text" class="form-control" placeholder="Enter Your Job" name="job" value="${account.getJob()}" required></div>
                                </c:if>
                                <c:if test="${account.roleID == 3}" >      
                                <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="Enter Your Address" name="address" value="${account.getAddress()}" required></div>
                                </c:if>
                        </div>
                        <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                        <div style="color:#5fcf80"><strong>${messUpdate}</strong></div>                                   

                    </div>                   
                </div>
            </form>
        </div>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/validationDate.js"></script>
</html>
