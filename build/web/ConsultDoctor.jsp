<%-- 
    Document   : ConsultDoctor
    Created on : 04-Nov-2020, 1:10:49 PM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="icon" href="pics/logo.png" style="height:30px;width:30px";>
         <link rel="stylesheet" href="font-awesome-animation.min.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <title>Consultant Doctor List</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark " style="font-family:monospace; font-size:20px; background-color: #0097a7 ;">
            <img src="pics/logo.png" style="width:50px;height:50px">
            <a class="navbar-brand" href="index.jsp" style="margin-left:20px"><b> MediSolution</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp" style="color:white;">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:white;">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:white;">About Us</a>
      </li>
       
    </ul>
      
 </div>
        </nav>
        <br><br>
            <div class="container-fluid">
                  <table class="table table-hover">
  <thead class="thead-dark">
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Doctor Name</th>
      <th scope="col">Hospital Name</th>
      <th scope="col">Department</th>
      <th scope="col">Doctor Mobile Number</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Dr. RK Tripati</td>
      <td>AIIMS Delhi</td>
      <td>General Surgeon</td>
      <td>9875421500</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Dr. Vikrant Verma</td>
      <td>MGM Indore</td>
      <td>Gastrology</td>
      <td>8754219632</td>
    </tr>
    <tr>
      <th scope="row">3</th>
       <td>Dr. Arijeet Jain</td>
      <td>AIIMS Delhi</td>
      <td>Intensive Care Unit(ICU)</td>
      <td>9679527410</td>
    <tr>
      <th scope="row">4</th>
      <td>Dr. Vinita Jain</td>
      <td>Goverment Medical,Hyderabad</td>
      <td>Gynaecology</td>
      <td>9638527410</td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>	
Dr. Ravina Thapa</td>
       <td>AIIMS Raipur</td>
      <td>Otto</td>
     
      <td>7418529639</td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td>Dr. Amrita Pandey</td>
      <td>AIIMS Bhopal</td>
      <td>Otto</td>
      
      <td>7854906321</td>
    </tr>
    <tr>
      <th scope="row">7</th>
      <td>Dr. Barfa</td>
      <td>MGM Indore</td>
      <td>Otto</td>
      
      <td>7539514628</td>
    </tr>
    <tr>
      <th scope="row">8</th>
      <td>Dr. Rajiv Malviya</td>
      <td>Sarswati Eye Clinic</td>
      <td>Otto</td>
      
      <td>9865743210</td>
    </tr>
    <tr>
      <th scope="row">9</th>
      <td>Dr.Kangar</td>
      <td>Government Hospital,Bengaluru</td>
      <td>Otto</td>
      
      <td>9638547217</td>
    </tr>
    <tr>
      <th scope="row">10</th>
      <td>Dr. Shushant Khatri</td>
      <td>AIIMS Raipur</td>
      <td>Otto</td>
      
      <td>8889966553</td>
    </tr>
    <tr>
      <th scope="row">11</th>
      <td>Dr. Shurti Gayatri</td>
      <td>Fortis Delhi</td>
      <td>Otto</td>
      
      <td>9877553210</td>
    </tr>
    <tr>
      <th scope="row">12</th>
      <td>	
Dr. Amit Soni</td>
     <td>Fortis Indore</td>
      <td>Otto</td>
      
      <td>8795462135</td>
    </tr>
  </tbody>
</table>
            </div>
          
    </body>
</html>
