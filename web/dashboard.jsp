<%@ page import="Controller.Staff" %>
<%@ page import="DataAccess.StaffDA" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
    String sDate = sdf.format(date);
    
//    if (session.getAttribute("SM_APPS_USERNAME") == null) {
//        response.sendRedirect("index.jsp");
//    }
%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>UMP e-Leave</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/simple-sidebar.css" rel="stylesheet">
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Sidebar -->
            <div id="sidebar-wrapper">
                <ul class="sidebar-nav">
                    <li class="sidebar-brand">
                        <a href="#">
                            
                        </a>
                    </li>
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="#">Leave Calendar</a>
                    </li>
                    <li>
                        <a href="#">Apply</a>
                    </li>
                    <li>
                        <a href="#">Application Status</a>
                    </li>
                    <li>
                        <a href="#">Pending Approval</a>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <img src="images/logo.png" width="180" height="88" alt="logo"/>
                            <h1 style="font-family: fantasy; font-size: 40px">E-Leave</h1>
                            <img src="images/stripes.png" alt="stripes" class="img-responsive"/>
                            <p><%=sDate%></p>
                            <hr/>
<!--                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Menu Toggle Script -->
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>

    </body>

</html>

