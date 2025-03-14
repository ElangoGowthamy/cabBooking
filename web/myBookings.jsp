<%@page import="rentalCar.BookingDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rentalCar.RentalRequest"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> My Bookings | Rent A Car</title>

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
                <h2>My Bookings</h2>
            </div>
            <div class="blog">
                <div class="row">
                    <div class="col-md-12">
                        <%@page import="rentalCar.BookingDao"%>
                        <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
                        <jsp:useBean id="bean" class="rentalCar.RentalRequest"/>
                        <%-- Create an object of LoginBean  --%>
                        <jsp:setProperty property="*" name="bean"/>                    
                        <table class="table table-condensed table-bordered">
                            <thead> 
                                <tr>
                                    <th>#</th>
                                    <th>regNo</th>
                                    <th>carType</th>
                                    <th>carImage</th>
                                    <th>rentalPrice</th>
                                    <th>dateRequested</th>
                                    <th>dateFrom</th>
                                    <th>dateTo</th>
                                    <th>status</th>
                                </tr> 
                            </thead>
                                <%
                                    String userIdStr = (String) session.getAttribute("userid");
                                    int userId = Integer.parseInt(userIdStr);
                                    ArrayList<RentalRequest> data = BookingDao.getMyBookings(userId);
                                    String statusClass = "", btn = "";
                                    int count = 1;
                                    for (RentalRequest r : data) {
                                        if (r.getStatus().equals("Pending")) {
                                            statusClass = "warning";
                                            btn = "PENDING";
                                        }
                                        if (r.getStatus().equals("Accepted")) {
                                            statusClass = "success";
                                            btn = "ACCEPTED";
                                        }
                                        if (r.getStatus().equals("Declined")) {
                                            statusClass = "danger";
                                            btn = "DECLINED";
                                        }
                                %>
                            <tr class="<%=statusClass%>">
                                <td> <%=count++%> </td>
                                <td> <%= r.getRegNo()%></td>
                                <td> <%= r.getCarType()%></td>
                                <td> 
                                    <div >
                                        <%  out.println("<img class='img-responsive' src='" + r.getCarImage() + "'>"); %>
                                    </div>
                                </td>
                                <td> <%= r.getRentalPrice()%></td>
                                <td> <%= r.getDateRequested()%></td>
                                <td> <%= r.getDateFrom()%></td>
                                <td> <%= r.getDateTo()%></td>
                                <td> <%=btn%> </td>
                            </tr>
                            <% }%>
                        </table> 
                    </div>
                </div><!--/.row-->
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