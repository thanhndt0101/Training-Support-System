<%-- 
    Document   : subject_list
    Created on : Sep 21, 2022, 10:53:52 PM
    Author     : HAICAO
--%>
<a href="nbproject/project.xml"></a>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TSS - Training Support System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="assets/images/logo.png">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assets/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <link href="assets/css/newcss.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/sortcolumn.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/toggle_switch.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="assets/css/modal.css" rel="stylesheet" type="text/css"/>
        <style>
            .filter123{
                margin-right: 50px
            }

            .pagination{
                color: black;
                font-size: 50px;
                float: left;
                padding: 20px 30px;
                margin: 20px;
                text-decoration: none;
            }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
            }
            .pagination a:hover:not(.active){
                background-color: chocolate;
            }
            .topnav{
                overflow: hidden;
                background-color: #e9e9e9;
            }
            .topnav input[type = text]{
                margin-left: 100px;
                font-size: 20px;
            }
            * {
                margin: 0;
                padding: 0;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            body {
                background: #2d2c41;
                font-family: 'Open Sans', Arial, Helvetica, Sans-serif, Verdana, Tahoma;
            }

            ul {
                list-style-type: none;
            }

            a {
                color: #b63b4d;
                text-decoration: none;
            }

            /** =======================
             * Contenedor Principal
             ===========================*/


            h1 {
                color: #FFF;
                font-size: 24px;
                font-weight: 400;
                text-align: center;
                margin-top: 80px;
            }

            h1 a {
                color: #c12c42;
                font-size: 16px;
            }

            .accordion {
                width: 100%;
                max-width: 360px;
                margin: 30px auto 20px;
                background: #FFF;
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                border-radius: 4px;
            }

            .accordion .link {
                cursor: pointer;
                display: block;
                padding: 15px 15px 15px 42px;
                color: #4D4D4D;
                font-size: 14px;
                font-weight: 700;
                border-bottom: 1px solid #CCC;
                position: relative;
                -webkit-transition: all 0.4s ease;
                -o-transition: all 0.4s ease;
                transition: all 0.4s ease;
            }

            .accordion li:last-child .link {
                border-bottom: 0;
            }

            .accordion li i {
                position: absolute;
                top: 16px;
                left: 12px;
                font-size: 18px;
                color: #595959;
                -webkit-transition: all 0.4s ease;
                -o-transition: all 0.4s ease;
                transition: all 0.4s ease;
            }

            .accordion li i.fa-chevron-down {
                right: 12px;
                left: auto;
                font-size: 16px;
            }

            .accordion li.open .link {
                color: #b63b4d;
            }

            .accordion li.open i {
                color: #b63b4d;
            }

            .accordion li.open i.fa-chevron-down {
                -webkit-transform: rotate(180deg);
                -ms-transform: rotate(180deg);
                -o-transform: rotate(180deg);
                transform: rotate(180deg);
            }

            /**
             * Submenu
             -----------------------------*/


            .submenu {
                display: none;

                font-size: 14px;
            }

            .submenu li {
                border-bottom: 1px solid #4b4a5e;
            }

            .submenu a {
                display: block;
                text-decoration: none;
                color: black;
                padding: 12px;
                padding-left: 42px;
                -webkit-transition: all 0.25s ease;
                -o-transition: all 0.25s ease;
                transition: all 0.25s ease;
            }

            .submenu a:hover {
                background: #b63b4d;
                color: #FFF;
            }

            body {
                background: #1f1f1f;
            }

            .site-navigation {
                display: block;
                font-family: 'Titillium Web', sans-serif;
                font-size: 10px;
                font-weight: bold;
                margin: 1px;
            }

            .site-navigation ul {
                background: #3498DB;
                list-style: none;
                margin: 0;
                padding-left: 0;
            }

            .site-navigation li {
                color: #fff;
                background: #3498DB;
                display: block;
                float: left;
                margin: 0 2px 0 0;
                padding: 2px;
                position: relative;
                text-decoration: none;
                text-transform: uppercase;
            }

            .site-navigation li a {
                color: #fff;
                text-decoration: none;
                display: block;
            }

            .site-navigation li:hover {
                @include transition(background, 0.2s);
                background: #52a6df;
                cursor: pointer;
            }

            .site-navigation ul li ul {
                background: #52a6df;
                visibility: hidden;
                float: left;
                min-width: 150px;
                position: absolute;
                transition: visibility 0.65s ease-in;
                margin-top:12px;
                left: 0;
                z-index: 999;
            }

            .site-navigation ul li:hover > ul,
            .site-navigation ul li ul:hover {
                visibility: visible;
            }

            .site-navigation ul li ul li {
                clear: both;
                padding: 5px 5px 5px 5px;
                width: 100%;
            }

            .site-navigation ul li ul li:hover {
                background: #74b7e4;
            }



        </style>   
        <!-- JS -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-notify@0.5.4/dist/simple-notify.min.js"></script>

        <script>
            function f1() {

                var e = document.getElementById('subject_id');
                var value = e.value;
                $.ajax({
                    url: 'list_of_team',
                    type: "POST",
                    data: {
                        subject_id: value
                    },
                    success: function (data) {
                        var content = document.getElementById('ass');
                        content.innerHTML = data;

                    }
                });

            }
            $(function () {
                var Accordion = function (el, multiple) {
                    this.el = el || {};
                    this.multiple = multiple || false;

                    // Variables privadas
                    var links = this.el.find('.link');
                    // Evento
                    links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
                }

                Accordion.prototype.dropdown = function (e) {
                    var $el = e.data.el;
                    $this = $(this),
                            $next = $this.next();

                    $next.slideToggle();
                    $this.parent().toggleClass('open');

                    if (!e.data.multiple) {
                        $el.find('.submenu').not($next).slideUp().parent().removeClass('open');
                    }
                    ;
                }

                var accordion = new Accordion($('#accordion'), false);
            });
            function change_confirm(id, team) {
                var status = document.getElementById("status_check_" + id + "_" + team);
                if (confirm("Press OK to change this subject status!") === true) {
                    document.getElementById("status_form_" + id + "_" + team).submit();
                }
            }
            function changeTeam(user_id, team_cc) {
                var content = document.getElementById("user_change");
                content.innerHTML = "<input type=\"hidden\" name=\"user_id\" value=" + user_id + ">";


            }
        </script>
        <script src="assets/js/confirm_subject.js" type="text/javascript"></script>
        <script src="assets/js/pagger_subject.js" type="text/javascript"></script>

    </head>

    <body>
        <input type="hidden" name="user_change_id" value=""/>
        <div id="demo-modal" class="modal">
            <div class="modal__content" id="model_content">
                <h2>Change Group</h2>
                <form action="change_team" method="get">
                    <p>
                        Choose group to change:
                    </p>
                    <br/>
                    <div id="user_change"></div>

                    
                    <input name="changemile" type="hidden" value="${requestScope.milestone}"/>


                    <select name="teamchange">
                        <c:forEach items="${t.getAllTeamByMilestone(milestone)}" var ="c">
                            <option value="${c.team_id}">${c.team_code}</option>
                        </c:forEach>
                    </select>
                    <div class="modal__footer">
                        <button type="button" onclick="modal_close()" class="button-10">Cancel</button>
                        <button type="submit"  class="button-10">Confirm</button>
                    </div>
                </form>
                <a href="#" class="modal__close">&times;</a>
            </div>
        </div>
        <div id="demo-modal1" class="modal">
            <div class="modal__content" id="model_content">
                <h6>Do you want to remove all groups</h6>
                <form action="change_team" method="post">





                    <input name="changemile" type="hidden" value="${requestScope.milestone}"/>
                    <input name="class" type="hidden" value="${requestScope.class_id}"/>



                    <div class="modal__footer">
                        <button type="button" onclick="modal_close()" class="button-10">Cancel</button>
                        <button type="submit"  class="button-10">Confirm</button>
                    </div>
                </form>
                <a href="#" class="modal__close">&times;</a>
            </div>
        </div>
        <div id="demo-modal2" class="modal">
            <div class="modal__content" id="model_content">
                <h2>Change Group</h2>
                <form action="create_by_upload" method="get">
                    <p>
                        Choose group to remove:
                    </p>
                    <br/>
                    

                    
                    <input name="changemile" type="hidden" value="${requestScope.milestone}"/>


                    <select name="teamchange">
                        <c:forEach items="${t.getAllTeamByMilestone(milestone)}" var ="c">
                           
                                <option value="${c.team_id}">${c.team_code}</option>
                            
                            
                        </c:forEach>
                    </select>
                    <div class="modal__footer">
                        <button type="button" onclick="modal_close()" class="button-10">Cancel</button>
                        <button type="submit"  class="button-10">Confirm</button>
                    </div>
                </form>
                <a href="#" class="modal__close">&times;</a>
            </div>
        </div>

        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->

        <div class="page-wrapper doctris-theme toggled">

            <!-- sidebar-wrapper  -->
            <jsp:include page="../navbar.jsp"/>
            <!-- sidebar-wrapper  -->

            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <div class="top-header">
                    <div class="header-bar d-flex justify-content-between border-bottom">
                        <div class="d-flex align-items-center">
                            <a href="#" class="logo-icon">
                                <img src="assets/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assets/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assets/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <!-- OLD SEARCH BAR -->

                            <!-- OLD SEARCH BAR -->
                        </div>

                        <!-- USER PROFILE -->
                        <ul class="list-unstyled mb-0">
                            <jsp:include page="../profilelogo.jsp"/>
                        </ul>
                        <!-- USER PROFILE -->
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0"><a href="list_ass">Team List</a></h5>


                        </div>
                        <!-- SEARCH BAR -->
                        <form action="" method="get">



                            <!-- SEARCH BAR -->

                            <select id="subject_id" onchange="f1()" style="height:35px;margin-right: 20px;width: 150px;text-align: center;border-radius: 10px" name="class_id">

                                <c:forEach items="${requestScope.listClass}" var="c">

                                    <option <c:if test="${c.class_id== class_id}">selected=""</c:if> value="${c.class_id}" > ${c.class_name}</option>
                                </c:forEach>
                            </select>
                            <select id="ass" style="height:35px;margin-right: 20px;width: 150px;text-align: center;border-radius: 10px" name="milestone">

                                <c:forEach items="${requestScope.listMileStone}" var="c">

                                    <option <c:if test="${c.milestone_id== milestone}">selected=""</c:if> value="${c.milestone_id}"> ${c.tittle}</option>
                                </c:forEach>
                            </select>
                            <select style="height:35px;margin-right: 20px;width: 150px;text-align: center;border-radius: 10px" name = "status" >
                                <option value="">All status</option>
                                <option  <c:if test="${status == '1'}">selected=""</c:if>   value="1" > Active</option>
                                <option   <c:if test="${status == '0'}">selected=""</c:if>  value="0" > Inactive</option>

                                </select>

                                <input style="height:35px;margin-right: 2px;width: 170px;text-align: center;border-radius: 10px"   type = "text" value="" name ="team_code"/>


                                <button style="margin-left:20px;margin-right: 20px" type="submit" class="btn btn-primary">Search</button> 
                                <button class="btn btn-primary" onclick="location.href = 'add_team'" type="button">ADD</button>

                            </form>

                            <div class="row">
                                <div class="col-12 mt-4">

                                <c:if test="${requestScope.listTeam.size()==0}">
                                    <h6 style="text-align:center">Trainee have not been group  <a href="list_team?class=${requestScope.class_id}&milestone=${requestScope.milestone}">Create Group</a></h6>

                                </c:if> 
                                <c:if test="${requestScope.listTeam.size()>0}">
                                    <!-- Contenedor -->
                                    <h6 style="text-align:center">This milestone has groups already  <a href="#demo-modal1">Reset Groups</a> <a href="#demo-modal2">Remove Groups</a></h6>
                                    <ul style="margin-left:10px" id="accordion" class="accordion">
                                        <c:forEach  begin="0" end="${requestScope.listTeam.size()-1}" step="1"  var="i" >
                                            <li>

                                                <div style="width:800px;" class="link"><i class="fa fa-database"></i>${requestScope.listTeam.get(i).getTeam_code()}   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp ${requestScope.listTeam.get(i).getTopic_name()} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <c:if test="${requestScope.listTeam.get(i).isStatus()==true}">Active</c:if> <c:if test="${requestScope.listTeam.get(i).isStatus()==false}">Inactive</c:if> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <a   href="team_detail?team_id=${requestScope.listTeam.get(i).getTeam_id()}&milestone=${requestScope.milestone}" class="btn btn-icon btn-pills btn-soft-success" ><i class="uil uil-pen"></i></a><i class="fa fa-chevron-down"></i></div>
                                                    <ul style="width:700px" class="submenu">

                                                    <c:forEach items="${t.getTeamMemberByTeam(listTeam.get(i).getTeam_id())}" var ="c">
                                                        <nav style="font-size:10px;" id="navigation" class="site-navigation" role="navigation">
                                                            <ul class="menu">

                                                                <li style="padding-left:1px;" class="menu-item"><a href="#">Action</a>
                                                                    <ul class="dropdown">
                                                                        <c:if test="${c.isIs_leader()==false}">
                                                                            <li class="menu-item sub-menu"><a href="list_of_team?leader=${c.user.user_id}&teamlead=${c.team.team_id}">Set as leader</a></li>
                                                                            </c:if> 

                                                                        <li onclick="changeTeam(${c.user.user_id})" class="menu-item sub-menu"><a  href="#demo-modal">Change group</a></li>


                                                                    </ul>
                                                                </li>

                                                            </ul>
                                                        </nav>
                                                        <li style="width:770px"><a href="#"> ${c.user.user_id}&nbsp &nbsp  ${c.user.full_name}&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp ${t.getEmailByUserID(c.user.user_id)} &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <c:if test="${c.isIs_active()==true}">Active</c:if>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <c:if test="${c.isIs_leader()==true}">Leader</c:if> </a></li>
                                                        </c:forEach>

                                                </ul>

                                            </li>
                                        </c:forEach>

                                    </ul>
                                </c:if>
                                <c:set var ="page" value="${requestScope.page}"/>
                                <div class="pagination">
                                    <c:forEach begin="${1}" end ="${requestScope.num}" var = "i">

                                        <li class="page-item <c:if test="${i==page}">active</c:if>
                                            "><a class="page-link" href="list_of_team?page=${i}&class_id=${class_id}&status=${status}&team_code=${team_code}">${i}</a></li> 
                                        </c:forEach>
                                </div>
                            </div>
                        </div><!--end row-->





                        <div class="row">
                            <div class="col-12 mt-4">

                            </div>
                        </div><!--end row-->



                        <div class="row text-center">
                            <!-- PAGINATION START -->
                            <div class="col-12 mt-4">
                                <div class="d-md-flex align-items-center text-center justify-content-between">
                                    <ul id="only-pagger" class="pagination justify-content-center mb-0 mt-3 mt-sm-0">

                                    </ul>
                                </div>
                            </div><!--end col-->
                            <!-- PAGINATION END -->
                        </div><!--end row-->

                    </div>
                </div><!--end container-->

                <!-- Footer Start -->

                <!-- End -->
            </main>
            <!--End page-content" -->
        </div>
        <!-- page-wrapper -->


        <!-- javascript -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assets/js/simplebar.min.js"></script>
        <!-- Icons -->
        <script src="assets/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets/js/app.js"></script>
        <script src="assets/js/sortcolumn.js" type="text/javascript"></script>

    </body>




</html>
