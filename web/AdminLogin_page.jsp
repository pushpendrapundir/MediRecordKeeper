<%-- 
    Document   : AdminLogin_page
    Created on : 12-Sep-2020, 12:09:08 AM
    Author     : Windows
--%>

<%@page import="com.medi.docs.helper.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="pics/logo.png" style="height:30px;width:30px;">
        <link rel="stylesheet" href="font-awesome-animation.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>.banner-background
{
     clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 57%, 91% 86%, 53% 98%, 0 84%, 0 0);
     height:700px;
     background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
}
</style>
        <title>Admin Login</title>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark" style="font-size:20px;background-color:#E52B50;">
            <span class="brand-icon"><img src="pics/logo.png" class="img-fluid" style="width:50px;height:50px;"></span>
            <a class="navbar-brand" href="#" ><h3 style="font-size:25px;"><b>MediSolution</b></h3></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" >
    <ul class="navbar-nav mr-auto">
       
      <li class="nav-item ">
             
        <a class="nav-link" href="UserLogin_page.jsp" style="color:white;">UserLogin</a>
      </li>
    
          <li class="nav-item">
      <a class="nav-link" href="AdminSignUp_page.jsp"style="color:white;" >AdminSignup </a>
       </li>
           <li class="nav-item">
        <a class="nav-link" href="ContactUs.jsp" style="color:white;">Contact Us</a>
        </li>
       
      
       
      
    </ul>
   
  </div>
</nav>
   


        <main class="d-flex align-items-center banner-background" style="height:70vh;background-color:teal">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            
                            
                            <div class="card-header"><center><i class="fa fa-user fa-3x" aria-hidden="true"></i></center><center><b>Admin Login</b></center></div> 
                            <%
                                Message m=(Message)session.getAttribute("msg");
                                if(m!=null)
                                {
                                    %>
                                                    <div class="alert <%=m.getCssClass()%>" role="alert"> <%= m.getMessage() %></div>
                                    <%
                                        session.removeAttribute("msg");
                                }%>
                                            
                            <div class="card-body">
                                <form action='AdminLoginServlet' method="post">
  <div class="form-group " >
    <label for="exampleInputEmail1">Aadhar Number</label>
    <input type="text" class="form-control"  aria-describedby="textHelp" name="adminloginaadhar" placeholder="Aadhar Card" required>
    <small id="textHelp" class="form-text text-muted">We'll never share your aadhar with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="adminloginpass" placeholder="Password" required>
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Show Password</label>
  </div>
                 <button type="submit" class="btn btn-block " style="background-color:teal; color:white;"><b>Login</b></button>
  <br>
  <a href="register_page.jsp"><small>Sign Up Now!! </small></a>
<a href="register_page.jsp" style="float:right;color:red;"><small>Forgot Password??</small></a>
</form>
                            </div>
                            
                            </div>
                    </div>
                </div>
            </div>
            
       
    </main><br><br><br><br><br>
    </body>
</html>
