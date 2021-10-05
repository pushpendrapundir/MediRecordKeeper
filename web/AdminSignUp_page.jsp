<%-- 
    Document   : AdminSignUp_page
    Created on : 11-Sep-2020, 12:45:58 PM
    Author     : Windows
--%>

<%@page import="com.medi.docs.helper.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="icon" href="pics/logo.png" style="height:30px;width:30px;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="font-awesome-animation.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>.banner-background
{
  clip-path: polygon(50% 0%, 100% 0, 100% 43%, 96% 86%, 68% 100%, 32% 100%, 3% 88%, 0% 43%, 0 0);
  background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
}
</style>
        
        <title>Admin Sign Up</title>
    </head>
    <body>
         <body>
        <nav class="navbar navbar-expand-lg navbar-dark" style="font-size:20px; background-color:#E52B50;">
            <span class="brand-icon"><img src="pics/logo.png" class="img-fluid" style="width:50px;height:50px;"></span>
            <a class="navbar-brand" href="index.jsp" ><h3 style="font-size:25px;"><b>MediSolution</b></h3></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
       
      <li class="nav-item ">
             
        <a class="nav-link" href="UserLogin_page.jsp">UserLogin</a>
      </li>
     <li>
       <a class="nav-link" href="AdminLogin_page.jsp">AdminLogin</a>
      </li>
 <li class="nav-item">
           
        <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
      </li>
      <li class="nav-item">
      
    </ul>
   
  </div>
</nav>
    </body>
</html>

        <main class="d-flex align-items-center banner-background" style="height:90vh; background-color:teal">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card" style="height:670px">
                            
                            <%
                                Message m=(Message)session.getAttribute("msg");
                                if(m!=null)
                                {
                                    %>
                                                    <div class="alert <%=m.getCssClass()%>" role="alert"> <%= m.getMessage() %></div>
                                    <%
                                        session.removeAttribute("msg");
                                }%>
                             <div class="card-header"><center><i class="fa fa-user fa-3x" aria-hidden="true"></i></center><center><b>Admin Register</b></center></div>
                            <div class="card-body">
                               
                              <form action="AdminServlet" method="post" >
  <div class="form-group">
       <div class="form-group">
    <label for="adminname">Admin name</label>
    <input type="text" class="form-control"  name="adminname" placeholder="Name" required>
  </div>
      <div class="form-group">
    <label for="adminaadhar">Admin Aadhar Number</label>
    <input type="text" class="form-control"  name="adminaadhar" placeholder="Aadhar Number" required>
         
  </div>
   
<div class="form-group">
    <label for="exampleInputnumber1"> Admin Mobile Number</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" name="adminmobileno" placeholder="Mobile Number" required>
   </div>
   <div class="form-group " >
    <label for="exampleInputEmail1">Hospital Name</label>
    <input type="text" class="form-control"  aria-describedby="textHelp" name="hospitalname"  placeholder="Hospital Name"required>
    
  </div>
<div class="form-group">
<label for="gender" >Gender</label><br>
<input type="radio" id="male" name="admingender" value="Male">
<label for="male">Male</label>
<input type="radio" id="female" name="admingender" value="Female">
<label for="female">Female</label><br>
</div>
<div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control"  name="adminpass" placeholder="Password" required>
  </div>
        
             
  </div>
 
  
                                   
                                  
 
  
  <center> <button type="submit" id="submit_button" class="btn btn-block" style="background-color:teal;color:white;">Register</button></center>
   
                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        
          
        
        
    </body>
</html>
