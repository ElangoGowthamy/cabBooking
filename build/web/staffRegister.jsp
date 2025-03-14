<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Staff Register | Rent A Car</title>
    
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
            <h2>Staff Registration</h2>
        </div>
        <div class="blog">
          
            <div class="row">
                <div class="col-md-offset-3 col-md-8">
                    <form class="form-horizontal" method="POST" action="staffRegisterProcess.jsp" data-toggle="validator">
                      <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Full Name</label>
                        <div class="col-sm-6">
                          <input type="text" name="name" class="form-control" placeholder="Full Name" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-6">
                          <input type="email" name="email" class="form-control" placeholder="Email" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="staffType" class="col-sm-2 control-label">Staff Type</label>
                        <div class="col-sm-6">
                          <select name="staffType" class="form-control" required>
                            <option value="">Select Staff Type</option>
                            <option value="admin">Administrator</option>
                            <option value="manager">Manager</option>
                            <option value="staff">Staff</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="address" class="col-sm-2 control-label">Address</label>
                        <div class="col-sm-6">
                          <textarea name="address" class="form-control" rows="3" placeholder="Address" required></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="city" class="col-sm-2 control-label">City</label>
                        <div class="col-sm-6">
                          <input type="text" name="city" class="form-control" placeholder="City" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">Phone</label>
                        <div class="col-sm-6">
                          <input type="tel" name="phone" class="form-control" placeholder="Phone Number" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-6">
                          <input type="password" name="pwd" class="form-control" placeholder="Password" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="confirm_password" class="col-sm-2 control-label">Confirm Password</label>
                        <div class="col-sm-6">
                          <input type="password" name="confirm_pwd" class="form-control" placeholder="Confirm Password" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-6">
                          <button type="submit" class="btn btn-primary btn-lg">Register Staff</button>
                          &emsp;<a href="admin-login.jsp">Back to Admin Panel</a>
                        </div>
                      </div>
                    </form>  
                </div><!--/.col-md-8-->
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
    <script src="js/validator.js"></script>
    <script>
    $(document).ready(function() {
        // Password confirmation validation
        $('form').on('submit', function(e) {
            var pwd = $('input[name="pwd"]').val();
            var confirm_pwd = $('input[name="confirm_pwd"]').val();
            
            if(pwd !== confirm_pwd) {
                alert("Passwords do not match!");
                e.preventDefault();
                return false;
            }
            return true;
        });
    });
    </script>
</body>
</html> 