<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Staff Registration | Rent A Car</title>

        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
        <%@ include file="header.jsp" %>  

        <section id="blog" class="container">
            <div class="center">
                <h1>Staff Registration Process</h1>
                <%@page import="rentalCar.RegisterStaff"%>
                <jsp:useBean id="bean" class="rentalCar.User"/>
                <jsp:setProperty property="*" name="bean"/>

                <%
                    String staffType = request.getParameter("staffType");
                    String result = RegisterStaff.registerStaff(bean, staffType);
                    
                    if (result.equals("exists")) { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <strong>Error:</strong> This email address is already registered!
                        </div>
                <%  } else if (result.equals("error")) { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <strong>Error:</strong> Registration failed. Please try again.
                        </div>
                <%  } else if (result.equals("exception")) { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <strong>Error:</strong> An error occurred during registration. Please try again.
                        </div>
                <%  } else { %>
                        <div class="alert alert-success" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong>Success:</strong> Staff member registered successfully!
                            <!-- <%
                                String[] ary = result.split("-");
                                session.setAttribute("userid", ary[0]);
                                session.setAttribute("name", ary[1]);
                                session.setAttribute("staffType", ary[2]);
                            %> -->
                            <jsp:forward page="view-user-accounts.jsp" />
                        </div>
                <%  } %>
            </div>
        </section><!--/#blog-->

        <%@ include file="footer.jsp" %>  

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html> 