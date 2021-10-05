<%-- 
    Document   : UserEnter_page
    Created on : 10-Aug-2020, 1:15:55 AM
    Author     : Windows
--%>

<%@page import="com.medi.docs.entities.Admin"%>
<%@page import="com.medi.docs.dao.DocumentDao"%>

<%@page import="com.medi.docs.entities.Document"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.medi.docs.entities.Department"%>
<%@page import="com.medi.docs.dao.DepartmentDao"%>
<%@page import="com.medi.docs.helper.ConnectionProvider"%>
<%@page import="com.medi.docs.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 // response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
User u=(User)session.getAttribute("currentuser");
Admin a=(Admin)session.getAttribute("currentadmin");
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome <%=u.getUname()%></title>
        <link rel="icon" href="pics/logo.png" style="height:30px;width:30px";>
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
       
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
      
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
     

<style>
.vl {
  border-left: 6px solid grey;
  height: 1430px;
  margin-left: 50px;
}
</style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark " style="font-family:monospace; font-size:20px; background-color:#d4e157;">
            <img src="pics/logo.png" style="width:50px;height:50px;color:#000000;">
            <a class="navbar-brand" href="index.jsp" style="margin-left:20px;font-size:25px;color:#000000;"><b> MediSolution</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#" style="color:#000000;">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="ContactUs.jsp" style="color:#000000;">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" style="color:#000000;">About Us</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="ConsultDoctor.jsp" style="color:#000000;">Consult Doctor</a>
      </li>
    </ul>
     
      
  </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header text-center" style="background-color:#d4e157">
          <center> <div class="container text-center"><img src="pics/profilepic.jpg" class="img-fluid" style="border-radius:50%;max-width:140px;" rel="profileimg"></div>
              <h5 class="modal-title text-center" id="exampleModalLabel" style="color:blueviolet;"><b><%=u.getUname() %></b></h5></center>
         
          <br>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="profile_detail">
          
          <h4><b>Patient Aadhar :</b> <%=u.getAadhar()%></h4>
          <h4><b>Patient Registration</b> : <%=u.getDate()%></h4>
              <h4><b>Patient Mobile Number</b>: <%=u.getMobile()%></h4>
              <h4><b>Patient Gender</b> : <%=u.getGender()%></h4>
              <br>
             
      </div>
              <div class="container-fluid" id="profile_edit" style="display:none;height:500px;">
              
                    <form action="EditServlet" method="post" id="form-data">
                        <table >
  <div class="form-group">
      <tr><td> <label for="exampleInputEmail1">Patient Name</label></td>
          <td> <input type="text" class="form-control" id="examplename" aria-describedby="emailHelp" placeholder="<%= u.getUname()%>" name="edit_uname"></td></tr>
    
  </div>
                        <tr><td> <div class="form-group">
    <label for="exampleInputEmail1">Patient Aadhar Name</label></td>
    <td><input type="text" class="form-control" id="exampleaadhar" aria-describedby="emailHelp" placeholder="<%= u.getAadhar()%>" readonly></td></tr>
    
  </div>
                      <tr><td>   <div class="form-group">
    <label for="exampleInputEmail1">Patient Mobile Number</label></td>
    <td><input type="text" class="form-control" id="examplemobile" aria-describedby="emailHelp" placeholder="<%= u.getMobile()%>" name="edit_mobile"></td></tr>
    
  </div>
   
 <tr><td><div class="form-group">
    <label for="exampleInputPassword1">Patient Password</label></td>
   <td> <input type="password" class="form-control" id="examplepassword" placeholder="<%=u.getPassword()%>" name="edit_pass"></td></tr>
  </div>
                                             <tr><td> <div class="form-group">
    <label for="exampleInputEmail1">Patient Gender</label></td>
   <td> <input type="password" class="form-control" id="examplegender" aria-describedby="emailHelp" placeholder="<%= u.getGender()%>" name="edit_gender"></td></tr>
    
  </div>
                                                           <tr><td>  <div class="form-group">
                                                                <label for="exampleInputEmail1">Patient Image</label></td>
    <td><input type="file" class="form-control" id="exampleimage" aria-describedby="emailHelp" placeholder="default.jpg"></td></tr>
    
  </div></tr></td>
                        <br>
  
                       
                        

</table>
   <center>   <div class="container-fluid text-center"><button type="submit" class="btn btn-primary" id="submit_btn">Submit</button></div></center>
                   </form>
              </div>
     
  
      <div class="modal-footer" id="modal_footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close_btn">Close</button>
        <button type="button" class="btn btn-primary" id="save_btn" style="display:none;">Save changes</button>
         <a class="btn btn-danger"  href="LogoutServlet" style="color:white; float:left;" ><b>Logout</b></a>
         <button type="button" class="btn btn-primary" id="Edit">Edit Profile</button>
        
      </div>
    </div>
  </div>
</div>
   <div class=" d-flex flex-row-reverse">
         
          <a href="#" style="color:white; margin-right: 15px;text-decoration: none;margin-top:10px;color:black;font-size:22px;" data-toggle="modal" data-target="#exampleModal" ><b>Welcome <%=u.getUname()%></b></a>
          <img src="pics/profilepic.jpg" style="border-radius:50%; width:60px;height:60px;margin-left:30px;">
          
      </div>
</nav>
        <div class="container-fluid" >
                <div class="row mt-2 ml-2">
                    <!--first Col categories--->
                    <div class="col-md-2" style="margin-left:2px;" >
                      
                        <br>
                             <ul class="list-group" style="font-size:18px;text-decoration:none;width:270px;">
                                  
                                 <% DepartmentDao dao=new DepartmentDao(ConnectionProvider.getConnection());
                                    ArrayList<Department>dlist =dao.getDepartment();
                                    for(Department d:dlist)
                                    {  %>
                                    
                                    <li class="list-group-item  " style="list-style:none;"">
                                        <img src="pics/<%=d.getDepart_pics()%>" style="height:60px;width:60px;border-radius:50%;margin-right:10px;">
                                          
                                        <a href="#"  class="c-link" id="click_depart" style="text-decoration:none;"> <%= d.getDepart_name() %></a>
                          
                          </li>
                       <%}%>
                             </ul>
                             
          
                       
                    </div>
                            
              
                             <div class="vl col-sm-1">
                                
                             </div>
<div class="col-md-8">
       
      <div class="container-fluid text-center " >
          <h1 class="display-5" style="font-family:monospace;font-size:40px;"><b>Hello,<%= u.getUname() %></b> </h1>
          <small style="color:red;">*Please don't try to temper the documents</small></div>
   
          <br><br><br>
           <div class="col-md-9 scrollable-content" style="width:1000px;" > 
          <div class="row" style="padding-right:10px;">
   
                             <% 
                                 String str=u.getUname();
                                // out.println(str);
                                DocumentDao dao1=new DocumentDao(ConnectionProvider.getConnection());
                               ArrayList <Document> list=dao1.getDocAll(str);
                               DepartmentDao dao2=new DepartmentDao(ConnectionProvider.getConnection());
                               
                                for(Document d1:list)
                                {%>
                               
                                   
                                <div class="card m-3" style="width:20rem;">
                                   
  <div class="card-header" >
      <img src="pics/<%=d1.getDocumentpic()%>" style="width:282px;height:170px;"alt="UserDocument"><br>
      <small style="color:red;"><b>Updated On Date: <%=d1.getReg_date()%></b></small></div>
  <div class="card-body">
  <%String str1=dao2.getDepartmentById(d1.getDepartid());%>
      <p class="card-text"><h6><b>Admin Name: </b><%=d1.getAdminname()%></h6><h6><b>Preferred Doctor: </b> <%=d1.getDoctorname()%></h6>
      <h6><b>Document Title : </b><%=d1.getDocumenttitle()%></h6><h6><b>Department Name : </b><%=str1%></h6>
   </p>
   <br>
   <center> <a href="pics/<%=d1.getDocumentpic()%>" download>
           <button class="btn btn-primary"  >Download </button>
    </a></center>
  </div>
</div>
                               <%}%>
                               <br>
                           </div> 
          </div>
                           
</div>

         </div>       
        </div>
    
      
    <br><br>
   
      
    
    


        
                   
    </body>
    
        <style>
            li:hover{
                background: #ddd6f3;  /* fallback for old browsers */
                 background: -webkit-linear-gradient(to right, #faaca8, #ddd6f3);  /* Chrome 10-25, Safari 5.1-6 */
               background: linear-gradient(to right, #faaca8, #ddd6f3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

                 color:white;
            
            }
              
.scrollable-content {
  height: 1100px;
  width:500px;
  overflow: auto;
 
}
body{
   background: #8e9eab;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #eef2f3, #8e9eab);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #eef2f3, #8e9eab); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


}
              </style>
              
              
        </style>
</html>
