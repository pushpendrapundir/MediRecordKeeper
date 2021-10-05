<%-- 
    Document   : UserEnter_page
    Created on : 10-Aug-2020, 1:15:55 AM
    Author     : Windows
--%>

<%@page import="com.medi.docs.entities.Admin"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.medi.docs.entities.Department"%>
<%@page import="com.medi.docs.dao.DepartmentDao"%>
<%@page import="com.medi.docs.helper.ConnectionProvider"%>
<%@page import="com.medi.docs.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 // response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
Admin a=(Admin)session.getAttribute("currentAdmin");
if(a==null)
{
    response.sendRedirect("AdminLogin_page.jsp");
}
    %>
<!DOCTYPE html>
<html>
    <head>
         <link rel="icon" href="pics/logo.png" style="height:30px;width:30px;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MediSolution</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
         <link rel="stylesheet" href="font-awesome-animation.min.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>
.vl {
  border-left: 6px solid grey;
  height: 1350px;
  margin-left: 50px;
}
body
{
    background: #8e9eab;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #eef2f3, #8e9eab);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #eef2f3, #8e9eab); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


}
</style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark " style="font-family:monospace; font-size:20px; background-color:#d4e157;">
            <img src="pics/logo.png" style="width:50px;height:50px;">
            <a class="navbar-brand " href="index.jsp" style="margin-left:20px;font-size:25px;color:black;"><b> MediSolution</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp" style="color:black;">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register_page.jsp" style="color:black;">UserRegister</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ContactUs.jsp" style="color:black;">Contact</a>
      </li>
      
      
    </ul>
     
      
  </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header text-center" style="background-color:#d4e157">
          <center> <div class="container text-center"><img src="pics/profilepic.jpg" class="img-fluid" style="border-radius:50%;max-width:140px;" rel="profileimg"></div>
              <h5 class="modal-title text-center" id="exampleModalLabel" style="color:black;"><b><%=a.getAdminname() %></b></h5>
         </center>
         
          <br>
         
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="profile_detail">
          
          <h4><b>Admin Aadhar :</b> <%=a.getAdminaadhar()%></h4>
          <h4><b>Hospital Name</b> : <%=a.getHospitalname()%></h4>
              <h4><b>Admin Mobile Number</b>: <%=a.getAdminmobile()%></h4>
              <h4><b>Admin Gender</b> : <%=a.getAdmingender()%></h4>
              <br>
              
      </div>
              <div class="container-fluid" id="profile_edit" style="display:none;height:500px;">
              
                    <form action="EditServlet" method="post" id="form-data">
                        <table >
  <div class="form-group">
      <tr><td> <label for="exampleInputEmail1">Patient Name</label></td>
          <td> <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<%= a.getAdminname()%>" name="edit_uname"></td></tr>
    
  </div>
                        <tr><td> <div class="form-group">
    <label for="exampleInputEmail1">Patient Aadhar Name</label></td>
    <td><input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<%= a.getAdminaadhar()%>" name="edit_addhar" readonly></td></tr>
    
  </div>
                      <tr><td>   <div class="form-group">
    <label for="exampleInputEmail1">Patient Mobile Number</label></td>
    <td><input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<%= a.getAdminmobile()%>" name="edit_mobile"></td></tr>
    
  </div>
   
 <tr><td><div class="form-group">
    <label for="exampleInputPassword1">Patient Password</label></td>
   <td> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="<%=a.getAdminpass()%>" name="edit_pass"></td></tr>
  </div>
                                             <tr><td> <div class="form-group">
    <label for="exampleInputEmail1">Patient Gender</label></td>
   <td> <input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<%= a.getAdmingender()%>" name="edit_gender"></td></tr>
    
  </div>
                                                           <tr><td>  <div class="form-group">
                                                                <label for="exampleInputEmail1">Patient Image</label></td>
    <td><input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="default.jpg" name="admin_pic"></td></tr>
    
  </div></tr></td>
                        <br>
  
                       
                        

</table>
   <center>   <div class="container-fluid text-center"><button type="submit" class="btn btn-primary" id="submit_btn">Submit</button></div></center>
                   </form>
              </div>
    
  
      <div class="modal-footer" id="modal_footer">
          <a class="btn btn-danger"  href="LogoutServlet" style="color:white; float:left;" ><b>Logout</b></a>
          <button type="button" class="btn btn-secondary" data-dismiss="modal" id="close_btn"><b>Close</b></button>
          <button type="button" class="btn btn-primary" id="save_btn" style="display:none;"><b>Save changes</b></button>
          <button type="button" class="btn btn-primary" id="Edit"><b>Edit Profile</b></button>
        
      </div>
    </div>
  </div>
</div>
   <div class=" d-flex flex-row-reverse">
          
          <a  href="#" style="color:black; margin-right: 15px;text-decoration: none;margin-top:10px;font-size:22px;" data-toggle="modal" data-target="#exampleModal" ><b>Welcome <%=a.getAdminname()%></b></a>
          <img src="pics/profilepic.jpg" style="border-radius:50%; width:60px;height:60px;margin-left:30px;">
          
      </div>
</nav>
        <div class="container-fluid" >
                <div class="row mt-2 ml-3">
                    <!--first Col categories--->
                    <div class="col-md-3" >
                        
                        <ul class="list-group mt-5" >
                           
                            <%
                                DepartmentDao dao1=new DepartmentDao(ConnectionProvider.getConnection());
                                ArrayList <Department>list1=dao1.getDepartment();
                                for(Department c:list1)
                                {
                            %>
                          
                                
                          <li class="list-group-item d-flex align-items-center " style="list-style:none;font-family:monospace; font-size:20px;">
                              <img src="pics/<%=c.getDepart_pics()%>" style="border-radius:50%; width:60px;height:60px;margin-right:10px;">
                              <a href="#" style="text-decoration:none;color:black;font-size:22px;"><b> <%= c.getDepart_name() %></b></a>
                            
                          </li>
                          <% } %>
                        </ul>
                    </div>
                  
<div class="vl col-sm-1"></div>
<div class="col-md-7">
      <div class="container-fluid text-center " >
          <h1 class="display-5" style="font-family:monospace"><b>Hello <%=a.getAdminname() %></b> </h1>
    <small style="color:red;">*Please be careful before upload documents it should be genuine.</small>
      </div>
    <br><br>
   
   
         
          <form id="docid" action="DocumentdetailServlet" method="POST" enctype="multipart/form-data" >
  <div class="form-group">
      <label for="exampleFormControlInput2"><b>Patient Name</b></label>
    <input type="text" class="form-control" id="patientname" placeholder="Patient Name" name="patname">
  </div>
   <div class="form-group">
       <label for="exampleFormControlInpu01"><b>Doctor name</b></label>
    <input type="text" class="form-control" id="doctorname" placeholder="Doctor Name"name="docname">
  </div>
            <div class="form-group">
                <label for="pcategory"><b>Department Referred</b></label>
                                     <select class="form-control form-control-xs" name="depart_cid">
                                         <% DepartmentDao dao=new DepartmentDao(ConnectionProvider.getConnection());
                                             ArrayList<Department>list=dao.getDepartment();
                                             for(Department c:list)
                                             {
                                                 
                                             
                                         %>
                                         <option value="<%=c.getDip()%>"><%=c.getDepart_name()%></option>
                                             <% } %>    
                                     </select>
                                    
                                     </div>
             <div class="form-group">
                  <label for="exampleFormControlInput4"><b>Admin Name</b></label>
                  <input type="text" class="form-control" name="adminname" placeholder="<%=a.getAdminname()%>" >
  </div>
      <div class="form-group">
                  <label for="exampleFormControlInput5"><b>Upload Document </b></label>
    <input type="file" class="form-control"  placeholder="Upload in .jpg/.png/.pdf/.docx" name="uploadpic">
    <small style="color:red;">*Upload Documents in .jpg/.png/.pdf/.docx in maximum 3MB.</small>
  </div>
            <div class="form-group">
                  <label for="exampleFormControlInput6"><b> Document Title</b></label>
    <input type="text" class="form-control"  placeholder="Document Title" name="doctitle">
    <br>
    <br>
   
  </div>
  <button type="submit"  class="btn btn-block" id="upload-but"style="background-color:teal;color:white" ><b>Upload Document</b></button>
 
</form>
          
   

    
     
</div>
    
    
</div>
        </div>
    
 
        <style>
            li:hover{
                background: #ddd6f3;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #faaca8, #ddd6f3);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #faaca8, #ddd6f3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    
            }
        </style>
       
    </body>
    
</html>
